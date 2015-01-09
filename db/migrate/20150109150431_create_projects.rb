class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :date
      t.string :skills
      t.string :images
      t.string :placeholder

      t.timestamps
    end
  end
end
