class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.text :bio
      t.integer :post
      t.integer :follower
      t.integer :following

      t.timestamps
    end
  end
end
