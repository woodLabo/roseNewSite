module SchedulesHelper
  def text_url_link_set text
    URI.extract(text, ['http']).uniq.each do |url|
      sub_text = ""
      sub_text << "<a href=" << url << " target=\"_blank\">" << url << "</a>"
      text.gsub!(url, sub_text)
    end
    text 
  end
end
