require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference("Car.count") do
      post cars_url, params: { car: { color: @car.color, description: @car.description, distance: @car.distance, front_car_image: @car.front_car_image, insider_car_image: @car.insider_car_image, marque: @car.marque, modele: @car.modele, profile_car_image: @car.profile_car_image } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { color: @car.color, description: @car.description, distance: @car.distance, front_car_image: @car.front_car_image, insider_car_image: @car.insider_car_image, marque: @car.marque, modele: @car.modele, profile_car_image: @car.profile_car_image } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference("Car.count", -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
