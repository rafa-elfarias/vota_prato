#encoding: utf-8
class Cliente < ActiveRecord::Base

  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - cliente já cadastrado"
  validates_numericality_of :idade, :greater_than => 0, :less_than => 100, :message => " - deve ser um número entre 0 e 100"

  has_many :qualificacoes
end
