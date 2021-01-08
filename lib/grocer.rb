def find_item_by_name_in_collection(name, collection)
  collection.each_with_index do |hash, i|
    if collection[i][:item] == name
      return collection[i]
    end
  end
  return nil
end

def consolidate_cart(cart)
  
  count_cart = cart.group_by {|h| h[:item]}.map {|k, v| [k, v.count] }.to_h
  return_cart = cart.uniq
  
  count_cart.each do |item, number|
    return_cart.each_with_index do |hash, i|
      if hash.has_value?(item)
        return_cart[i][:count] = number
      end
    end
  end

  return return_cart
end


  