module ComedianHelper
 
  def comedian_css(comedian)
    if current_user.comedians
      current_user.comedians.each do |comedian|
        'fave' if comedian.faved?
      end
    end
  end
end
