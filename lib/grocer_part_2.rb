require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    cart.each do |grocery|
      if coupon[:item] == grocery[:item]
        grocery[:count] -= coupon[:num]
        cart << {
          item: coupon[:name] + " W/COUPON",
          price: coupon[:price] / coupon[:num],
          clearance: grocery[:clearance],
          count: coupon[:num]
        }
      end
    end 
  end
  return cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
