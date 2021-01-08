def find_item_by_name_in_collection(name, collection)
  collection.each_with_index do |hash, i|
    if collection[i][:item] == name
      return collection[i]
    end
  end
  return nil
end

def consolidate_cart(cart)
  
  consolidated_cart = []
  cart.each_with_index do |hash, i|
    count = 0
    consolidated_cart_item = Hash.new(0)
    consolidated_cart_item = cart[i][:item += 1]
      
    
  end
  
  return consolidated_cart
end


  