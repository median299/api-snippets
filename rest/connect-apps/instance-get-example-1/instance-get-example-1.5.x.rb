# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new account_sid, auth_token

# Get an object from its sid. If you do not have a sid,
# check out the list resource examples on this page
@connect_app = @client.account
                      .connect_apps('CNb989fdd207b04d16aee578018ef5fd93').fetch

# Update the app description
@connect_app.update(description: 'This is a demo app.')

# Print homepage url for selected connect app
puts @connect_app.description