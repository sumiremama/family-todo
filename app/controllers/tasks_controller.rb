class TasksController < ApplicationController
  def index
    @tasks = Task.all.order('created_at DESC')
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new
    if @Task.save
      redirerct_to '/'
    end  
  end
end
