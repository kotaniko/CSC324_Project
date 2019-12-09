class HomepageController < ApplicationController
  def home
    @all_pic_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
    if Collection.exists?(:picture => @rand_pic)
      rand_pic_record = Collection.find_by(picture: @rand_pic)
      @rand_pic_desc = rand_pic_record.description
    else
      @rand_pic_desc = @rand_pic + ', randomly selected'
    end
  end
end
