class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :number_of_guests, null: false, default: 1
      t.string :note

      t.timestamps
    end
  end
end
