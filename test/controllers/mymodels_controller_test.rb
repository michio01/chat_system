require 'test_helper'

class MymodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mymodel = mymodels(:one)
  end

  test "should get index" do
    get mymodels_url
    assert_response :success
  end

  test "should get new" do
    get new_mymodel_url
    assert_response :success
  end

  test "should create mymodel" do
    assert_difference('Mymodel.count') do
      post mymodels_url, params: { mymodel: { authority: @mymodel.authority, name: @mymodel.name, password_digest: @mymodel.password_digest, user_id: @mymodel.user_id } }
    end

    assert_redirected_to mymodel_url(Mymodel.last)
  end

  test "should show mymodel" do
    get mymodel_url(@mymodel)
    assert_response :success
  end

  test "should get edit" do
    get edit_mymodel_url(@mymodel)
    assert_response :success
  end

  test "should update mymodel" do
    patch mymodel_url(@mymodel), params: { mymodel: { authority: @mymodel.authority, name: @mymodel.name, password_digest: @mymodel.password_digest, user_id: @mymodel.user_id } }
    assert_redirected_to mymodel_url(@mymodel)
  end

  test "should destroy mymodel" do
    assert_difference('Mymodel.count', -1) do
      delete mymodel_url(@mymodel)
    end

    assert_redirected_to mymodels_url
  end
end
