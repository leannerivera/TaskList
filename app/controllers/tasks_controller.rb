# TASKS = [
#   { category: 'school', name: 'learn rails', complete_by: 'six weeks from now'  },
#   { category: 'home', name: 'clean apartment', complete_by: 'this friday'  },
#   { category: 'life', name: 'get it together', complete_by: 'one year from now'},
#   { category: 'career', name: 'find one', complete_by: 'one year from now'}
#
# ]

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id].to_i
    @task = Task.find_by(id: id)

    if @task.nil?
        render :notfound, status: :not_found
    end
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def create
    @task = Task.new(task_params)

    if @task.save # save returns true if the database insert succeeds
      redirect_to root_path
    else
      render :new # show the new book form view again
    end
  end

  def update
    task = Task.find_by(id: params[:id].to_i)
    task.update(task_params)

    redirect_to task_path(task.id)
  end

  def destroy
    task = Task.find_by(id: params[:id].to_i)
    @deleted_task = task.destroy

  end

  private

  def task_params
    return params.require(:task).permit(:name, :category, :due)
  end

end
