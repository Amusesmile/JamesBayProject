# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_servery_session',
  :secret      => '5b565d0e11442bfc2f2e8aa9137f4b7a0539f3d2eef12815c5715d2c0f3f466a7c74eb888ae82df68092a1ba0988d155b715d3c6610d3e2a8a74d2e3a96d1989'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
