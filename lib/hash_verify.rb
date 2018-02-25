require "digest"
require "pry"

module HashVerify
  # Hash file object
  def hash_file(encrypted_file_obj)
    Digest::SHA256.hexdigest(encrypted_file_obj.to_s)
  end

  # Verify the hash to a file
  def hash_verified?(file_details)
    hash = file_details["file_hash"]
    rechecked_hash = hash_file(file_details[:encrypted_text])
    return hash == rechecked_hash
  end
end
