class CreateBarKeeps < ActiveRecord::Migration[5.0]
  def change
    create_table :bar_keeps do |t|
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
