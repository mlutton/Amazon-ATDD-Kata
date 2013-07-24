class ProductDetailPage
  include PageObject
  page_url ('http://www.amazon.com/gp/product/B007HCCNJU/ref=s9_simh_gw_p349_d2_i3')

  span(:productTitle, :id => 'btAsinTitle')
  div(:price, :id => 'priceBlock')
  div(:customer_review, :class => 'reviews12345', :index => 0)
end