# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    
    prices.each_cons(2) do |p1, p2|
        if p1 < p2
            profit += p2 - p1
        end
    end
    return profit
end