
class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :Name
      t.string :Surname
      t.string :State
      t.string :PartyAb
      t.string :PartyName
      t.string :CandidateNumber

      t.timestamps
    end
  end
end