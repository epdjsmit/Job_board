class JobsController < ApplicationController
  def index
    @jobs = Job.all
end
    def new
      @job = Job.new
  end
def create
  p "In the created Method!!!!!"
job = Job.create(job_params)
  p job
  redirect_to  jobs_path
end

private

def job_params
  params.require(:job).permit(:title, :client, :adress,  :description)
end
   end

