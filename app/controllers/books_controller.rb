class BooksController < ApplicationController
    before_action :set_book, only: [:show, :update, :destroy]
    def index
        books = Book.all
        render json: books, include: [:author, :genre]  
    end

    def show
        render json: @book
    end

    def create
        @book = Book.new (book_params)

        if @book.save
            render json: @book, status: :created
        else 
            render json: @book.errors, status: :unprocessable_entity   
        end
    end

    def update
        if @book.update(book_params)
            render json: @book
        else
            render jsnon: @book.errors, status: :unprocessable_entity 
        end    
    end

    def destroy
        @book.destroy
        if  @book.destroy
            head :no_content, status: :ok
        else
            render json: @book.errors, status: :unprocessable_entity 
        end 
    end

    private

    # Only allow a trusted parameter "white list" through.
    def book_params
        params.require(:book).permit(:title, :author_id, :genre_id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_book
        @book = Book.find(params[:id])
    end
    
end
