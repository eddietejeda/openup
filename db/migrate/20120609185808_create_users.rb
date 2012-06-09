class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mailing_address
      t.string :phone

      t.timestamps
    end
    add_foreign_key(:users, :requests, :column => :request_id)

  end
end
