class RecipientsController < ApplicationController
  before_action :set_recipient, only: [:show, :edit, :update, :destroy]

  # GET /recipients
  # GET /recipients.json
  def index
    @recipients = Recipient.all
    @search = Recipient.search(params[:q])
    @recipients = @search.result
  end

  # GET /recipients/1
  # GET /recipients/1.json
  def show
  end

  # GET /recipients/new
  def new
    @recipient = Recipient.new
  end

  # GET /recipients/1/edit
  def edit
  end

  # POST /recipients
  # POST /recipients.json
  def create
    @recipient = Recipient.new(recipient_params)

    respond_to do |format|
      if @recipient.save
        format.html { redirect_to @recipient, notice: '送付先情報を作成しました。' }
        format.json { render :show, status: :created, location: @recipient }
      else
        format.html { render :new }
        format.json { render json: @recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipients/1
  # PATCH/PUT /recipients/1.json
  def update
    respond_to do |format|
      if @recipient.update(recipient_params)
        format.html { redirect_to @recipient, notice: '送付先情報を更新しました。' }
        format.json { render :show, status: :ok, location: @recipient }
      else
        format.html { render :edit }
        format.json { render json: @recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients/1
  # DELETE /recipients/1.json
  def destroy
    @recipient.destroy
    respond_to do |format|
      format.html { redirect_to recipients_url, notice: '送付先情報を削除しました。' }
      format.json { head :no_content }
    end
  end

  def csv_output
    @recipients = Recipient.all
    send_data render_to_string,filename:"recipients.csv",type: :csv
  end 
  
def import
  Recipient.import(params[:file])
  redirect_to "/recipients"
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient
      @recipient = Recipient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_params
      params.require(:recipient).permit(:name, :shamei, :sec_name1, :sec_name2, :position, :post_code, :address1, :address2, :dolor, :honor, :note)
    end

end
