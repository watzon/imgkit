require "../src/imgkit"

# Info
img = ImgKit::Image.new("green_house_01.jpg")
info = img.info
puts "Path: #{info[:path]} Width: #{info[:width]}px Height: #{info[:height]}px"
img.finish

# Resize
img = ImgKit::Image.new("green_house_01.jpg")
img.resize(width: 200)
img.save("output/green_house_01.jpg")
img.finish

# Blur
img = ImgKit::Image.new("demo.png")
img.blur(5.0)
img.save("output/blur.png")
img.finish

# Crop
img = ImgKit::Image.new("demo.png")
img.crop(width: 120, height: 200, x: 50, y: 50)
img.save("output/crop.png")
img.finish

# Combin
img = ImgKit::Image.new("demo.png")
img.resize(width: 410)
img.blur(5.0)
img.crop(width: 200)
img.save("output/combin.png")
img.finish
