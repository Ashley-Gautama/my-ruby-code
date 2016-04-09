#define variabeles I want to use (later)
@price_douwe_egberts=5
@price_nespresso=4
@price_senseo=5
@total_products=0

@amount_de=12
@amount_nes=20
@amount_senseo=30
@user_choice=""




#create a method which shows inventory
def show_inventory
  puts "we have:"
  puts "douwe egberts"
  puts "nespresso"
  puts "senseo"
  puts "Choose a product"
end


#create a method which acts like a switch
def switch
choice=gets.chomp.to_s
@user_choice=choice

if @user_choice=="douwe egberts"
  @amount_de-=1
  @total_products+=1
  puts "You have bought #{choice}"

elsif @user_choice=="nespresso"
    @amount_nes-=1
    @total_products+=1
    puts "You have bought #{choice}"

  elsif @user_choice=="senseo"
      @amount_senseo-=1
      @total_products+=1
      puts "You have bought #{choice}"

    else
      puts "wrong"
      show
    end
  end

# Begin program
#Begin with showing iventory
  show_inventory

  switch
