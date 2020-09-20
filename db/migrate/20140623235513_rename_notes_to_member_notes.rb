class RenameNotesToMemberNotes < ActiveRecord::Migration[6.0]
  def change
    rename_table :notes, :member_notes
  end
end
