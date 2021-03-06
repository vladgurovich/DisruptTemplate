# A Basic Rails Web App skeleton created for Disrupt 2012 Hackathon

It has all the goodies neccessary for todays web apps:

* Devise
* Omniauth
* Facebook/Twitter/Google Oauth Strategies
* Haml
* Simple Form
* Twitter Boostrap

## Configuration
Change the project name to whatever your heart desires in config/application.rb

```ruby
config.project_name = "Disrupt Template"
```
and use *project_name* helper function in your views

If you choose to use airbrake, update your API key in config/initializers/airbrake.rb
Also update config/initializers/devise.rb with API credentials for your favorite OAuth providers

You can modify Bootstrap navbar background colors in app/assets/stylesheets/application.css.scss

### Secret Token generation
Please generate a random token and store it in config/initializers/secret_token.rb before deploying this application.
You can use SecureRandom in rails console:
```ruby
1.9.3p194 :002 >  "#{SecureRandom.hex(64)}"
=> "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
```