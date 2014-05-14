class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError, "isbn should not be an empty string" \
    if isbn.empty?
    raise ArgumentError, "price should not be <= 0" \
    if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return sprintf("$%.2f", price)
  end
end

