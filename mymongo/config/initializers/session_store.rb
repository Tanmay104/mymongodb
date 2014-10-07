# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mymongo_session',
  :secret      => 'b65c1ebe5c011adca6d32635d042aa6d40e5708dbb43e8af7d0484924ceb26c87d01c89baf27fa18ad87d68b48b55315e0cda02aa2da49aa8dfaf80c7292598a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
