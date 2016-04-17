class CreateJobs < ActiveRecord::Migration
  def change
    create_table  :jobs do | f |
      t.text  :title
      t.text :client
      t.text :adress
      t.text :description
     t.timestamps null: false
    end
  end
end
