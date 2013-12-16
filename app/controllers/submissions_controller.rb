class SubmissionsController < ApplicationController
	def index
		@submissions = Submission.all
		
	end

	def new
		@submission = Submission.new
	end

	def create
		@submission = Submission.new(submission_params)
		@submission.user = Userbin.user
		@submission.campaign = Campaign.find(params[:submission].permit(:cid)[:cid])
		if @submission.save
			redirect_to submission_url(@submission)
		else
			render:new
		end 
	end

	def edit
		@submission = Submission.find(params[:id])
	end

	def update
		@submission = Submission.find(params[:id])
		if @submission.update_attributes(submission_params)
  			redirect_to submission_url
  		else
  			render 'edit'
  		end
	end

	def show
		@user = Userbin.current_user
		@submission = Submission.find(params[:id])
	end

	def destroy
		Submission.find(params[:id]).destroy
		redirect_to submissions_path
	end


	private
	def submission_params
		params.require(:submission).permit(:content, :submitter, :winner, :title)
	end 
end


