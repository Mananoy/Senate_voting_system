class AddCountToCandidates < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :count, :integer
  end
end
