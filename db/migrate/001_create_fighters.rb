class CreateFighters < ActiveRecord::Migration
  def self.up
    create_table :fighters do |t|
      t.column :name, :string
      t.column :path_to_image, :string
      t.column :fight_count, :integer, :default => 0
      t.column :win_count, :integer, :default => 0
    end
  end

  def self.down
    drop_table :fighters
  end
end
