class CharactersController < ApplicationController

  
    def new
      @character = Character.new
      @stats = Random.new 

  end

  def create
     @character = current_user.characters.build(character_params)
     if  @character.save
       redirect_to @character 
     else
        Rails.logger.info "render new layout"
        render 'new'
     end 

  end
  def show
      @character= Character.find(params[:id])
  end

  private 
  def character_params
      params.require(:character).permit(:name, :job,:user_id)
  end
end
