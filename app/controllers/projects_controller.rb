class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @projects = Project.all.order('created_At DESC')
  end

  def new
  end

  def create
    @project = Project.new(project_params)
    @project.save

    redirect_to @project
  end

  def show
    @project = Project.find(params[:id])
  end

  private
    def project_params
      params.require(:project).permit(:name, :date, :skills, :images, :placeholder)
    end
end