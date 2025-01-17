class Parrot

  def initialize(number_of_coconuts, voltage, nailed)
    @number_of_coconuts = number_of_coconuts
    @voltage = voltage
    @nailed = nailed
  end

  def speed
    throw "Should be unreachable!"
  end

  private

  def compute_base_speed_for_voltage(voltage)
    [24.0, voltage * base_speed].min
  end

  def load_factor
    9.0
  end

  def base_speed
    12.0
  end
end

class EuropeanParrot < Parrot
  # def initialize(type, number_of_coconuts, voltage, nailed)
  #   super(number_of_coconuts, voltage, nailed)
  #   @type = 'European Parrot'
  # end

  def speed
    base_speed
  end
end

class AfricanParrot < Parrot
  def speed
    [0, base_speed - load_factor * @number_of_coconuts].max
  end
end

class NorwegianBlueParrot < Parrot
  def speed
    @nailed ? 0 : compute_base_speed_for_voltage(@voltage)
  end
end
