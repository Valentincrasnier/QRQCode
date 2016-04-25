require "rqrcode"
puts "Entrer un mot:"
png = gets.chomp

qrcode = RQRCode::QRCode.new("www.google.fr")
png = qrcode.as_png(
          resize_gte_to: false,
          resize_exactly_to: false,
          fill: 'white',
          color: 'black',
          size: 120,
          border_modules: 4,
          module_px_size: 6,
          file: nil # path to write
          )
IO.write("/home/valentin/Documents/Quetes/Gemfile/test.png", png.to_s)


#QRQCode fonctionnel
