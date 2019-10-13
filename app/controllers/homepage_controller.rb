class HomepageController < ApplicationController
  def home
    @pic_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
  end
end
