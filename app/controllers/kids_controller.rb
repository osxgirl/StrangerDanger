class KidsController < ApplicationController

  def index
  end
    
  def show
    @kid = Kid.find(params[:id])
  end


  def new
    @kid = Kid.new
#    @kid.sayings.build
  end

   def edit
   @kid = Kid.find(params[:id])
 end
  
  def create
    @kid = Kid.new(kid_params)
    
    respond_to do |format|
      if @kid.save
        format.html { redirect_to @kid, notice: 'Kid was successfully added.' }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @kidd.errors, status: :unprocessable_entity }
      end
    end
end
  
  def update
    @kid = Kid.find(params[:id])
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  def destroy
     Kid.find(params[:id]).destroy
     redirect_to kids_url
  end
  

  private

    def set_kid
       @kid = Kid.find(params[:id])
    end
    
   def kid_params
          params.require(:kid).permit( :name, :saying)
    end
    
end
