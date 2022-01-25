require 'test/unit'
require './secret_payload'

class TestSecretPayload < Test::Unit::TestCase

    def test_encrypt_and_decrypt
    	cipher = SecretPayload.new
    	value = { "values" => 'test' }

    	cipher.encrypt(value)
    	secret_payload = cipher.payload
    	iv = cipher.iv

    	decipher = SecretPayload.new

    	devalue = decipher.decrypt(secret_payload, iv)
    	assert_equal({ "values" => 'test' }, devalue['secret'])
    end
end