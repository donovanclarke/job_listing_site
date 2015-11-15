class HomesController < ApplicationController

def index
  @jobs = Job.all
end
end
