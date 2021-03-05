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

# android = Phone.new
# puts android.battery_level
# android.battery_level = 10
# puts android.battery_level
# android.charge
# puts android.battery_level
# android.check_cell_signal
# android.boot

# windows = Laptop.new
# puts windows.battery_level
# windows.battery_level = 10
# puts windows.battery_level
# windows.charge
# puts windows.battery_level
# windows.check_cell_signal
# windows.boot

# desktop = Computer.new
# desktop.boot






