load 'hash_verify.rb'
load 'encrypt_decrypt.rb'

# Wrapper for various methods to check doc integry
module DocIntegrityCheck
  include HashVerify
  include EncryptDecrypt
end
