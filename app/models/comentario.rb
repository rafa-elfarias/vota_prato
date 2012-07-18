class Comentario < ActiveRecord::Base

  belongs_to :comentavel, :polymorphic => true
end
