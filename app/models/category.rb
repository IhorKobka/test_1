class Category < ApplicationRecord
  belongs_to :parent,
             -> { order_by_position },
             class_name: 'Category',
             foreign_key: 'parent_id',
             optional: true

  has_many :products
  has_many :children,
           -> { order_by_position },
           class_name: 'Category',
           foreign_key: 'parent_id'

  validates :name, :sort_pos, presence: true
  validates :name, length: { maximum: 50 }
  validates :sort_pos, numericality: { greater_than_or_equal_to: 0 }

  scope :order_by_position, -> { order(:parent_id, :sort_pos) }
  scope :root, -> { where(parent_id: nil).order_by_position }
  scope :children, -> { where.not(parent_id: nil).order_by_position }

  def self.as_tree
    TreeBuilderService.build(root, children, CategorySerializer)
  end
end
