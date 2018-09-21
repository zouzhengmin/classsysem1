class MyclassesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @myclasses = Myclass.all
  end

  def show
    @myclass = Myclass.find(params[:id])
  end

  def new
  end

  def create
    Myclass.create(:name=>params[:name])
    redirect_to myclasses_path
  end

  def edit
  end

  def update
    myclass = Myclass.find(params[:id])
    myclass.update(name:params[:name])
    redirect_to myclasses_path
  end

  def destroy
    myclass = Myclass.find(params[:id])
    myclass.delete
    redirect_to myclasses_path
  end

end
