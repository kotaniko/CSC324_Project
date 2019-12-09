class SlideshowController < ApplicationController
  def show
    pic_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
    rand_number = rand(pic_array.length)
    @rand_pic = pic_array[rand_number]
    if Collection.exists?(:picture => @rand_pic)
      rand_pic_record = Collection.find_by(picture: @rand_pic)
      @rand_pic_desc = rand_pic_record.description
    else
      @rand_pic_desc = @rand_pic + ', randomly selected'
    end
  end
end
