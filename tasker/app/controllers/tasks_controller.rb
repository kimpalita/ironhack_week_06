class TasksController < ApplicationController
	before_action :authorize
	before_action :admin_only, only: [:admin, :show]

	def index
		@tasks = current_user.tasks
		@task  = Task.new
	end

	def admin
		@users = User.all
	end

	def show
	end

	def create
		#binding.pry

		@task = current_user.tasks.new(task_params)
		if @task.save
			redirect_to root_path
		else
			render :index
		end
	end

	def show
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
	end

	def update
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
		task.update(task_params)
		#render json: task
	end

	def destroy
	    task = Task.find_by(id: params[:id])
		unless task
		render json: {error: "task not found"},
		status: 400
		return
		end
		task.destroy
		#render json: task
 	end

	private
	def task_params
		params.permit(:name, :completion_date, :status)
	end

	def admin_only
		if current_user.role != 'admin'
			redirect_to tasks_path, alert: 'Access denied'
		end
	end
end
