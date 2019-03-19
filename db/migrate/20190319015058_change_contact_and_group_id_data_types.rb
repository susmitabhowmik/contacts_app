class ChangeContactAndGroupIdDataTypes < ActiveRecord::Migration[5.2]
  def change
    change_column :contact_groups, :contact_id, 'integer USING CAST(contact_id AS integer)'
    change_column :contact_groups, :group_id, 'integer USING CAST(groupgit add_id AS integer)'
  end
end
