class AuthorsController < ApplicationController
    def index
        authors = Author.all
        render json: authors, include: [:books, :genres]
    end

    def show
        render json: @uthor
    end

    def create
        @author = Author.new (author_params)

        if @author.save
            render json: @author, status: :created
        else
            render json: @author.errors , status: :unprocessable_entity    
        end
    end

    def update
        if @author.update(author_params)
            render json: @author
        else
            render json: @author.errors , status: :unprocessable_entity    
        end
    end
    
    def destroy
        @author.destroy
        if  @author.destroy
            head :no_content, status: :ok
        else
            render json: @author.errors, status: :unprocessable_entity 
        end      
    end

    private

    # Only allow a trusted parameter "white list" through.
    def author_params
        params.require(:author).permit(:name)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_book
        @author = Author.find(params[:id])
    end
end
