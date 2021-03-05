module ComputeDevice
    def boot
        puts "Booting device..."
    end
end

module PortableDevice
    include ComputeDevice
    def initialize
        @battery_level = 0 
    end
    def battery_level
        @battery_level
    end
    def battery_level=(amount)
        @battery_level = amount
    end
    def charge
        self.battery_level += 1
    end
    def check_cell_signal
        puts "Searching cell site..."
    end
end

class Phone 
    include PortableDevice
end
class Laptop 
    include PortableDevice
end
class Computer 
    include ComputeDevice
end

# vivo = Phone.new
# puts vivo.battery_level
# vivo.battery_level = 10
# puts vivo.battery_level
# vivo.charge
# puts vivo.battery_level
# vivo.boot

# lenovo = Computer.new
# vivo.boot






