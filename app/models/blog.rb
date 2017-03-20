class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :title,
      [:title, :created_at]
    ]
  end
end
