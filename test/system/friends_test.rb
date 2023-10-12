require "application_system_test_case"

class FriendsTest < ApplicationSystemTestCase
  setup do
    @friend = friends(:one)
  end

  test "visiting the index" do
    visit friends_url
    assert_selector "h1", text: "Friends"
  end

  test "should create friend" do
    visit friends_url
    click_on "New friend"

    fill_in "Cake name", with: @friend.cake_name
    fill_in "Cake taste", with: @friend.cake_taste
    fill_in "Cake type", with: @friend.cake_type
    fill_in "Rating", with: @friend.rating
    fill_in "Uri", with: @friend.uri
    click_on "Create Friend"

    assert_text "Friend was successfully created"
    click_on "Back"
  end

  test "should update Friend" do
    visit friend_url(@friend)
    click_on "Edit this friend", match: :first

    fill_in "Cake name", with: @friend.cake_name
    fill_in "Cake taste", with: @friend.cake_taste
    fill_in "Cake type", with: @friend.cake_type
    fill_in "Rating", with: @friend.rating
    fill_in "Uri", with: @friend.uri
    click_on "Update Friend"

    assert_text "Friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend" do
    visit friend_url(@friend)
    click_on "Destroy this friend", match: :first

    assert_text "Friend was successfully destroyed"
  end
end
