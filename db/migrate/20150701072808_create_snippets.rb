class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.text :body
      t.boolean :status, :default => true

      t.timestamps null: false
    end
  end
end
