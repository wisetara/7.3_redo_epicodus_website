class CreateLessonsTable < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string, :null => false
      t.column :number, :integer, :null => false
      t.column :content, :text

      t.timestamps
    end
  end
end
