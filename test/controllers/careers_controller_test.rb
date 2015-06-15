require 'test_helper'

class CareersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get ruby" do
    get :ruby
    assert_response :success
  end

  test "should get ruby_f" do
    get :ruby_f
    assert_response :success
  end

  test "should get postgress" do
    get :postgress
    assert_response :success
  end

  test "should get postgress_f" do
    get :postgress_f
    assert_response :success
  end

  test "should get director" do
    get :director
    assert_response :success
  end

  test "should get director_f" do
    get :director_f
    assert_response :success
  end

  test "should get sme" do
    get :sme
    assert_response :success
  end

  test "should get sme_f" do
    get :sme_f
    assert_response :success
  end

  test "should get consumer" do
    get :consumer
    assert_response :success
  end

  test "should get consumer_f" do
    get :consumer_f
    assert_response :success
  end

end
