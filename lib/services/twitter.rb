module Services
  class Twitter < Base
    def username
       oauth_hash[:extra][:raw_info][:screen_name]
    end
    def profile_url
      oauth_hash[:info][:urls][:Twitter]
    end
    def credentials
      oauth_hash[:extra][:access_token]
    end
  end
end