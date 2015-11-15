class HomesController < ApplicationController

def index
  if params[:q]
    search_term = params[:q]
    if Rails.env.development? #checks to see if in dev mode
      @jobs = Job.where("job_title LIKE ?", "%#{search_term}%")
    else
      @jobs = Job.where("job_title ilike ?", "%#{search_term}%")
    end
  else
    @jobs = Job.all
  end
end
end
