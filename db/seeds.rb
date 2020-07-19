# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying users"
User.destroy_all
puts "Destroying themes"
Theme.destroy_all
puts "Destroying Dashboards"
Dashboard.destroy_all
puts "Destroying Widgets"
Widget.destroy_all
puts "Destroying WidgetDashes"
WidgetDash.destroy_all




cor = User.create(name: 'Coral' , username: 'Coralreef', password:'c123')
emily =User.create(name: 'Emily', username: 'parisprincess', password:'e1234')
eric = User.create(name: 'Eric' , username: 'Propz', password:'getwhatuget123')
meg = User.create(name: 'Meghann' , username: 'homegirl', password:'winteriscoming123')

coffee = Theme.create(name: "coffee")
coral = Theme.create(name: "coral")
blue = Theme.create(name: "blue")
yellow = Theme.create(name: "yellow")
dark = Theme.create(name: "darkmode")

    
cd = Dashboard.create(user_id: cor.id,theme_id: coffee.id)
ed = Dashboard.create(user_id: emily.id,theme_id: yellow.id)
eed = Dashboard.create(user_id: eric.id,theme_id: blue.id)
md = Dashboard.create(user_id: meg.id,theme_id: coral.id)


weather = Widget.create(title: "weather")
currency = Widget.create(title: "currency")
quote = Widget.create(title: "quote")
photo = Widget.create(title: "photo")
clock = Widget.create(title: "clock")
zodiac = Widget.create(title: "zodiac")
game = Widget.create(title: "game")
unit = Widget.create(title: "unit")


WidgetDash.create(dashboard_id: cd.id, widget_id: weather.id )
WidgetDash.create(dashboard_id: cd.id, widget_id: currency.id )

WidgetDash.create(dashboard_id: ed.id, widget_id: weather.id)
WidgetDash.create(dashboard_id: ed.id, widget_id: currency.id)
WidgetDash.create(dashboard_id: ed.id, widget_id: clock.id)
WidgetDash.create(dashboard_id: ed.id, widget_id: quote.id)


WidgetDash.create(dashboard_id: eed.id, widget_id: weather.id)
WidgetDash.create(dashboard_id: eed.id, widget_id: currency.id)

WidgetDash.create(dashboard_id: md.id, widget_id: weather.id)
WidgetDash.create(dashboard_id: md.id, widget_id: quote.id)