require 'test_helper'

class DejeunersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dejeuner = dejeuners(:one)
  end

  test "should get index" do
    get dejeuners_url
    assert_response :success
  end

  test "should get new" do
    get new_dejeuner_url
    assert_response :success
  end

  test "should create dejeuner" do
    assert_difference('Dejeuner.count') do
      post dejeuners_url, params: { dejeuner: { description: @dejeuner.description, image: @dejeuner.image, libelle: @dejeuner.libelle, prix: @dejeuner.prix } }
    end

    assert_redirected_to dejeuner_url(Dejeuner.last)
  end

  test "should show dejeuner" do
    get dejeuner_url(@dejeuner)
    assert_response :success
  end

  test "should get edit" do
    get edit_dejeuner_url(@dejeuner)
    assert_response :success
  end

  test "should update dejeuner" do
    patch dejeuner_url(@dejeuner), params: { dejeuner: { description: @dejeuner.description, image: @dejeuner.image, libelle: @dejeuner.libelle, prix: @dejeuner.prix } }
    assert_redirected_to dejeuner_url(@dejeuner)
  end

  test "should destroy dejeuner" do
    assert_difference('Dejeuner.count', -1) do
      delete dejeuner_url(@dejeuner)
    end

    assert_redirected_to dejeuners_url
  end
end
