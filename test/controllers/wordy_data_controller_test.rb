require 'test_helper'

class WordyDataControllerTest < ActionController::TestCase
  setup do
    @wordy_datum = wordy_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wordy_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wordy_datum" do
    assert_difference('WordyDatum.count') do
      post :create, wordy_datum: { def1: @wordy_datum.def1, def2: @wordy_datum.def2, def3: @wordy_datum.def3, word: @wordy_datum.word }
    end

    assert_redirected_to wordy_datum_path(assigns(:wordy_datum))
  end

  test "should show wordy_datum" do
    get :show, id: @wordy_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wordy_datum
    assert_response :success
  end

  test "should update wordy_datum" do
    patch :update, id: @wordy_datum, wordy_datum: { def1: @wordy_datum.def1, def2: @wordy_datum.def2, def3: @wordy_datum.def3, word: @wordy_datum.word }
    assert_redirected_to wordy_datum_path(assigns(:wordy_datum))
  end

  test "should destroy wordy_datum" do
    assert_difference('WordyDatum.count', -1) do
      delete :destroy, id: @wordy_datum
    end

    assert_redirected_to wordy_data_path
  end
end
