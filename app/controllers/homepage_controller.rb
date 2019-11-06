class HomepageController < ApplicationController
  def home
    @all_pic_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
  end
end
