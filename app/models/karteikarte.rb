class Karteikarte < ActiveRecord::Base
  attr_accessible :current_fach, :erraten, :nachname, :prev_fach, :vorname
end
