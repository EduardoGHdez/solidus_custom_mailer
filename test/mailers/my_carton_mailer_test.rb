require 'test_helper'

class MyCartonMailerTest < ActionMailer::TestCase
  test "shipped_email" do
    mail = MyCartonMailer.shipped_email
    assert_equal "Shipped email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
