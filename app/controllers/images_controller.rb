class ImagesController < ApplicationController
  def create
    @new_image = Image.new
    @new_image.image = image_params[0]
    if @new_image.save 
      @uploaded_file = {files: [{url: root_url + @new_image.image.url}]}
      render json: @uploaded_file
    else
      @new_image.print_errors  
    end
  end

  def destroy
    puts "============================"
    puts params.inspect
  end

  def remove_image
    puts "============================"
    id = params[:file].split('/')[-2]
    image_to_remove = Image.find(id)
    image_to_remove.remove_image!
    if image_to_remove.destroy
      puts "destroyed "
    end

  end

  private 

    def image_params
      params.require(:files)
    end

end
