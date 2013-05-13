require 'test_helper'

class FishingJourneysControllerTest < ActionController::TestCase
  setup do
    @fishing_journey = sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post :create, fishing_journey: { date: @fishing_journey.date, pressure: @fishing_journey.pressure, swell: @fishing_journey.swell, temperature: @fishing_journey.temperature, wind_direction: @fishing_journey.wind_direction, wind_force: @fishing_journey.wind_force }
    end

    assert_redirected_to session_path(assigns(:fishing_journey))
  end

  test "should show session" do
    get :show, id: @fishing_journey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fishing_journey
    assert_response :success
  end

  test "should update session" do
    put :update, id: @fishing_journey, fishing_journey: { date: @fishing_journey.date, pressure: @fishing_journey.pressure, swell: @fishing_journey.swell, temperature: @fishing_journey.temperature, wind_direction: @fishing_journey.wind_direction, wind_force: @fishing_journey.wind_force }
    assert_redirected_to session_path(assigns(:fishing_journey))
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete :destroy, id: @fishing_journey
    end

    assert_redirected_to sessions_path
  end
end
