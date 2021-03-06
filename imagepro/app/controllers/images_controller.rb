class ImagesController < ApplicationController
    
    def index
        @images = Image.all
    end
    
    def show
        @image = Image.find(params[:id])
    end
    
    def new
    end
    
    def create
       @image = Image.new(image_params)
       
       @image.save
       redirect_to @image
    end
    
    private
        def image_params
            params.require(:image).permit(:title, :description, :image)
        end
end
