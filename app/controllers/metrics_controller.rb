class MetricsController < ApplicationController

#def analytic

#@media_metrics = @metrics.group_by { |t| t.media_type }
                          .transform_values { |v| v.count }
#@impression_metrics = @metrics.group_by { |t| t.impression }
                          .transform_values { |v| v.count }

#@travellers = @transactions.group_by{ |t| t.traveller_last_name }
                          .transform_values{|v| v.count }.sort_by{ |k, v| -v }[0..4].to_h

#end

end
