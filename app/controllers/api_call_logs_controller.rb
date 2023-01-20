class ApiCallLogsController < ApplicationController

    def index
        @page_title = 'API CALL LOGS'
        @api_logs = ServiceRequestLog
                    .where(search_params.reject { |_k, v| v.blank? })
                    .order(id: :desc)
                    .page(versions_params[:page])
                    .per(Setting[:paginate_number_of_pages])
        render :index
    end

    def searchURL
        @page_title = 'API CALL LOGS'
        @api_logs = ServiceRequestLog
                    .find_by(url :params[:url])
    end

    private

    def versions_params
        params.permit(:page, :page_limit)
    end

    def search_params
        params.permit(:http_method)
    end
end

