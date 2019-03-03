class CreateAvis < ActiveRecord::Migration[5.2]
  def change
    create_table :avis do |t|
      t.string :title
      t.string :content
      t.string :author
      t.integer :rate

      t.timestamps
    end
  end
end
