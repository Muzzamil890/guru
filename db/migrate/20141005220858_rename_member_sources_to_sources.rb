class RenameMemberSourcesToSources < ActiveRecord::Migration[6.0]
  def change
    rename_table :member_sources, :sources
  end
end
