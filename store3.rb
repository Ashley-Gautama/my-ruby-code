@inventory=[
  {:name=>"Heineken", :id=>1, :description=> "Fairly standard, not much to say", :stock=>1, :price=>6.50},
  {:name=>"Grolsch", :id=>2, :description=> "Golden standard, an excellent choice", :stock=> 1, :price=>7.95}
]

@choice=""

@cart=[{:name=>"Heineken", :quantity=>0}, {:name=>"Grolsch", :quantity=>0}]


@total_price=0.00
@customer_paid=0.00

def welcome_message
  puts
  puts "Welcome to the beer paradise, pick your poison"
  puts
end

def user_menu
  puts "Please choose one of the menu options:"
  puts "1. Show inventory"
  puts "2. Buy an item"
  puts "3. Show cart"
  puts "4. Pay for your product"
  puts "5. Exit store"
  choose=gets.chomp.to_i
  @choice=choose
  choice
end

def choices
  if @choice==1
    buy

  elsif @choice==2
    user_menu

  elsif @choice==3
    exit
  else
    puts "wrong input please choose"
    puts "1. buy"
    puts "2. main menu"
    puts "3. quit"
    choose=gets.chomp.to_i
    @choice=choose
    choices
  end

end



def show_inventory

     @inventory.each do |product|
       puts
       puts "#{product[:id]}. #{product[:name]} "
       puts "#{product[:description]}"
       puts "only #{product[:stock]} left in stock"
       puts "-"*160
      end
      puts
      puts "1. buy"
      puts "2. main menu"
      puts "3. quit"
      choose=gets.chomp.to_i
      @choice=choose
      choices


end


def show_items
  @inventory.each do |product|
    puts "#{product[:id]} #{product[:name]} "

  end
end

def buy
  puts "select a nice beer"
  show_items
  choose=gets.chomp.to_i
  @choice=choose
  choose_product


end





def choice

  if @choice==1
    show_inventory

  elsif @choice==2

    buy

  elsif @choice==3
    show_cart

  elsif @choice==4
    get_price


  elsif @choice==5
    exit
  else
    puts "wrong input, please choose again"
    user_menu
  end
end


def choose_product
  if @choice==1 && @inventory[0][:stock]>0

      @cart [0] [:quantity] +=1
      @inventory [0] [:stock]-=1

    puts "good"
    puts "What do you want to do now?"
    puts
  elsif @choice==2 && @inventory [1][:stock]>0

      @cart [1] [:quantity] +=1
      @inventory [1] [:stock]-=1
      puts "great"
      puts "What do you want to do now?"
      puts

  elsif @choice!=1  && @choice!=2
    puts "wrong menu choice"
    buy
  else
    puts "The item you chose is out of stock"
    puts

  end

  user_menu
end

def show_cart
  puts "you have #{@cart[0][:quantity]} #{@cart[0][:name] } for  #{@inventory[0][:price]} each"
  puts "you have #{@cart[1][:quantity]} #{@cart[1][:name]} #{@inventory[1][:price]} each"
  puts "1. remove item"
  puts "2. main menu"
  puts "3. pay"
  puts "4.Leave store"
get_input=gets.chomp.to_i
if get_input==1
  remove_cart
elsif get_input==2
  user_menu
elsif get_input==3
  get_price
elsif get_input==4
  exit

else
  puts "wrong, displaying everything again"
  show_cart

end
end

def get_price
  @total_price=(@cart[0][:quantity] * @inventory[0][:price])+ @total_price=@cart[1][:quantity] * @inventory[1][:price]

  puts "The total price is #{@total_price}"
  puts "Please enter the amount you would like to pay below"
  @customer_paid=gets.chomp.to_i
  pay




end

def pay
  if @customer_paid==@total_price
    puts "Payment succeeded enjoy"
  elsif @customer_paid>=@total_price
    puts "Here is your change of  #{@customer_paid-@total_price} back"
  elsif @customer_paid<=@total_price
    puts "You did not pay the correct amount, please pay the correct amount or do something else"
    





  end
  user_menu
end

def exit
  if @cart[0][:quantity]==0 &&  @cart[1][:quantity]==0
    puts "We are sad you did not buy anything :("
  elsif @customer_paid<@total_price  || @total_price==0
    puts "you did not receive your product"

  else
    puts "Enjoy your product"

  end

end

def remove_cart
  puts "Choose a product to remove"
  puts "1. Heineken"
  puts "2. Grolsch"
  remove_item=gets.chomp.to_i
  if remove_item==1
    @cart [0] [:quantity] -=1
    @inventory [0] [:stock]+=1
    puts "Heineken removed, returning to main menu"
    puts
    user_menu
  elsif remove_item==2
    @cart [1] [:quantity] -=1
    @inventory [1] [:stock]+=1
    puts "Grolsch removed, returning to main menu"
    puts
    user_menu
  else
    puts "try again returning to main menu"
    puts
    user_menu
  end



end



welcome_message
user_menu
