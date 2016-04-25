require "rqrcode_png"

puts "Entrer un mot:"
text = gets.chomp

qr = RQRCode::QRCode.new( text, :size => 4, :level => :h )

png = qr.to_img
png.resize(90, 90).save("test.png")


qr.modules.each do |row|
	row.each do |col|
		print col ? "X" : " "
	end
print "\n"
end
