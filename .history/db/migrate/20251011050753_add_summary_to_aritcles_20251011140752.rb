class AddSummaryToAritcles < ActiveRecord::Migration[8.0]
  def change
    add_column :aritcles, :summary, :text
  end
end
