# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_index_url
    assert_response :success
  end

  test 'should get contact' do
    get home_contact_url
    assert_response :success
  end

  test 'should get terms' do
    get home_terms_url
    assert_response :success
  end

  test 'should get about_us' do
    get home_about_us_url
    assert_response :success
  end
end
