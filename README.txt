This is a gem used within some of Transparency Toolkit's apps to encrypt
documents and verify the integrity of data being sent from app to app using
UDP.

To install: gem install doc_integrity_check

To use:
require "doc_integrity_check"

include DocIntegrityCheck

Available Methods-
encrypt_data(file, recipient_key_id)
decrypt(data_string)
hash(file)
hash_verified?(file_details)
