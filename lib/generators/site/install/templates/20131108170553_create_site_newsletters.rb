class CreateSiteNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :email;
      t.string :nome;
      t.timestamps
    end
  end
end
