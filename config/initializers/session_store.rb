# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_contacts_session',
  :secret      => 'ee0b32b506d4862abd1ea32e1485e516a0b8ad2dc46a4b3d95b6c8195b4a0c51c1f48d27a279cd5fe574675b7871b8101c510591bab95110580cf7438837b74d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
