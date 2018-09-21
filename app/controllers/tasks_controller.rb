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
    id = params[:id]
    @task = Task.all.find_by(id: id)

    if @task.nil?
        render :notfound, status: :not_found
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task =Task.new(category: params[:category], name: params[:name], due: params[:due])

    if @tasj.save # save returns true if the database insert succeeds
      redirect_to root_path # go to the index so we can see the book in the list
    else # save failed :(
      render :new # show the new book form view again
    end
  end
  
end
