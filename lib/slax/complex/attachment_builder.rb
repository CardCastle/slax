module Slax::Complex
  class AttachmentBuilder < BasicObject
    VALID_PARAMS = [:fallback, :color, :pretext, :author_name, 
                    :author_link, :author_icon, :title, :title_link, 
                    :text, :image_url, :thumb_url,
                    :footer, :footer_icon, :ts
                   ]

    def initialize
      @payload = { fallback: "" }
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

    def fields(title, value, short = nil)
      @payload[:fields] ||= []
      @sub_payload = { title: title, value: value }

      unless short.nil?
        @sub_payload[:short] = short
      end
      
      @payload[:fields] << @sub_payload
    end

    def timestamp(time)
      @payload[:ts] = time.to_i
    end

    alias_method :ts, :timestamp

    def payload
      @payload
    end
  end
end