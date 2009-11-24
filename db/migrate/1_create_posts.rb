migration 1, :create_posts do
  up do
    create_table(:posts) do
      column(:id, Integer, :serial => true)
      column(:title, String)
      column(:body, Text)
      column(:author_id, Integer)
    end
  end

  down do
    drop_table(:posts)
  end
end
