require "application_system_test_case"

class MymodelsTest < ApplicationSystemTestCase
  setup do
    @mymodel = mymodels(:one)
  end

  test "visiting the index" do
    visit mymodels_url
    assert_selector "h1", text: "Mymodels"
  end

  test "creating a Mymodel" do
    visit mymodels_url
    click_on "New Mymodel"

    fill_in "Authority", with: @mymodel.authority
    fill_in "Name", with: @mymodel.name
    fill_in "Password digest", with: @mymodel.password_digest
    fill_in "User", with: @mymodel.user_id
    click_on "Create Mymodel"

    assert_text "Mymodel was successfully created"
    click_on "Back"
  end

  test "updating a Mymodel" do
    visit mymodels_url
    click_on "Edit", match: :first

    fill_in "Authority", with: @mymodel.authority
    fill_in "Name", with: @mymodel.name
    fill_in "Password digest", with: @mymodel.password_digest
    fill_in "User", with: @mymodel.user_id
    click_on "Update Mymodel"

    assert_text "Mymodel was successfully updated"
    click_on "Back"
  end

  test "destroying a Mymodel" do
    visit mymodels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mymodel was successfully destroyed"
  end
end
