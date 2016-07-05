module Slax::Complex
  class Builder < BasicObject

    def initialize
      @payload = { attachments: [] }
    end

    def add_attachment(&block)
      builder = ::Slax::Complex::AttachmentBuilder.new
      builder.instance_eval(&block)
      @payload[:attachments] << builder.payload
    end

    def payload
      @payload
    end
  end
end