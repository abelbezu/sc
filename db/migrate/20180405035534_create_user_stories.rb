class CreateUserStories < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stories do |t|
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
