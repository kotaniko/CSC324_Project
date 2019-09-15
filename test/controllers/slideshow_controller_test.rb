require 'test_helper'

class SlideshowControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_path
    assert_response :success
    assert_select "title", "Slideshow | Gallery"
  end

end
