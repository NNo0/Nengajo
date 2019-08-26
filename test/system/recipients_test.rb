require "application_system_test_case"

class RecipientsTest < ApplicationSystemTestCase
  setup do
    @recipient = recipients(:one)
  end

  test "visiting the index" do
    visit recipients_url
    assert_selector "h1", text: "Recipients"
  end

  test "creating a Recipient" do
    visit recipients_url
    click_on "New Recipient"

    fill_in "Address1", with: @recipient.address1
    fill_in "Address2", with: @recipient.address2
    check "Dolor" if @recipient.dolor
    fill_in "Honor", with: @recipient.honor
    fill_in "Name", with: @recipient.name
    fill_in "Note", with: @recipient.note
    fill_in "Position", with: @recipient.position
    fill_in "Post code", with: @recipient.post_code
    fill_in "Sec name1", with: @recipient.sec_name1
    fill_in "Sec name2", with: @recipient.sec_name2
    fill_in "Shamei", with: @recipient.shamei
    click_on "Create Recipient"

    assert_text "Recipient was successfully created"
    click_on "Back"
  end

  test "updating a Recipient" do
    visit recipients_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @recipient.address1
    fill_in "Address2", with: @recipient.address2
    check "Dolor" if @recipient.dolor
    fill_in "Honor", with: @recipient.honor
    fill_in "Name", with: @recipient.name
    fill_in "Note", with: @recipient.note
    fill_in "Position", with: @recipient.position
    fill_in "Post code", with: @recipient.post_code
    fill_in "Sec name1", with: @recipient.sec_name1
    fill_in "Sec name2", with: @recipient.sec_name2
    fill_in "Shamei", with: @recipient.shamei
    click_on "Update Recipient"

    assert_text "Recipient was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipient" do
    visit recipients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipient was successfully destroyed"
  end
end
