ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

ActiveJob::Base.queue_adapter = :inline
ActiveRecord::Migration.maintain_test_schema!
