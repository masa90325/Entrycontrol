class EntryControlsController < ApplicationController
  before_action :set_entry_control, only: [:show, :edit, :update, :destroy]

  # GET /entry_controls
  # GET /entry_controls.json
  def index
    @entry_controls = EntryControl.all
  end

  # GET /entry_controls/1
  # GET /entry_controls/1.json
  def show
  end

  # GET /entry_controls/new
  def new
    @entry_control = EntryControl.new
  end

  # GET /entry_controls/1/edit
  def edit
  end

  # POST /entry_controls
  # POST /entry_controls.json
  def create
    @entry_control = EntryControl.new(entry_control_params)

    respond_to do |format|
      if @entry_control.save
        format.html { redirect_to @entry_control, notice: 'Entry control was successfully created.' }
        format.json { render :show, status: :created, location: @entry_control }
      else
        format.html { render :new }
        format.json { render json: @entry_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_controls/1
  # PATCH/PUT /entry_controls/1.json
  def update
    respond_to do |format|
      if @entry_control.update(entry_control_params)
        format.html { redirect_to @entry_control, notice: 'Entry control was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry_control }
      else
        format.html { render :edit }
        format.json { render json: @entry_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_controls/1
  # DELETE /entry_controls/1.json
  def destroy
    @entry_control.destroy
    respond_to do |format|
      format.html { redirect_to entry_controls_url, notice: 'Entry control was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_control
      @entry_control = EntryControl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_control_params
      params.require(:entry_control).permit(:user_id, :entry)
    end
end
