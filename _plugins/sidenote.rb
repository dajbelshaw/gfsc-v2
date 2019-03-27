module Jekyll
  class SidenoteTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text}"
    end
  end
end

Liquid::Template.register_tag('sidenote', Jekyll::SidenoteTag)
