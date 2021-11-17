class AddDogIdToDeeds < ActiveRecord::Migration[6.1]
  def change
    add_column :deeds, :dog_id, :integer, null: false
  end
end
