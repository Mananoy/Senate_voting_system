class CreateVoters < ActiveRecord::Migration[6.1]
  def change
    create_table :voters do |t|
      t.string :Name
      t.string :Gender
      t.string :Title
      t.string :PhoneNumber
      t.string :CitizenNumber
      t.text :Address
      t.date :date_of_birth

      t.timestamps
    end
  end
end
