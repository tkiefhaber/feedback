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
end
