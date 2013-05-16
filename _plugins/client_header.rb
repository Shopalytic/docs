module Jekyll
  class ClientHeader < Liquid::Tag

    def initialize(tag_name, event, tokens)
      super
      @event = event
    end

    def render(context)
      "<h4><a href=\"/events.html##{ @event }\">#{ @event }<span class=\"icon-circle-arrow-right icon-white\"></a></h4>"
    end
  end
end

Liquid::Template.register_tag('client_header', Jekyll::ClientHeader)
