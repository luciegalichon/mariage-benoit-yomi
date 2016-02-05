class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :covoiturage, index: true

      t.timestamps null: false
    end
  end
end
