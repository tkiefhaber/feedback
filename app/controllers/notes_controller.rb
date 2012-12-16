class NotesController < ApplicationController
  def new
    @project = Project.find params[:project_id]
    @version = Version.find params[:version_id]
    @note = Note.new
  end

  def create
    @project = Project.find params[:project_id]
    @version = Version.find params[:version_id]
    @note = @version.notes.new params[:note]
    if @note.save
      puts "hello"
      flash[:succes] = "Note has been added"
      redirect_to project_path(@project)
    else
      render :action => 'new'
    end
  end

  def update
    @project = Project.find params[:project_id]
    @note = Note.find params[:id]
    if @note.update_attributes params[:note]
      flash[:success] = "nice work!"
      redirect_to project_path(@project)
    else
      flash[:warning] = "this didn't update"
      render project_path(@project)
    end
  end
end
