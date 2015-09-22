class TasksController < ApplicationController
	def index
		user = User.find params[:user_id]
		tasks = user.tasks
		render json: tasks
	end

	def create
		user = User.find params[:user_id]
		task = user.tasks.create(task_params)
		render json: task
	end

	def show
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
		render json: task, include: [:user]
	end

	def update
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
		task.update(task_params)
		render json: task
	end

	def destroy
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
		task.destroy
		render json: task
 	end

	private
	def task_params
		params.permit(:name, :completion_date, :status)
	end
end
