class RemoveNotesFromMember < ActiveRecord::Migration[6.0]
  def change
    change_table :members do |t|
      t.remove :notes
    end
  end
end
