class CharactersController < ApplicationController

  
    def new
      @character = Character.new

  end

  def create
     @character = Character.new(character_params)
     if  @character.save
       redirect_to @character 
     else
        render 'new'
     end 

  end
  def show
      @character.find(params[:id])
  end

  private 
  def character_params
      params.require(:character).permit(:name, :job,:user_id)
  end
end
