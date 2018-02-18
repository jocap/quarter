class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    def enable_indexing
      @allow_indexing = true
    end

    def disable_indexing
      @allow_indexing = false
    end
end
