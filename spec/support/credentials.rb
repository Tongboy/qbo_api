require 'dotenv'

Dotenv.load

def creds
  OpenStruct.new(
    {
      consumer_key: ENV['QBO_API_CONSUMER_KEY'],
      consumer_secret: ENV['QBO_API_CONSUMER_SECRET'],
      token: ENV['QBO_API_ACCESS_TOKEN'],
      token_secret: ENV['QBO_API_ACCESS_TOKEN_SECRET'],
      realm_id: ENV['QBO_API_COMPANY_ID']
    }
  )
end

def oauth2_creds
  OpenStruct.new(
    {
      access_token: ENV['QBO_API_OAUTH2_ACCESS_TOKEN'],
      realm_id: ENV['QBO_API_COMPANY_ID']
    }
  )
end
