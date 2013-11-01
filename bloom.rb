require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://www.bloomberg.com/markets/stocks/world-indexes/americas/"))
bloom = page.css('tbody')




File.open('bbg.html','w') do |f|

	f.puts("<html>")
	f.puts ("<head>")
	f.puts ('<link type="text/css" rel="stylesheet" href="bbg.css"/>')
	f.puts ("<title> Intro to HTML/CSS</title>")
	f.puts ("</head>")
	f.puts ("<body>")
	f.puts ("<h1> World Market Today</h1>") 
	f.puts ("<ol>")
	f.puts ('<div id="list">')
	bloom.each do |index|
		f.puts("<li>#{index.text}</li>")
		# f.puts("--------------------------------------------------")
		
	end
	# f.puts ("<h1>Bikes Rocks!<h1>")
	f.puts ("</ol>")
	f.puts ("</div>")
	f.puts ("</body>")
	f.puts ("</html>")
end
