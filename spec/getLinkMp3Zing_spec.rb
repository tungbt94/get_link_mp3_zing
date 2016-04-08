require 'getLinkMp3Zing'

RSpec.describe ToolGetLink do
  wLink = "http://mp3.zing.vn/bai-hatTam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html"
  rLink = "http://mp3.zing.vn/bai-hat/Tam-Su-Voi-Nguoi-La-Tien-Cookie/ZW7O6UDW.html"
  xmlLink = "http://mp3.zing.vn/xml/song-xml/"
  dLink = "http://mp3.zing.vn/xml/load-song/MjAxNSUyRjEyJTJGMjQlMkY5JTJGYiUyRjliZDZkZDYyNTEwODdkMmNhNGEzNWMzNGM1NDM4ZWY5Lm1wMyU3QzEz"

  describe "#initialize" do
    context "given empty string" do
      it "getLink return nil" do
        expect(ToolGetLink.new("").getLink).to be_nil
      end
    end

    context "given wrong link not mp3.zing" do

      it "getLink return nil" do
        expect(ToolGetLink.new(wLink).getLink).to be_nil
      end
    end

    context "given link" do
      it "return link" do
        expect(ToolGetLink.new(rLink).getLink).to eql(rLink)
      end
    end
  end

  describe "#getLinkToXMLPage" do
    context "@link is empty" do
      it "return nil" do
        expect(ToolGetLink.new("").getLinkToXMLPage).to be_nil
      end
    end

    context "@link is wrong link" do
      it "return nil" do
        expect(ToolGetLink.new(wLink).getLinkToXMLPage).to be_nil
      end
    end

    context "@link = rightLink" do
      it "return link to a xml page" do
        expect(ToolGetLink.new(rLink).getLinkToXMLPage.index(xmlLink)).to eq(0)
      end
    end
  end

  describe "#getLinkDownload" do
    context "@link is empty" do
      it "return nil" do
        expect(ToolGetLink.new("").getLinkDownload).to be_nil
      end
    end

    context "@link is wrong link" do
      it "return nil" do
        expect(ToolGetLink.new(wLink).getLinkDownload).to be_nil
      end
    end

    context "@link = rightLink" do
      it "return link to a xml page" do
        expect(ToolGetLink.new(rLink).getLinkDownload).to eq(dLink)
      end
    end
  end
end
