require 'base64'
require 'openssl'
require 'json'

class SecretPayload
  attr_accessor :iv, :payload

  def encrypt(secret)
    to_encrypt = {
      secret: secret,
      created: Date.today
    }.to_json

    cipher = template_cipher.encrypt
    cipher.key = key
    iv = cipher.random_iv
    @iv = Base64.encode64(iv)
    cipher.iv = iv

    @payload = Base64.encode64("#{cipher.update(to_encrypt)}#{cipher.final}")
  end

  def decrypt(payload, iv_token)
    decipher = template_cipher.decrypt
    decipher.iv = Base64.decode64(iv_token)
    decipher.key = key

    json_payload = "#{decipher.update(Base64.decode64(payload))}#{decipher.final}"
    results = JSON.parse(json_payload)

    if payload_expired?(Date.parse(results['created']))
      raise 'Secret Expired'
    else
      @payload = results
    end
  end

  private

  def payload_expired?(date)
    (Date.today - date) > expiration
  end

  def key
    "\x1E'\xBD>wG\xC3c7\n\x83\xC0QD\xF6J" # Generate something unique for your project using `template_cipher.random_key`
  end

  def expiration
    (ENV['DAYS_BEFORE_TOKEN_EXPIRES'] || 30).to_i
  end

  def template_cipher
    OpenSSL::Cipher::AES128.new(:CBC) # List all supported ciphers with: `OpenSSL::Cipher.ciphers`
  end
end