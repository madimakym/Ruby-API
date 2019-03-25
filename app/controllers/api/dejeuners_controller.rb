module Api
        class DejeunersController < ApplicationController
            
            def index
                dejeuners = Dejeuner.order('libelle');
                render json: {status: 'SUCCESS', message: 'Loaded dejeuners', data:dejeuners},status: :ok
            end

            # def show
            #     article = Article.find(params[:id])
            #     render json: {status: 'SUCCESS', message: 'Loaded article', data:article},status: :ok
            # end


            # def create
            #     article = Article.new(article_params)
            
            #     if article.save
            #         render json: {status: 'SUCCESS', message: 'Saved article', data:article},status: :ok
            #     else
            #         render json: {status: 'ERROR', message: 'Article not saved', data:article.errors},status: :unprocessable_entity
            #     end
            # end


            # def destroy
            #     article = Article.find(params[:id])
            #     article.destroy
            #     render json: {status: 'SUCCESS', message: 'Deleted article', data:article},status: :ok
            # end


            # def update
            #     article = Article.find(params[:id])
            #     if article.update_attributes(article_params)
            #         render json: {status: 'SUCCESS', message: 'Upadated article', data:article},status: :ok
            #     else
            #         render json: {status: 'ERROR', message: 'Article not updated', data:article.errors},status: :unprocessable_entity
            #     end
            # end

            private

            def dejeuner_params
                params.require(:dejeuner).permit(:libelle, :description, :prix, :image)
            end
        end
end