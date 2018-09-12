require "gpgme"

# Handles encryption and decryption of files
module EncryptDecrypt
  # Encrypt file
  def encrypt_data(file_obj, recipient, signer)
    crypto = GPGME::Crypto.new
    encrypted = crypto.encrypt(file_obj, recipients: recipient, armor: true)
    return crypto.clearsign(encrypted.to_s, {signer: signer})    
  end

  # Decrypt data
  def decrypt(data)
    crypto = GPGME::Crypto.new
    encrypted = crypto.verify(data){|sig| sig.valid?}.read
    return crypto.decrypt(encrypted).to_s
  end
end
