module Api
  module V1
    class ApiReportsController < ApplicationController

      def index
        reports = Report.all
        render json: {status: 'SUCCESS', message: 'Loaded reports', data: reports}
      end

      def show
        report = Report.find_by(id:params[:id])
        render json: {data: report}
      end

    end
    
  end
end