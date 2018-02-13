class TasksController < ApplicationController
  #Read (index)
  def index
    @task = Task.all 
  end
  #Read (show)
  def show
    @task = Task.find(params[:id])
  end
  #Create
  def new
    @task = Task.new
  end
  def create
    @task = Task.create(title: params[:task][:title], details: params[:task][:details])
    redirect_to tasks_path
  end
  #Update (edit)
  def edit
    @task = Task.find(params[:id])
  end
  #Update 
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end
  #Destroy
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
