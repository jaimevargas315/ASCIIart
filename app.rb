require "sinatra"
require "sinatra/reloader"
require "asciiart"
require 'asciiart'


get("/") do


  cat = AsciiArt.new("https://cdn.shopify.com/s/files/1/0613/5054/3550/files/how-to-draw-a-cat_480x480.webp?v=1690335501")
  @example = cat.to_ascii_art(format:"html", color: true, width:100)

  erb(:main)
end

get("/results") do

  link = params.fetch('image')

  a = AsciiArt.new(link)
  @art = a.to_ascii_art(format:"html", color: true, width:100)

  erb(:results)
end
