class TasksController < ApplicationController
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
  end
  
  def search
    @tasks = Task.search(params[:keyword])
  end

  private
  def task_params
    params.require(:task).permit(:title, :memo, :category_id, :target_date)
  end
end
