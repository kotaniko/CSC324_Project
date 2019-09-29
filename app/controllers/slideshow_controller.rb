class SlideshowController < ApplicationController
  def show
    pic_array = Dir.glob("*.{jpg,JPG}", base: "app/assets/images")
    rand_number = rand(pic_array.length)
    @rand_pic = pic_array[rand_number]
  end
end
