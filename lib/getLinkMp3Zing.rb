require 'open-uri'
require 'nokogiri'

class ToolGetLink
  def initialize(link)
    if (checkLink(link) == true)
      @link = link
    end
  end

  def checkLink(link)
    if (link.empty?)
      return false
    elsif(link.slice(0..26) != "http://mp3.zing.vn/bai-hat/")
      return false
    elsif (!link.end_with?(".html"))
      return false
    end
    return true
  end

  def getLink
    @link
  end

  def getLinkToXMLPage
      if (@link != nil)
        content = Nokogiri::XML(open(@link))
        return content.css("#html5player @data-xml").text
      else
        return nil
      end
  end

  def getLinkDownload
    if(@link != nil)
      contentXML = Nokogiri::XML(open(getLinkToXMLPage()))
      return contentXML.css("source").text
    else
      return nil
    end
  end
end

# tool = ToolGetLink.new("http://mp3.zing.vn/bai-hat/Tam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html")
# tool = ToolGetLink.new("http://mp3.zing.vn/bai-hatTam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html")
# tool.checkLink("http://mp3.zing.vn/bai-hatTam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html")
# puts tool.getLink
tool = ToolGetLink.new("http://mp3.zing.vn/bai-hat/Tam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html")
puts tool.getLinkDownload
