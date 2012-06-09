class CreateRequesters < ActiveRecord::Migration
  def change
    create_table :requesters do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.text :mailing_address

      t.timestamps
    end
  end
end
