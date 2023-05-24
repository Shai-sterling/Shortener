# ShaiShorty

\"paneer\"

*Grilled Cheese 101*
This application shortens a URL and when clicked, it redirects you to the full URL.

## Table Content

* [Technologies](#technologie)
* [Installation](#installation)
* [Setup](#setup)
* [Features](#features)
* [Usage](#usage)
* [Commands](#commands)
* [Production](#production)
* [Contacts](#contacts)
* [License](#license)

## Technologies
* Ruby 3.0.2
* Rails 6.1.4.1
* Sqlite or Postgresqldatabase
* Rspec-Rails 5.0 or 5.0.2
* Capybara 3.36
* Webdriver 5.0
* Hexdigest

## Installation

#### Go Rails 
* [Install Ruby](https://gorails.com/setup/osx/11-big-sur)
* [Install Rails](https://gorails.com/setup/osx/11-big-sur)


# Setup
Running this application locally:
```
$ Clone repository onto desktop
$ cd Shortener
$ rails server
```

## Features
* Generates a seven-character URL
* Sets the short URL with seven characters
* Shortens a long URL to a short URL
* Displays times a link was visited
* Displays times a link was shortened
* Other features coming soon

## Commands

- Generates characters for a URL

```
@link = Link.new(original_url: "http://example.com" )
@link.start_generate_code #=> "9d45f56"
 
```

- Running test suits

```
$ cd Shortener
$ rspec

```

## Usage

* Go to localhost:3000
* Paste URL. Example, https://www.google.com/search?q=ghana&sxsrf=AOaemvLEfdgYa7KSzC3BMO6HKjr-b4H9yQ%3A1637932417693&source=hp&ei=gd2gYeznJ4ySwbkP7eea0AM&iflsig=ALs-wAMAAAAAYaDrkVOoZKY2_vgl25hxhfuj2bicWVcm&ved=0ahUKEwisrK7fjbb0AhUMSTABHe2zBjoQ4dUDCAk&uact=5&oq=ghana&gs_lcp=Cgdnd3Mtd2l6EAMyBAgjECcyBQguEIAEMgsILhCABBDHARCvATIFCAAQgAQyBQgAEIAEMgUIABCABDIFCC4QgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6BwgjEOoCECc6CwguEIAEEMcBENEDOgsILhCABBDHARCjAlDoCVjsF2DgGWgCcAB4AYAB8wGIAYkGkgEFMi4zLjGYAQCgAQGwAQo&sclient=gws-wiz
* Click Shorten link
* Click shortened link and get redirected to URL



## Production 

Heroku is easy and quick to setup to deploy Ruby on Rails apllication.

* Hosting service like Heroku
* Remove sqlite gem in Gemfile 
* Add gem "pg" to Gemfile. Supported by Heroku in production
* Add darwin platform to Gemlock.lock
* Add Procfile to the root directory of applicaton
* Commit application to github
* Link repo to your Heroku application on Heroku 
* Deploy application to Heroku


## Contact

[Linkedin](https://www.linkedin.com/in/dennis-srem-sai-58530b123/)

## License

Copyright (c) 2021 - Shai Sterling

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


