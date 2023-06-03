import serial

# open the serial port at the appropriate baud rate and settings
ser = serial.Serial('COM5', baudrate = 115200, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE, bytesize=serial.EIGHTBITS, timeout=0.001)

# Open file for writing
with open('received_data.txt', 'w') as f:
    prev_value = None
    while True:
        # Read a line of data from serial port
        line = ser.readline(10)
        if line:
            # Convert data to binary string and print to console
            binary_data = ' '.join(format(x, '08b') for x in line)

            # Print only the first 8 bits of the binary_data
            binary_data = binary_data[:8]

            # Check if the binary_data is equal to prev_value
            if binary_data != prev_value:
                # Print binary_data
                print(binary_data)
                # Write data to file
                f.write(binary_data + "\n")
                f.flush()  # flush write buffer to force data to be written to file
                prev_value = binary_data # Set prev_value to binary_data


