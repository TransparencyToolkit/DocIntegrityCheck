require "gpgme"

# Handles encryption and decryption of files
module EncryptDecrypt
  # Encrypt file
  def encrypt_data(file_obj, recipient)
    crypto = GPGME::Crypto.new
    return crypto.encrypt(file_obj, recipients: recipient, armor: true)
  end

  # Decrypt data
  def decrypt(data)
    crypto = GPGME::Crypto.new
    return crypto.decrypt(data).to_s
  end
end
