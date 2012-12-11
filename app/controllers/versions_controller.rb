class VersionsController < ApplicationController
  def index
    @versions = Version.all
  end

  def show
    @version = Version.find params[:id]
  end

  def new

    @project = Project.find params[:project_id]
    @version = Version.new
  end

  def create
    @project = Project.find params[:project_id]
    @version = @project.versions.new params[:version]
    if @version.save
      redirect_to @project
    else
      render :action => 'new'
    end
  end
end
