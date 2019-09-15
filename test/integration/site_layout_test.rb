require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    get root_path
    assert_template 'homepage/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", album_path
    assert_select "a[href=?]", show_path
  end
end
