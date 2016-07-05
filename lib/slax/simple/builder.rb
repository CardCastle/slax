module Slax::Simple
  class Builder < BasicObject
    VALID_PARAMS = [:text, :username, :channel, :icon_emoji]

    def initialize
      @payload = { text: "" }
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
      @payload
    end
  end
end