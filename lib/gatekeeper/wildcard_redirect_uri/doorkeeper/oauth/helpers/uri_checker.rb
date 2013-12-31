module Doorkeeper
  module OAuth
    module Helpers
      module URIChecker
        def self.matches?(url, client_url)
          url, client_url = as_uri(url), as_uri(client_url)
          if url.query?
            return true if url.to_s =~ /^#{Regexp.escape(client_url.to_s)}/
            false
          else
            url.query = nil
            url == client_url
          end
        end
      end
    end
  end
end