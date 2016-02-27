class BollingerBands

  def self.compute(data, stddevs)
    x_bar = data.reduce(:+) / data.length

    sigma = Math.sqrt(data.reduce { |sum, x| sum + (x - x_bar)**2 } / data.length)

    upper_band = x_bar + stddevs * sigma
    middle_band = x_bar
    lower_band = x_bar - stddevs * sigma

    # TODO return an object here (likely a BollingerBand [singular])
    return [lower_band, middle_band, upper_band]

  end

end