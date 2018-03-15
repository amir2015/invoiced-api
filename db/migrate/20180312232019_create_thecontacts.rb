class CreateThecontacts < ActiveRecord::Migration[5.1]
  def change
    create_table :thecontacts do |t|

      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :email
       
    end
  end
end
