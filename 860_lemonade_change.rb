# https://leetcode.com/problems/lemonade-change/

# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
    cash_register = { 5 => 0, 10 => 0, 20 => 0 }
    
    bills.each do |bill|
        cash_register[bill] += 1
        owed = bill - 5
        
        next if owed == 0
        
        if owed == 5
            cash_register[owed] -=1
            return false if cash_register[owed] < 0
        else
            if cash_register[10] > 0
                cash_register[10] -= 1
                cash_register[5] -= 1
                return false if cash_register[5] < 0
            else
                cash_register[5] -= 3
                return false if cash_register[5] < 0
            end
        end
    end
    
    return true
end