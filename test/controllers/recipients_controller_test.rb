require 'test_helper'

class RecipientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipient = recipients(:one)
  end

  test "should get index" do
    get recipients_url
    assert_response :success
  end

  test "should get new" do
    get new_recipient_url
    assert_response :success
  end

  test "should create recipient" do
    assert_difference('Recipient.count') do
      post recipients_url, params: { recipient: { address1: @recipient.address1, address2: @recipient.address2, dolor: @recipient.dolor, honor: @recipient.honor, name: @recipient.name, note: @recipient.note, position: @recipient.position, post_code: @recipient.post_code, sec_name1: @recipient.sec_name1, sec_name2: @recipient.sec_name2, shamei: @recipient.shamei } }
    end

    assert_redirected_to recipient_url(Recipient.last)
  end

  test "should show recipient" do
    get recipient_url(@recipient)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipient_url(@recipient)
    assert_response :success
  end

  test "should update recipient" do
    patch recipient_url(@recipient), params: { recipient: { address1: @recipient.address1, address2: @recipient.address2, dolor: @recipient.dolor, honor: @recipient.honor, name: @recipient.name, note: @recipient.note, position: @recipient.position, post_code: @recipient.post_code, sec_name1: @recipient.sec_name1, sec_name2: @recipient.sec_name2, shamei: @recipient.shamei } }
    assert_redirected_to recipient_url(@recipient)
  end

  test "should destroy recipient" do
    assert_difference('Recipient.count', -1) do
      delete recipient_url(@recipient)
    end

    assert_redirected_to recipients_url
  end
end
