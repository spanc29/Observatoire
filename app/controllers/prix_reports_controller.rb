class PrixReportsController < ApplicationController

  def index
    @prix_report = PrixReport.new(params[:prix_report])
    @assets = @prix_report.assets.page(params[:page])

  # make an array for visibility by javascript
    @mont = Array.new
    @assets.each do |m|
      @mont.push([m.dimension,m.montant])
    end

    @h = LazyHighCharts::HighChart.new('graph') do |f|
    f.options[:chart][:defaultSeriesType] = "scatter"
    f.series(:name=>'montant',:color=> 'rgba(119, 152, 191, .5)', :data=> @mont)
    end





  end



end
