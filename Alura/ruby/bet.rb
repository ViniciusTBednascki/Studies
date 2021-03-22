def bet(one,three,five,ten,twenty)
    bet = [one,three,five,ten,twenty].sum
    result = random_weighted('one': 16, 'three': 8, 'five': 4, 'ten': 2, 'twenty': 1)
    case result.to_s
    when 'one'
        wins = one*2
    when 'three'
        wins = three*4
    when 'five'
        wins = five*6
    when 'ten'
        wins = ten*11
    when 'twenty'
        wins = twenty*21
    end
    [bet,wins]
end

def random_weighted(weighted)
    max    = sum_of_weights(weighted)
    target = rand(1..max)
    weighted.each do |item, weight|
      return item if target <= weight
      target -= weight
    end
end

def sum_of_weights(weighted)
    weighted.inject(0) { |sum, (item, weight)| sum + weight }
end


def various_tests(number)
    saldo = 10000
    total = [0,0]
    for i in 0..number
        result = bet(30,15,0,0,0)
        total[0] += result[0]
        total[1] += result[1]
    end
    ganho = ((total[1] - total[0])/saldo.to_f) * 100
    puts 'total apostado = ' + total[0].to_s
    puts 'total ganho = ' + total[1].to_s
    puts 'ganho = ' + ganho.to_s
end


various_tests(99)