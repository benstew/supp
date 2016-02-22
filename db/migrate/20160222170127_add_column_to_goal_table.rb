class AddColumnToGoalTable < ActiveRecord::Migration
  def change
    # Currently just has title and description
    rename_column :goals, :title, :name
    add_column :goals, :category, :string
    add_column :goals, :category_id, :integer
  end
end
