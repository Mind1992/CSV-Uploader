class DocumentsController < ApplicationController

private

  def document_params
    params.require(:document).permit(:document_name)
  end
end
