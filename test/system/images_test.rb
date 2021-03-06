require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  setup do
    @image = images(:one)
  end

  test "visiting the index" do
    visit images_url
    assert_selector "h1", text: "Images"
  end

  test "creating a Image" do
    visit images_url
    click_on "New Image"

    fill_in "Arrival", with: @image.arrival
    fill_in "Caption", with: @image.caption
    fill_in "Human type", with: @image.human_type
    fill_in "Popular", with: @image.popular
    fill_in "Price", with: @image.price
    check "Saved to list" if @image.saved_to_list
    fill_in "Title", with: @image.title
    fill_in "Url name", with: @image.url_name
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "updating a Image" do
    visit images_url
    click_on "Edit", match: :first

    fill_in "Arrival", with: @image.arrival
    fill_in "Caption", with: @image.caption
    fill_in "Human type", with: @image.human_type
    fill_in "Popular", with: @image.popular
    fill_in "Price", with: @image.price
    check "Saved to list" if @image.saved_to_list
    fill_in "Title", with: @image.title
    fill_in "Url name", with: @image.url_name
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "destroying a Image" do
    visit images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image was successfully destroyed"
  end
end
