require 'test_helper'

class SlideshowControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_path
    assert_response :success
    assert_select "title", "Slideshow | Gallery"

    i = 0
    pic_name_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
    iteration_count = pic_name_array.length * 100

    loop do
      i += 1
      if i >= iteration_count
        assert(false, "Slideshow does not show all the pictures.")
        break
      end

      get show_path
      if pic_name_array.include? assigns(:rand_pic)
        pic_name_array.delete assigns(:rand_pic)
      end

      if pic_name_array.empty?
        assert true
        break
      end
    end
  end

end
