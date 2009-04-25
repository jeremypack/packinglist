# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_packinglist_session',
  :secret      => '01ed3264e951e2d700d3958d030a43f6812f1c63d777d7025feb07989ed2a76766f39811f57b9ef85c0fc97ddc033969773f3d2f1df255a4823b6aaf7e9cd0a3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
