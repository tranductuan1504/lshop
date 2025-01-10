class Product < ApplicationRecord
    has_one_attached :featured_image
    has_one_attached :image

    has_rich_text :description
    validates :name, presence: true
    def on_sale?
        sale_price.present? && sale_price < price
      end
end
