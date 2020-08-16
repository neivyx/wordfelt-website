class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|

      t.string :title
      t.string :poem
      t.string :user_id
      


      t.timestamps null: false
    end
  end
end
