@secret_file = File.read './pdfs/resume.pdf' #read pdf
@normal_file = File.read './images/tattoo.jpg'
@separator = '*------------------------*'
@combined_file = [@normal_file, @separator, @secret_file]

#Write secret file, separator, normal file into steg.png
File.open("./images/steg.jpg", 'wb') do |stg|
  @combined_file.each do |f|
    stg.puts f
  end
end

#Read steg.png to be like "one_file" array
@recovered_file = File.read('./images/steg.jpg').force_encoding("BINARY").split(@separator).last
