class SubmissionsController < ApplicationController
	def index
		@submissions = Submission.all
	end

	def new
		@submission = Submission.new
	end

	def create
		@submission = Submission.new(submission_params)
		@submission.submitter = Userbin.user
		if @submission.save
			redirect_to submission_url(@submission)
		else
			render:new
		end 
	end

	def show
		@submission = Submission.find(params[:id])
	end


	private
	def submission_params
		params.require(:submission).permit(:copy, :submitter, :winner)
	end 
end
