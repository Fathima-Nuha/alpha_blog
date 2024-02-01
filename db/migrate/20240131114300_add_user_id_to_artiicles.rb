class AddUserIdToArtiicles < ActiveRecord::Migration[7.1]
  def change
    add_column :artiicles, :user_id, :int

  end
end
