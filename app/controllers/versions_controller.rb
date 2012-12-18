class VersionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @project = Project.find params[:id]
    @versions = @project.versions.all
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

  def update
    @project = Project.find params[:project_id]
    @version = Version.find params[:id]
    if @version.update_attributes params[:version]
      flash[:success] = "nice work!"
      redirect_to project_path(@project)
    else
      flash[:warning] = "this didn't update"
      render project_path(@project)
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
