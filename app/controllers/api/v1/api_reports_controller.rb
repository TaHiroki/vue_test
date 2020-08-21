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

      def create
        report = Report.new(index: params[:index], content: params[:content])
        if report.save
          head :no_content
        end
      end

      private

      def report_params
        params.permit!
      end

    end
    
  end
end