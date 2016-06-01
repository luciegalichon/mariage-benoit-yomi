class AddYesToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :oui, :boolean
  end
end
