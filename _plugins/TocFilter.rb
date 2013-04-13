module TocFilter
  def toc(input, path='')
    output = "<ul class=\"nav nav-list toc\">"
    input.scan(/<(h2)(?:>|\s+(.*?)>)([^<]*)<\/\1\s*>/mi).each do |entry|
      id = (entry[1][/^id=(['"])(.*)\1$/, 2] rescue nil)
      title = entry[2].gsub(/<(\w*).*?>(.*?)<\/\1\s*>/m, '\2').strip
      if id
        output << %{<li><a href="#{path}##{id}">#{title}</a></li>}
      else
        output << %{<li>#{title}</li>}
      end
    end
    output << '</ul>'
    output
  end
end
Liquid::Template.register_filter(TocFilter)
