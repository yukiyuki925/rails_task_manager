class Task < ApplicationRecord
  validates :name, :content, presence: true
  validates :name, :content, length: { maximum: 30 }
  validate :validate_name_not_including_comma
  before_validation :set_nameless_name

  private

  def validate_name_not_including_comma
    errors.add(:name, 'カンマ使えないっす') if name&.include?(',')
  end

  def set_nameless_name
    self.name = '名前なし' if name.blank
  end
end
