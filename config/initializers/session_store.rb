# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hssa_session',
  :secret      => 'd2dbe23ffb50cf6f9656097b367169a427855a05978c4e648004fd69f44da971adced44401b2e6ee5ea5eeb187921738d7bb21bbff7ae10797bcf4831762d838'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
