# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jwgl_app_session',
  :secret      => '6f61e03382d7cda3fef1a748f57ca2e5be27de040a098bd11111295f5ba6ac99931bec7a6b783d6201f5442df6dc03bc82c6e73862f3c166adc04c12d8ad9603'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
