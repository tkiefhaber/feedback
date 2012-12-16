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

  def destroy
    @project = Project.find params[:project_id]
    @version = @project.versions.find params[:id]
    @version.destroy
    flash[:success] = "Version has been deleted"
    redirect_to @project
  end
end
