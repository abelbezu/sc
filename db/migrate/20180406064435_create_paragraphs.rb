class CreateParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :paragraphs do |t|
      t.belongs_to :piece, index: true
      t.text :body
      t.timestamps
    end
  end
end
