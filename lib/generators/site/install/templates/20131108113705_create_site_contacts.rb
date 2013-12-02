class CreateSiteContacts < ActiveRecord::Migration
  def change
     create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :telefone
      t.text :message
      t.timestamps
     end
  end
end
