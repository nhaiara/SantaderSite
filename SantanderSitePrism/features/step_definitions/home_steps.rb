Dado(/^que eu estou na home do site Santander$/) do
  @app = App.new
  @app.home.load
end
