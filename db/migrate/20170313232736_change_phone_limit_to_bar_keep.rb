class ChangePhoneLimitToBarKeep < ActiveRecord::Migration[5.0]
  def change
  	change_column :bar_keeps, :phone, :bigint
  end
end
