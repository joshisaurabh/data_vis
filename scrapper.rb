require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://toronto.en.craigslist.ca/bia/"))
bikes = page.css('blockquote#toc_rows p.row span.pl a')

File.open('bikes2.html','w') do |f|

	f.puts("<html>")
	f.puts ("<head>")
	f.puts ('<link type="text/css" rel="stylesheet" href="scrapper.css"/>')
	f.puts ("<title> Intro to HTML/CSS</title>")
	f.puts ("</head>")
	f.puts ("<body>")
	f.puts ("<h1> Craigslist</h1>") 
	f.puts ("<ol>")
	f.puts ('<div id="list">')
	bikes.each do |bike|
		f.puts("<li>#{bike.text}</li>")
		# f.puts("--------------------------------------------------")
	end
	# f.puts ("<h1>Bikes Rocks!<h1>")
	f.puts ("</ol>")
	f.puts ("</div>")
	f.puts ("</body>")
	f.puts ("</html>")
end

# page = Nokogiri::HTML(open("http://toronto.en.craigslist.ca/bia/index100.html/"))
# bikes = page.css('blockquote#toc_rows p.row span.pl a')

# File.open('bikes1.html','a') do |f|

# 	f.puts("<html>")
# 	f.puts ("<head>")
# 	f.puts ("<title> Intro to HTML/CSS</title>")
# 	f.puts ("</head>")
# 	f.puts ("<body>")
# 	f.puts ("<h1> Craigslist</h1>") 
# 	f.puts ("<ol>")
# 	bikes.each do |bike|
# 		f.puts("<li>#{bike.text}</li>")
# 		# f.puts("---------")
# 	end
# 	# f.puts ("<h1>Bikes Rocks!<h1>")
# 	f.puts ("</ol>")
# 	f.puts ("</body>")
# 	f.puts ("</html>")
# end