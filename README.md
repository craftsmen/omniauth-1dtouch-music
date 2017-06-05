# Omniauth::OnedtouchMusic

This gem contains the OmniAuth strategy to authenticate against http://music.1touch.com.

Music app provides an Oauth2 authentication process.

## Before You Begin

You should have already installed OmniAuth into your app; if not, read the [OmniAuth README](https://github.com/intridea/omniauth) to get started.

You should have an API Key and API Secret for Music app. This is what your web application will use to authenticate against the API. Please contact http://music.1touch.com admin team to request a new application authorization.

## Using This Strategy

First start by adding this gem to your Gemfile:

```ruby
gem 'omniauth-1dtouch-music'
```

If you need to use the latest HEAD version, you can do so with:

```ruby
gem 'omniauth-1dtouch-music', :github => 'craftsmen/omniauth-1dtouch-music'
```

Next, tell OmniAuth about this provider. For a Rails app, your `config/initializers/omniauth.rb` file should look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :onedtouch_music, "API_KEY", "API_SECRET"
end
```

Replace `"API_KEY"` and `"API_SECRET"` with the appropriate values.

## Authentication Hash

An example auth hash available in `request.env['omniauth.auth']`:

```ruby
{
  provider: "onedtouch_music",
  uid: "123456",
  info: {
    name: "Jim Morrison",
    email: "theblue@b.us"
  },
  credentials: {
    token: "a1b2c3d4...", # The OAuth 2.0 access token
    secret: "abcdef1234"
  },
  extra: {
    access_token: "", # An OAuth::AccessToken object
    raw_info: {
      name: "Jim Morrison",
      email: "theblue@b.us",
      level: "user"
    }
  }
}
```

## Supported Rubies

Tested under 2.3.1.

## License

Copyright (c) 2015 by 1D touch

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
