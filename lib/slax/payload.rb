module Slax
  class Payload
    def initialize(url, payload)
      @url = url
      @payload = payload
    end

    def send
      build_and_send
    end

    def send!
      response = build_and_send
      if response.code == 200
        response
      else
        raise SendError
      end
    end

    private

    def build_and_send
      HTTParty.post(@url.to_s, body: @payload, headers: { 'Content-Type' => 'application/json' })
    end
  end
end