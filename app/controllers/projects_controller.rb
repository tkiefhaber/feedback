class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = current_user.projects.all
  end

  def show
    @project = Project.find params[:id]
    @versions = @project.versions.order("version_number DESC")
  end

  def new
    @project = Project.new
    @project.permissions.build
  end

  def create
    @project = Project.new params[:project]
    if @project.save
      @project.permissions.create
      redirect_to @project
    else
      render :action => 'new'
    end
  end
end
