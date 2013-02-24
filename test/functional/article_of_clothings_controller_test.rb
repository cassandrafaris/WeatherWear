require 'test_helper'

class ArticleOfClothingsControllerTest < ActionController::TestCase
  setup do
    @article_of_clothing = article_of_clothings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_of_clothings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_of_clothing" do
    assert_difference('ArticleOfClothing.count') do
      post :create, article_of_clothing: { clothing_type: @article_of_clothing.clothing_type, name: @article_of_clothing.name }
    end

    assert_redirected_to article_of_clothing_path(assigns(:article_of_clothing))
  end

  test "should show article_of_clothing" do
    get :show, id: @article_of_clothing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article_of_clothing
    assert_response :success
  end

  test "should update article_of_clothing" do
    put :update, id: @article_of_clothing, article_of_clothing: { clothing_type: @article_of_clothing.clothing_type, name: @article_of_clothing.name }
    assert_redirected_to article_of_clothing_path(assigns(:article_of_clothing))
  end

  test "should destroy article_of_clothing" do
    assert_difference('ArticleOfClothing.count', -1) do
      delete :destroy, id: @article_of_clothing
    end

    assert_redirected_to article_of_clothings_path
  end
end
