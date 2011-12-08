# encoding: UTF-8

class PrixReportsController < ApplicationController

  def index
    @prix_report = PrixReport.new(params[:prix_report])
    @assets = @prix_report.assets.page(params[:page])

  # make an array for visibility by javascript
    @reha = Array.new
    @neuf = Array.new
    @assets.each do |m|
      if m.neuf == "Réhabilitation"
      @reha.push([m.dimension,m.montant])
      else
      @neuf.push([m.dimension,m.montant])
      end
    end

    @h = LazyHighCharts::HighChart.new('graph') do |f|
    f.options[:chart][:defaultSeriesType] = "scatter"
    f.options[:chart][:zoomType] = "xy"
    f.title ({:text => "Montant en fonction de la dimension"})
    f.xAxis(:title=>{:text=>"en eq.hab ou PP"}, :min => "3", :allowDecimals => "false")
    f.yAxis(:title=>{:text=>"en euros TTC"}, :alternateGridColor => "#E8F1FC")
    f.options[:legend][:layout] = "horizontal"
    f.series(:name=>'Rehabilitation',:color=> 'rgba(119, 152, 191, .7)', :data=> @reha)
    f.series(:name=>'Neuf',:color=> 'rgba(165, 42, 42, .7)', :data=> @neuf)
    end





  end



end
