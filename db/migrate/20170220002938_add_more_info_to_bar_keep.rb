class AddMoreInfoToBarKeep < ActiveRecord::Migration[5.0]
  def change
    add_column :bar_keeps, :phone, :bigint
    add_column :bar_keeps, :website, :string
    add_column :bar_keeps, :instagram, :string
    add_column :bar_keeps, :facebook, :string
    add_column :bar_keeps, :twitter, :string
  end
end
