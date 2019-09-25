require 'net/http'
require 'uri'

class GitHubEvent

    def self.trigger(repo, event, token)
        uri = URI("https://api.github.com/repos/#{repo}/dispatches")

        request = self.build_request(uri, token, '{"event_type":"' + event + '"}')
        Net::HTTP.start(uri.host, uri.port, :use_ssl => true) do |http|
            response = http.request(request)
            puts "Response status code was: #{response.code}"
        end
    end

    private

    # Creates a POST request.
    def self.build_request(uri, token, body)
      request = Net::HTTP::Post.new(uri)

      request["Authorization"] = "token #{token}"
      request["Accept"] = "application/vnd.github.everest-preview+json"
      request.body = body

      return request
    end

end
