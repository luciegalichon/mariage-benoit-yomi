class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :nom
      t.string :mail
      t.string :prenom
      t.string :musique
      t.integer :nbpers
      t.text :commentaire

      t.timestamps null: false
    end
  end
end
