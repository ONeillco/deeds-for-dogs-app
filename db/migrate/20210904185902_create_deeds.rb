class CreateDeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :deeds do |t|
      t.string :action
      t.string :category

      t.timestamps
    end
  end
end
