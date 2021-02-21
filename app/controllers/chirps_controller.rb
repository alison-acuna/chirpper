class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(chirp_params)
    if @chirp.save
      redirect_to @chirp
    else
      rendew :new
    end
  end

  def destroy
    @chirp = Chirp.find(params[:id])
    @chirp.destroy
    redirect_to root_path
  end  

  def chirp_params
    params.require(:chirp).permit(:text)
  end
end
