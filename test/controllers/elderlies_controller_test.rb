require 'test_helper'

class ElderliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elderly = elderlies(:one)
  end

  test "should get index" do
    get elderlies_url
    assert_response :success
  end

  test "should get new" do
    get new_elderly_url
    assert_response :success
  end

  test "should create elderly" do
    assert_difference('Elderly.count') do
      post elderlies_url, params: { elderly: { name: @elderly.name } }
    end

    assert_redirected_to elderly_url(Elderly.last)
  end

  test "should show elderly" do
    get elderly_url(@elderly)
    assert_response :success
  end

  test "should get edit" do
    get edit_elderly_url(@elderly)
    assert_response :success
  end

  test "should update elderly" do
    patch elderly_url(@elderly), params: { elderly: { name: @elderly.name } }
    assert_redirected_to elderly_url(@elderly)
  end

  test "should destroy elderly" do
    assert_difference('Elderly.count', -1) do
      delete elderly_url(@elderly)
    end

    assert_redirected_to elderlies_url
  end
end
