class PrixReportsController < ApplicationController

  def index
    @prix_report = PrixReport.new(params[:prix_report])
    @assets = @prix_report.assets.page(params[:page])

  # make an array for visibility by javascript
    @reha = Array.new
    @neuf = Array.new
    @assets.each do |m|
      if m.neuf == "rehabilitation"
      @reha.push([m.dimension,m.montant])
      else
      @neuf.push([m.dimension,m.montant])
      end
    end

    @h = LazyHighCharts::HighChart.new('graph') do |f|
    f.options[:chart][:defaultSeriesType] = "scatter"
    f.title ({:text => "Montant en fonction de la dimension"})
    f.xAxis(:title=>{:text=>"en eq.hab ou PP"})
    f.yAxis(:title=>{:text=>"en euros TTC"})
    f.options[:legend][:layout] = "horizontal"


    f.series(:name=>'Rehabilitation',:color=> 'rgba(119, 152, 191, .6)', :data=> @reha)
    f.series(:name=>'Neuf',:color=> 'rgba(119, 152, 0, .6)', :data=> @neuf)
    end





  end



end
