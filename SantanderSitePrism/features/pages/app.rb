#Page-Factory Pattern
class App
  def home
    Home.new
  end
  def agency
    Agency.new
  end
  def searchAgency
    SearchAgency.new
  end
end
