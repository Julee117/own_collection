class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :description
      t.string :url
      t.string :site_source
      t.integer :board_id
    end
  end
end
