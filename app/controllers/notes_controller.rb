class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:edit, :update, :destroy]
  before_action :set_account
  before_action :check_user, only: [:edit, :update, :destroy]

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.account_id = @account.id

    respond_to do |format|
      if @note.save
        format.html { redirect_to @account, notice: 'note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to account_path(@account), notice: 'note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to account_path(@account), notice: 'note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    def set_account
      @account = Account.find(params[:account_id])
    end
    
     def check_user
      unless (@note.user == current_user) || (current_user.admin?)
        redirect_to root_url, alert: "Sorry, this not belongs to someone else"
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:comment)
    end
end
