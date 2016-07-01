module Slax
  class Builder < BasicObject
    VALID_PARAMS = [:text, :username, :channel, :icon_emoji]

    def initialize
      @payload = {}
    end

    def method_missing(name, *args, &block)
      if VALID_PARAMS.include?(name)
        if args.count > 0
          @payload[name] = args.join(' ')
          @payload[name]
        end
      else
        super
      end
    end

    def payload
      Slax::Payload.new(@payload)
    end
  end
end