
  #define global variabeles
@number_of_items_cart=0
@total_price=0
@total_heineken=10
@total_corona=20
@total_grolsch=12
@price_heineken=50
@price_corona=60
@price_grolsch=40
@choice=@user_choice

#First welcoming message
def question
    puts "Another? Please type Y or N"
  @question=gets.chomp
  puts
if @question=="Y"
  show
elsif @question=="N"
else
puts "You did not give the correct input"
question
end
end

  puts
  puts"welcome to Beer Paradise"
  puts
  def show
puts "Pick your poison:"

#show inventory
puts "Heineken"
puts "Corona"
puts "Grolsch"

puts

#get userinput
@user_choice=gets.chomp
puts

#evaluate users input

  if @user_choice=="Heineken" && @total_heineken>=0
  @total_price+=@price_heineken
  @number_of_items_cart+=1
  @total_heineken-=1
  @choice=@user_choice



  puts "You chose #{@user_choice}, boring"
  puts "Heineken has been added to cart, you have a total of #{@number_of_items_cart} items in your cart"



puts
question


elsif @user_choice=="Corona" && @total_corona>=0
  @total_price+=@price_corona
  @number_of_items_cart+=1
  @total_corona-=1
  @choice=@user_choice
  puts "You chose #{@user_choice}, mexican beer, good choice"
  puts "Corona has been added to cart, you have a total of #{@number_of_items_cart} items in your cart"
  puts
  question

elsif @user_choice=="Grolsch" && @total_grolsch>=0
  @total_price+=@price_grolsch
  @number_of_items_cart+=1
  @total_grolsch-=1
  @choice=@user_choice
  puts "You chose #{@user_choice}, not bad!"
  puts "Grolsch has been added to cart, you have a total of #{@number_of_items_cart} items in your cart"
  puts
  question

else
  puts "You did not choose anything"
  show

end
end



show

puts "the total price is $#{@total_price}"
puts "there are still  #{@total_heineken} crates of Heineken left,  #{@total_corona} Corona and #{@total_grolsch} Grolsch"
puts "So please come back soon or we might be sold out :)"
