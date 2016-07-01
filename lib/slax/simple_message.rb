module Slax::SimpleMessage
  class << self
    def build(url, &block)
      builder = ::Slax::Builder.new
      builder.instance_eval(&block)
      ::Slax::Payload.new(url, builder.payload)
    end
  end
end