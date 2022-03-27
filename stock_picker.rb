def stock_picker(prices)
    profit = 0
    buy = 0
    sell = 0
    for i in 0...prices.length do
        for j in (i + 1)...prices.length do
            if prices[j] - prices[i] > profit 
                profit = prices[j] - prices[i]
                buy = i
                sell = j
            end
        end
    end
    p [buy, sell]
    return [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])