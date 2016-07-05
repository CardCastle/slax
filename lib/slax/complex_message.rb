module Slax::ComplexMessage
  class << self
    def build(url, &block)
      builder = ::Slax::Complex::Builder.new
      builder.instance_eval(&block)
      ::Slax::Payload.new(url, builder.payload)
    end
  end 
end