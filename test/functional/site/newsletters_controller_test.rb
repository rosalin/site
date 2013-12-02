require 'test_helper'

class Site::NewslettersControllerTest < ActionController::TestCase
  setup do
    @site_newsletter = site_newsletters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_newsletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_newsletter" do
    assert_difference('Site::Newsletter.count') do
      post :create, site_newsletter: {  }
    end

    assert_redirected_to site_newsletter_path(assigns(:site_newsletter))
  end

  test "should show site_newsletter" do
    get :show, id: @site_newsletter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_newsletter
    assert_response :success
  end

  test "should update site_newsletter" do
    put :update, id: @site_newsletter, site_newsletter: {  }
    assert_redirected_to site_newsletter_path(assigns(:site_newsletter))
  end

  test "should destroy site_newsletter" do
    assert_difference('Site::Newsletter.count', -1) do
      delete :destroy, id: @site_newsletter
    end

    assert_redirected_to site_newsletters_path
  end
end
