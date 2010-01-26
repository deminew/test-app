class Upload
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :file, String, :auto_validation => false
  property :created_at, DateTime
  mount_uploader :file, Uploader

  def size
    file.size if file
  end

  def content_type
    file.content_type if file
  end
end
