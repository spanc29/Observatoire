class GraphsController < ApplicationController


  def index
    @prixes = Prix.all

    # make an array for visibility by javascript
    @mont = Array.new
    @prixes.each do |m|
      @mont.push([m.dimension,m.montant])
    end

    @h = LazyHighCharts::HighChart.new('graph') do |f|
    f.options[:chart][:defaultSeriesType] = "scatter"
    f.series(:name=>'montant',:color=> 'rgba(119, 152, 191, .5)', :data=> @mont)
    end


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prixes }
    end
  end
end
