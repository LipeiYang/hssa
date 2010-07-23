# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def f(num)
    h number_to_currency(num)
  end
end
