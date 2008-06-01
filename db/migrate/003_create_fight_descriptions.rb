class CreateFightDescriptions < ActiveRecord::Migration
  def self.up
    create_table :fight_descriptions do |t|
      t.column :fighter_id, :integer, :null => false
      t.column :fighter_won, :boolean, :null => false, :default => true
      t.column :description, :text, :null => false
    end
  end

  def self.down
    drop_table :fight_descriptions
  end
end
