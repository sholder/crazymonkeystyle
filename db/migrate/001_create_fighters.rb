class CreateFighters < ActiveRecord::Migration
  def self.up
    table.create :fighters do |t|
      t.string :name
      t.string :path_to_image
      t.integer :fight_count
      t.integer :win_count
    end
  end

  def self.down
    drop_table :fighters
  end
end
