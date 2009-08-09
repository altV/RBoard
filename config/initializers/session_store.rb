# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_RBoard3_session',
  :secret      => '55f86b120f7dbb2d9f0731d6fd100dc3b41a2f49d3288e09056d055458b280eae394d75f68c4436693f4a6d60e5d5db92a319b9a45e6d92b43f3671073726cc9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
