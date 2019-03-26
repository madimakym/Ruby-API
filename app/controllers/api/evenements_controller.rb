module Api
    class EvenementsController < ApplicationController
        
        def index
            evenements = Evenement.order('libelle');
            render json: {status: 'SUCCESS', message: 'Chargement evenements', data:evenements},status: :ok
        end

        private

        def evenement_params
            params.require(:evenements).permit(:libelle, :description, :date, :heure, :image)
        end
    end
end