def trader_of_sunday (prices) # On défini la méthode trader_of_sunday pour récupérer tout le tableau d'en bas
  day = 0
  low = 0
  high = 0
  profit_max = 0

  while (day < prices.length) # On parcours le tableau avec la boucle while
    buy = prices[day]

    (day..prices.length - 1).each do |tomorrow|
      sell = prices[tomorrow]
      profit = sell - buy

      #puts "Le profit est de #{profit}" 

      if profit > profit_max
        profit_max = profit
        #puts "Donc le profit max passe à #{profit_max}"
        low = prices.index(buy) #
        high = prices.index(sell) #
      end
    end

    day += 1
  end

  #puts "#{[low, high]}"
  #puts "Vous avez fait un profit de #{prices[high]}$ - #{prices[low]}$ = #{prices[high] - prices[low]}$"
end

trader_of_sunday ([17,3,6,9,2,15,8,6,1,10])