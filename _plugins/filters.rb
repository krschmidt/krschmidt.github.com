module MyLiquidFilters
  # Checks if the post contains amazon affiliate links
  def has_amazon(input)
    input =~ /(https:\/\/amzn.to)/i ? true : false
  end

  Liquid::Template.register_filter self
end
