class TopsController < ApplicationController
    def index
      @images = Image.all 
      @image = Image.new 
    end
end