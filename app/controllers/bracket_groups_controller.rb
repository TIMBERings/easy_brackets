class BracketGroupsController < ApplicationController
  before_action :set_bracket_group, only: [:show, :edit, :update, :destroy]

  # GET /bracket_groups
  # GET /bracket_groups.json
  def index
    @bracket_groups = BracketGroup.all
  end

  # GET /bracket_groups/1
  # GET /bracket_groups/1.json
  def show
  end

  # GET /bracket_groups/new
  def new
    @bracket_group = BracketGroup.new
  end

  # GET /bracket_groups/1/edit
  def edit
  end

  # POST /bracket_groups
  # POST /bracket_groups.json
  def create
    @bracket_group = BracketGroup.new(bracket_group_params)

    respond_to do |format|
      if @bracket_group.save
        format.html { redirect_to @bracket_group, notice: 'Bracket group was successfully created.' }
        format.json { render :show, status: :created, location: @bracket_group }
      else
        format.html { render :new }
        format.json { render json: @bracket_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bracket_groups/1
  # PATCH/PUT /bracket_groups/1.json
  def update
    respond_to do |format|
      if @bracket_group.update(bracket_group_params)
        format.html { redirect_to @bracket_group, notice: 'Bracket group was successfully updated.' }
        format.json { render :show, status: :ok, location: @bracket_group }
      else
        format.html { render :edit }
        format.json { render json: @bracket_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bracket_groups/1
  # DELETE /bracket_groups/1.json
  def destroy
    @bracket_group.destroy
    respond_to do |format|
      format.html { redirect_to bracket_groups_url, notice: 'Bracket group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bracket_group
      @bracket_group = BracketGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bracket_group_params
      params.require(:bracket_group).permit(:name, :event_id)
    end
end
