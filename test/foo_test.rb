require "test_helper"

class FooTest < ActiveSupport::TestCase
  test "Current keeps value" do
    Current.foo = "bar"

    assert_equal Current.foo, "bar"
  end

  test "Current keeps value when job is queued now" do
    Current.foo = "bar"
    FooJob.perform_now

    assert_equal Current.foo, "bar"
  end

  test "Current keeps value when job is queued later" do
    Current.foo = "bar"
    FooJob.perform_later

    assert_equal Current.foo, "bar"
  end
end
