require 'digest'
#MD5 hash
puts Digest::MD5.hexdigest 'P@ssword'

#SHA1 hash
puts Digest::SHA1.hexdigest 'P@ssword'

#SHA2 hash
#specifying 'bitlen' as 256 generates hash as 256 bit value
#no specification will generate 512 bit value
sha2_256 = Digest::SHA2.new(bitlen = 256)
puts sha2_256.hexdigest 'P@ssword'

