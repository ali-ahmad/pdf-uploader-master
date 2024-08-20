class CreateUploads < ActiveRecord::Migration
  def self.up
    create_table :uploads do |t|
      t.column :uploaded_file_name,    :string
      t.column :uploaded_content_type, :string
      t.column :uploaded_file_size,    :integer
      t.column :uploaded_updated_at,   :datetime      
      t.timestamps
    end
  end
  def self.down
    drop_table :uploads
  end
end
