class CandidateController < ApplicationController

  http_basic_authenticate_with name: "test", password: "secret"

  def show
    @candidate = Candidate.find(params[:id])
  end

  def view_candidate
    @candidate = Candidate.all
  end

  def show_winning
    @list = Candidate.all.order(:count).reverse
    if @list.length() < 3
      redirect_to '/page/admin', notice: "Candidate is less than 3."
      return
    end
    @candidate = @list[0..2]
    @count0 = @candidate[0].count
    @count1 = @candidate[1].count
    @count2 = @candidate[2].count
    if @count0 == 0 or @count1 == 0 or @count2 == 0
      redirect_to '/page/admin', notice: "Candidate doesn't have enough vote."
      return
    end
    @sum = @candidate[0].count + @candidate[1].count + @candidate[2].count
    @sum_0 = (@count0.to_f / @sum.to_f) * 100
    @sum_1 = (@count1.to_f / @sum.to_f) * 100
    @sum_2 = (@count2.to_f / @sum.to_f). * 100
    render :win
  end

  def new
    @candidate = Candidate.new
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def create_candidate
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to '/page/admin', notice: "Candidate was successfully created." }
        format.json { render :index, status: :created, location: @candidate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @candidate = Candidate.find(params[:id])
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: "Candidate was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @candidate = Candidate.find(params[:id])
    if @candidate.delete
      flash[:notice] = 'Candidate deleted!'
      redirect_to '/page/admin/view_candidate'
    else
      flash[:error] = 'Failed to delete this product!'
      render :destroy
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def candidate_params
    params.require(:candidate).permit(:Name, :Surname, :State, :PartyAb,:PartyName,:CandidateNumber)
          .with_defaults(count: 0)
  end
end
