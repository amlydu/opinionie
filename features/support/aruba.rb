# This loads the Cucumber steps provided by Aruba which are
# the same steps our Cucumber features
  # Depending on where you need to use this in testing,
  # the following can be run to create the necessary files
  #   aruba init --test-framework rspec
  #   aruba init --test-framework cucumber
  #   aruba init --test-framework minitest
require 'aruba/cucumber'
