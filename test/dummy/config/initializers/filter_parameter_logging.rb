# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Dummy::Application.config.filter_parameters += %i[
  passw secret token _key crypt salt certificate otp ssn
]
