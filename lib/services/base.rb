module Services
  class Base
    attr_accessor :oauth_hash
    def initialize(oauth_hash)
      self.oauth_hash = oauth_hash
    end

    def uid
      oauth_hash[:extra][:raw_info][:id]
    end

    def provider
      oauth_hash[:provider]
    end
    def provider_display_name
      oauth_hash[:provider].capitalize
    end

    def name
      oauth_hash[:extra][:raw_info][:name]
    end

    def first_name
      oauth_hash[:extra][:raw_info][:first_name]
    end

    def last_name
      oauth_hash[:extra][:raw_info][:first_name]
    end

    def username
      oauth_hash[:extra][:raw_info][:username]
    end

    def profile_url
      oauth_hash[:extra][:raw_info][:link]
    end

    def photo_url
      oauth_hash[:info][:image]
    end
    def email
      oauth_hash[:extra][:raw_info][:email]
    end

    def credentials
      oauth_hash[:credentials]
    end
  end
end