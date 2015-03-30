class TodosController < ApplicationController

	#hello world :)
	
	def index
		render json: Todo.all
	end

	def create #crear
		todo = Todo.new(permit)
		todo.save
		render json: todo
	end

	def show #mostrar
		todo = Todo.find(params[:id])
		render json: todo
	end

	def update #actualizar
		todo = Todo.update(params[:id], permit)
		render json: todo
	end

	def destroy #eliminar
		todo = Todo.destroy(params[:id])
		render json: todo
	end

	private
		def permit
			params.require("todo").permit(:text, :done)
		end
end
