def stock_picker(stock_prices)
  possible_best_days = {}

  stock_prices.each_with_index do |purchase_price, purchase_day|
    ((purchase_day + 1)...(stock_prices.size)).each do |sales_day|
      price = purchase_price - stock_prices[sales_day]  
      possible_best_days["#{purchase_day} #{sales_day}"] = price 
    end
  end

  best_day = possible_best_days.min_by(&:last)
  p best_day[0].split(" ")
end

prices = [17,3,6,9,15,8,6,1,10]
stock_picker(prices)
