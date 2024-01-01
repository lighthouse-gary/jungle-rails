module ApplicationHelper
  def formatted_price(price)
    number_to_currency(price, unit: "$", precision: 2)
  end
end
