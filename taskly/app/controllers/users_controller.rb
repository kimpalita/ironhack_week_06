class UsersController < ApplicationController
	def index
		#users = User.includes(:tasks).all
		#response = users.map { |user| { name:  user.name, email: user.email, tasks: user.tasks.size } }
		#render json: response
		render json: User.all.map { |user| user.to_h }
	end
#
	def create
		user = User.where(name: user_params[:name], email: user_params[:email])

		if user.length == 0
			user = User.create(user_params)
			render json: user, status: 201
		else
			render json: {}, status: 400
		end
	
	end
#
	#def show
	#    user = User.find_by(id: params[:id])
	#	unless user
	#	render json: {error: "user not found"},
	#	status: 400
	#	return
	#	end
	#	render json: {
	#			name:  user.name,
	#			email: user.email,
	#			tasks: user.tasks.size
	#		}
	#end
#
	#def update
	#    user = User.find_by(id: params[:id])
	#	unless user
	#	render json: {error: "user not found"},
	#	status: 400
	#	return
	#	end
	#	user.update(user_params)
	#	render json: user
	#end
#
	#def destroy
	#    user = User.find_by(id: params[:id])
	#	unless user
	#	render json: {error: "user not found"},
	#	status: 400
	#	return
	#	end
	#	user.destroy
	#	render json: user
 	#end
#
	private
	def user_params
		params.permit(:name, :email)
	end
end
