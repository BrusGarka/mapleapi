class NumbeoController < ApplicationController
    require 'nokogiri'
    require 'open-uri'

    def index
        url = "https://www.numbeo.com/cost-of-living/in/" + params[:city]
        doc = Nokogiri::HTML(open(url))
        pathPriceValue = doc.xpath("//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'priceValue', ' ' ))]")

        prices = Array.new
        pathPriceValue.each do |a|
            prices << a.children.text.split(" C$").first.split().first.sub(",","").to_d
        end

        @city = City.find_by(name: params[:city])

        @city = City.create(prepare_params(params[:city], prices))

        byebug
        render json: @city
    end

    def prepare_params(name, prices)
        [
            name: name,
            aluguel: prices[48],
            busao: prices[28]  * 2,
            mercado: prices[8..26].sum * 4,
            energia: prices[35],
            internet: prices[37] * 2,
            academia: prices[38] * 2,
            role: (prices[0] * 8) + prices[1] + prices[40] * 2,
            roupas: (prices[43] + prices[44] + prices[45] + prices[46])*0.3,
            salariomedio: prices[53]
        ]
    end
end
