class TasksController < ApplicationController
  before_action :set_item, only: [:edit, :update]


  def index
    @tasks = Task.all.order('created_at DESC')
  end

  def new
    @categories = Category.all
    @task = Task.new
  end
  
  def create
    Task.create(task_params)
    redirect_to '/'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  def edit 
  end

  def update
    if @task.update(task_params)
      redirect_to '/'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def search
    @tasks = Task.search(params[:keyword])
  end

  private
  def task_params
    params.require(:task).permit(:title, :memo, :category_id, :target_date)
  end

  def set_item
    @task = Task.find(params[:id])
  end  
end
