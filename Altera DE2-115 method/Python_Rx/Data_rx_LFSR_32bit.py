import serial

# open the serial port at the appropriate baud rate and settings
ser = serial.Serial('COM6 ', baudrate = 115200, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE, bytesize=serial.EIGHTBITS, timeout=0.001)

# Open file for writing
with open('received_data.txt', 'w') as f:
    prev_value_first_3bits = None
    prev_value = None
    circuit_data = ''
    while True:
        # Read 10 bytes from serial port
        data = ser.read(10) 
        if data:
            # Convert data to binary string
            binary_data = ' '.join(format(x, '08b') for x in data)

            # First 8 bits of the binary_data
            binary_data = binary_data[:8]

            # First 3 bits of the binary_data
            first_3bits = binary_data[:3]

            # Last 5 bits of the binary_data
            last_5bits = binary_data[3:]

            # If first_3bits is not equal to prev_value_first_3bits, do the following
            if first_3bits != prev_value_first_3bits:
                # Circuit data is the last 5 bits of the binary_data concatanate for 4 steps starting from first_3bits = 000, 001, 010, 001, 100, 101, 110, 111
                if first_3bits == '000':
                    circuit_data = last_5bits
                elif first_3bits == '001':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '010':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '011':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '100':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '101':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '110':
                    circuit_data = last_5bits + circuit_data
                elif first_3bits == '111':
                    circuit_data = last_5bits + circuit_data               

            # If circuit_data is not equal to prev_value and circuit_data is 20 bits long, print circuit_data and write to file
            if len(circuit_data) == 40:
                if circuit_data != prev_value:
                    print(circuit_data[3:]) # Print binary string 
                    f.write(circuit_data[3:] + "\n") # Write binary string to file
                    f.flush()  # flush write buffer to force data to be written to file
                    prev_value = circuit_data # Set prev_value to circuit_data
            prev_value_first_3bits = first_3bits # Set prev_value to first_3bits