Install
$gem install 'getLinkMp3Zing'
Usage
You can use like this example:

require 'getLinkMp3Zing'
tool = ToolGetLink.new("http://mp3.zing.vn/bai-hat/Em-La-Ba-Noi-Cua-Anh-Trong-Hieu/ZW7WFEW0.html")
tool.getLinkDownLoad

result:  "http://mp3.zing.vn/xml/load-song/MjAxNSUyRjExJTJGMDklMkZkJTJGZSUyRmRlMjgyNmVmZWQ4ZmRiMjhiOTNkYzU3NWFhNDRmM2ExLm1wMyU3QzEz"

Or you can do like this:



require 'getLink/ToolGetLink"
tool = Tool.new("http://mp3.zing.vn/bai-hat/Sau-Tat-Ca-ERIK-ST-319/ZW7O777O.html")
tool.getLinkDownload

result:
result:
128: http://api.mp3.zing.vn/api/mobile/download/song/LGJGTLGNQAQQNVLTLDJTDGLG
lossless: http://api.mp3.zing.vn/api/mobile/download/song/LGJGTLGNQAQQNVLTUOKKUMKKTDGLG
320: http://api.mp3.zing.vn/api/mobile/download/song/LGJGTLGNQAQQNVLTVDGTDGLG
