class CreateArticleTable < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :category
      t.string :title
      t.string :post
      t.string :aasm_state
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
