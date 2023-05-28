import serial

# open the serial port at the appropriate baud rate and settings
ser = serial.Serial('COM5', baudrate = 115200, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE, bytesize=serial.EIGHTBITS, timeout=0.001)

# Open file for writing
with open('received_data.txt', 'w') as f:
    prev_value_first_2bits = None
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

            # First 2 bits of the binary_data
            first_2bits = binary_data[:2]

            # Last 6 bits of the binary_data
            last_6bits = binary_data[2:]

            # If first_3bits is not equal to prev_value_first_3bits, do the following
            if first_2bits != prev_value_first_2bits:
                # Circuit data is the last 5 bits of the binary_data concatanate for 2 steps starting from first_3bits = 000 to first_3bits = 001
                if first_2bits == '00':
                    circuit_data = last_6bits
                elif first_2bits == '01':
                    circuit_data = last_6bits + circuit_data
                

            # If circuit_data is not equal to prev_value (except for 001101110010 or 000000000000) and circuit_data is 10 bits long, print circuit_data and write to file
            if len(circuit_data) == 12:
                if circuit_data != prev_value:
                    print(circuit_data) # Print binary string 
                    f.write(circuit_data + "\n") # Write binary string to file
                    f.flush()  # flush write buffer to force data to be written to file
                    prev_value = circuit_data # Set prev_value to circuit_data
                elif circuit_data == '001101110010' or circuit_data == '000000000000':
                    print(circuit_data) # Print binary string
                    f.write(circuit_data + "\n") # Write binary string to file
                    f.flush()  # flush write buffer to force data to be written to file
                    prev_value = circuit_data # Set prev_value to circuit_data

            prev_value_first_2bits = first_2bits # Set prev_value to first_3bits