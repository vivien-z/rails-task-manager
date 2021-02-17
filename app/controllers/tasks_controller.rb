class TasksController < ApplicationController
  before_action :set_task, only: [:show, :destroy, :edit, :update]

  def index
    @all_tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    set_task
  end

  def create
    new_task = Task.new(validate_task_params)
    new_task.save

    redirect_to task_path(new_task)
  end

  def destroy
    set_task
    @task.destroy

    redirect_to tasks_path
  end

  def edit
    set_task
  end

  def update
    set_task
    @task.update(validate_task_params)
    redirect_to task_path(@task)
  end

  private

  def validate_task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
