class RemoveIndexFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_index :messages, name: :index_messages_on_user_id
  end
end
