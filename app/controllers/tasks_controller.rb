class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params['id'].to_i)

    if @task.completed
      @checked = "checked"
      @message = "this task is completed"
    else
      @checked = ""
      @message = "this task is not yet completed"
    end
  end

  def new
  end

  def create
  end

end
