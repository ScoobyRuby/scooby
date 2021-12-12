# frozen_string_literal: true

class CreateScoobyBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :scooby_blogs do |t|
      t.text :title
      t.text :subtitle
      t.text :content
      t.datetime :release_date
      t.boolean :is_drafted

      t.timestamps
    end
  end
end
