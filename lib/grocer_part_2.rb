require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    cart.each do |grocery|
      if coupon[:item] == grocery[:item]
        grocery[:count] -= coupon[:num]
        cart << {
          item: coupon[:item] + " W/COUPON",
          price: coupon[:cost] / coupon[:num],
          clearance: grocery[:clearance],
          count: coupon[:num]
        }
      end
    end 
  end
  return cart
end

def apply_clearance(cart)
  cart.each do |grocery|
    if grocery[:clearance] == true
      grocery[:price] /= (1.25)
    end
  end
  return cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
