class Forniture < ApplicationRecord
    before_save :calcular_precio

    def calcular_precio
      if self.tipo == "silla"
        if self.material == "madera"
          self.price = 20
        elsif self.material == "plástico"
          self.price = 10
        elsif self.material == "metal"
          self.price = 50
        end
      elsif self.tipo == "mesa"
        if self.material == "madera"
          self.price = 30
        elsif self.material == "plástico"
          self.price = 20
        elsif self.material == "metal"
          self.price = 60
        end
      end
    end
end
