class PageController < ApplicationController
  def index
    # for displaying home page only.
  end

  def new
    @voter = Voter.new
  end

  def create_voter
    @voter=Voter.new(voter_params)

    respond_to do |format|
      if @voter.save
        format.html { redirect_to '/page/voter/vote'}
        format.json { render :vote, status: :created, location: '/page/voter/vote' }
        session[:voter] = 'TRUE'
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voter.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    unless session[:voter] == 'TRUE'
      redirect_to '/page/voter', notice: "You must fill in your info first."
    end
    @party = Candidate.select(:PartyName).map(&:PartyName).uniq
    @candidate = Candidate.all
    render :vote
  end

  def voting_above
    params.each do |key, value|
      if key != "authenticity_token" and key != "commit"
        case value
        when "1"
          Candidate.where(PartyName: key).update_all("count = count + 6")
        when "2"
          Candidate.where(PartyName: key).update_all("count = count + 5")
        when "3"
          Candidate.where(PartyName: key).update_all("count = count + 4")
        when "4"
          Candidate.where(PartyName: key).update_all("count = count + 3")
        when "5"
          Candidate.where(PartyName: key).update_all("count = count + 2")
        when "6"
          Candidate.where(PartyName: key).update_all("count = count + 1")
        end
      end
    end
    redirect_to '/page', notice: "Voting complete!"
  end

  def voting_below
    params.each do |key, value|
      if key != "authenticity_token" and key != "commit"
        case value
        when "1"
          Candidate.where(id: key).update_all("count = count + 12")
        when "2"
          Candidate.where(id: key).update_all("count = count + 11")
        when "3"
          Candidate.where(id: key).update_all("count = count + 10")
        when "4"
          Candidate.where(id: key).update_all("count = count + 9")
        when "5"
          Candidate.where(id: key).update_all("count = count + 8")
        when "6"
          Candidate.where(id: key).update_all("count = count + 7")
        when "7"
          Candidate.where(id: key).update_all("count = count + 6")
        when "8"
          Candidate.where(id: key).update_all("count = count + 5")
        when "9"
          Candidate.where(id: key).update_all("count = count + 4")
        when "10"
          Candidate.where(id: key).update_all("count = count + 3")
        when "11"
          Candidate.where(id: key).update_all("count = count + 2")
        when "12"
          Candidate.where(id: key).update_all("count = count + 1")
        end
      end
    end
    redirect_to '/page', notice: "Voting complete!"
  end

  private
  # Only allow a list of trusted parameters through.
  def voter_params
    params.require(:voter).permit(:Name, :Gender, :Title, :PhoneNumber, :CitizenNumber, :Address, :date_of_birth)
  end
end
