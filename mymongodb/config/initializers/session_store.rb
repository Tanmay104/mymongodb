# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mymongodb_session',
  :secret      => '9a293004c599b71d14c5f5130ffde71cc53f2a9bb8e62c363f1d6db232d897f8cd856df50a26e6015670253d737cf2fbb71da3c1a2c2604dabded2c4674e6961'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
