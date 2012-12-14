class NotesController < ApplicationController
  def new
    @project = Project.find params[:project_id]
    @version = Version.find params[:version_id]
    @note = Note.new
  end

  def create
    @version = Version.find params[:version_id]
    @note = @version.notes.new params[:note]
    if @note.save
      redirect_to @project
    else
      render :action => 'new'
    end
  end
end
