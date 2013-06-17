class Karteikarte < ActiveRecord::Base
  attr_accessible :current_fach, :erraten, :nachname, :prev_fach, :vorname
  validates :vorname, :presence => true,
                      :length => { :minimum => 2}
  validates :nachname, :presence => true,
                       :length => { :minimum => 2 }
  validates :foto, :presence => true

  belongs_to :deck
  belongs_to :student

  def in_deck?(decknumber)
    true
  end

  def assign_deck(decknumber)
  end




end

