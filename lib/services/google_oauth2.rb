module Services
  class GoogleOauth2 < Base
    def first_name
      oauth_hash[:extra][:raw_info][:given_name]
    end
    def provider_display_name
      "Google+"
    end
    def last_name
      oauth_hash[:extra][:raw_info][:family_name]
    end
  end
end