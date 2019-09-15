require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get album" do
    get album_path
    assert_response :success
    assert_select "title", "Album | Gallery"

  end

end
