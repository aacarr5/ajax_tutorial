class NotesController < ApplicationController

	def index
	end

	def new
	end

	def create
		@note = Note.new(notes_params)
		if @note.save
			flash[:notice] = "Post created!"
			redirect_to '/'
		else
			flash[:notice] = "Womp"
			redirect_to '/'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def notes_params
		params.require(:note).permit(:title,:content)
	end

end
