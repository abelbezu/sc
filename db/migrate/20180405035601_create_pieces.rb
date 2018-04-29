class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.references :piece_owner, polymorphic: true, index: true
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
