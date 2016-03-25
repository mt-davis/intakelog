class ReferredsController < InheritedResources::Base

  private

    def referred_params
      params.require(:referred).permit(:name)
    end
end

