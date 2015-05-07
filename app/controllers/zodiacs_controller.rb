class ZodiacsController < ApplicationController

def new_form

end

 def create_row

  z = Zodiac.new
  z.sign = params[:symbol]
  z.creature = params[:animal]
  z.fortune = params[:horoscope]
  z.save

    @sign = params[:symbol]
    @creature = params[:animal]
    @fortune = params[:horoscope]
 end

def sign
 @zodiac= Zodiac.find_by({ :sign => params[:the_sign]})

#render ('show.html.erb')
redirect_to('http://www.google.com')
end

def creature
 @zodiac= Zodiac.find_by({ :creature => params[:the_creature]})

end

def show
 @zodiac= Zodiac.find_by({ :id => params[:the_id]})

end

def index
 @zodiac= Zodiac.find_by({ :id => params[:the_id]})

end

def delete
  z= Zodiac.find(params [:the_id])
  z.delete
  redirect_to('http://localhost:3000/zodiacs')
end

end


end
