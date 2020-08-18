module Api
  module V1
    class ApiReportsController < ApplicationController

      def index
        reports = Report.all
        render json: {status: 'SUCCESS', message: 'Loaded reports', data: reports}
      end

    end
    
  end
end