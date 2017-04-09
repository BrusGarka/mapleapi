class NumbeoController < ApplicationController
    require 'nokogiri'
    require 'open-uri'

    def index
        @city = City.find_by(name: params[:city].capitalize)
        if @city.blank?
            @city = City.create!(prepare_params(params[:city], collectNumbeo))
        end

        render json: @city
    end

    def collectNumbeo
        url = "https://www.numbeo.com/cost-of-living/in/" + params[:city]
        byebug
        doc = Nokogiri::HTML(open(url))
        pathPriceValue = doc.xpath("//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'priceValue', ' ' ))]")

        prices = Array.new
        pathPriceValue.each do |a|
             prices << a.children.text.split(" C$").first.split().first.sub(",","").to_d
        end

        return prices
    end

    def prepare_params(name, prices)
        [
            name: name.capitalize,
            aluguel_centro: prices[47],
            aluguel_fora: prices[48],
            busao: prices[28] ,
            mercado: prices[8..26].sum * 4,
            energia: prices[35],
            mobile: prices[36],
            internet: prices[37],
            academia: prices[38],
            role: prices[40] *4,
            restaurante:  (prices[0] * 4) + prices[1] ,
            health_care: 65.0,
            roupas: (prices[43] + prices[44] + prices[45] + prices[46])*0.3,
            salariomedio: prices[53].present? ? prices[53] : 0.0
        ]
    end
end
