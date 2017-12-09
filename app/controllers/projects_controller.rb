class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :be_shishou]
  before_action :pundit_auth, only: [:edit, :update, :new, :create, :destroy, :be_shishou]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    # authorize :project, :new?
  end

  # GET /projects/1/edit
  def edit
    # authorize @project
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    # authorize @project
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update

    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def be_shishou
    # binding.pry
    @project.shishous << current_user unless @project.shishous.include?(current_user)
    redirect_to action: :show
    #params
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :body, :owner_id, :repository)
    end

    def pundit_auth
      authorize @project || Project.new
    end
end
