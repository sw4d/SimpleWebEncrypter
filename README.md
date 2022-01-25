<div id="top"></div>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<!-- <div align="center">
  <a href="https://github.com/sw4d/SimpleWebEncrypter">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> -->

<h3 align="center">Simple Web Encrypter</h3>

  <p align="left">
    A Ruby class that only relies on core Ruby libraries to allow the user to encrypt / decrypt secrets in a way that's friendly for URL paths and attributes
    <br />
    <a href="https://github.com/sw4d/SimpleWebEncrypter"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/sw4d/SimpleWebEncrypter">View Demo</a>
    ·
    <a href="https://github.com/sw4d/SimpleWebEncrypter/issues">Report Bug</a>
    ·
    <a href="https://github.com/sw4d/SimpleWebEncrypter/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Building a way to encrypt/decrypt messges can feel daunting if you've never had to work on it before. The project provides an example Ruby Class which only uses core Ruby libraries. The encrypted values are base_64 encoded so your results can be used as part of a query param as well.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Ruby](https://www.ruby-lang.org/en/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

The bread/butter of the logic is in the secret_payload.rb file. Copy/paste the contents into any project as needed or test in any open irb session.

### Prerequisites

A computer with Ruby. This project was build on 2.6.5 but other 2.0+ versions should work fine.

If unsure run:
```
ruby test_secret_payload.rb
```

### Installation

No Gemfile or bundling required

<!-- USAGE EXAMPLES -->
## Usage

By default all encrypted secrets have a shelf life of 30 days. After 30 days a secret can no longer be decrypted.

```
require 'secret_payload'

# encrypt some value - could be string, hash, array, etc.
cipher = SecretPayload.new
cipher.encrypt('some_value')
payload = cipher.payload
iv = cipher.iv

# decrypt value
cipher = SecretPayload.new
decrypted_secret = cipher.decrypt(payload, iv)
decrpyted_secret['secret']
 => 'some_value'
```



<!-- ROADMAP -->
## Roadmap

- [ ] Build Tests
- [ ] Convert to Base64_web
- [ ] Query 3rd party for cipher key
    - [ ] Review Vault, Secrets Manager, Gluu for potential viability

See the [open issues](https://github.com/sw4d/SimpleWebEncrypter/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`) - DON'T FORGET TO RUN/WRITE TESTS!
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Stephen Ford - sw4d@icloud.com

Project Link: [https://github.com/sw4d/SimpleWebEncrypter](https://github.com/sw4d/SimpleWebEncrypter)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []() Hope this helps
* []() Encrypting hash keys with symbols will comeback as strings
* []() 2022

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/sw4d/SimpleWebEncrypter.svg?style=for-the-badge
[contributors-url]: https://github.com/sw4d/SimpleWebEncrypter/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/sw4d/SimpleWebEncrypter.svg?style=for-the-badge
[forks-url]: https://github.com/sw4d/SimpleWebEncrypter/network/members
[stars-shield]: https://img.shields.io/github/stars/sw4d/SimpleWebEncrypter.svg?style=for-the-badge
[stars-url]: https://github.com/sw4d/SimpleWebEncrypter/stargazers
[issues-shield]: https://img.shields.io/github/issues/sw4d/SimpleWebEncrypter.svg?style=for-the-badge
[issues-url]: https://github.com/sw4d/SimpleWebEncrypter/issues
[license-shield]: https://img.shields.io/github/license/sw4d/SimpleWebEncrypter.svg?style=for-the-badge
[license-url]: https://github.com/sw4d/SimpleWebEncrypter/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/stephen-ford-8853b011/
[product-screenshot]: images/screenshot.png
