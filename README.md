# AccuLapPace
AccuLapPace is a Garmin Connect IQ data field designed to provide runners and cyclists with highly accurate lap pace calculations, featuring millisecond-level precision. This tool is ideal for athletes who require detailed pacing information for training and performance analysis.

## Features
 - **Millisecond Precision:** Calculates lap pace with millisecond accuracy, offering more detailed insights than standard pace metrics.

 - **Real-Time Updates:** Provides immediate feedback on lap pace during activities.

 - **Seamless Integration:** Designed to work effortlessly with compatible Garmin devices via the Connect IQ platform.

## Installation
To install AccuLapPace on your Garmin device:

1. Download the App:

   - Visit the AccuLapPace GitHub Repository to access the source code.

   - Alternatively, if available, download the app directly from the Garmin Connect IQ Store.

1. Use Garmin Express or Garmin Connect Mobile:

   - Connect your Garmin device to your computer and use Garmin Express to install the app.

   - Or, use the Garmin Connect Mobile app on your smartphone to install the app wirelessly.

1. Add the Data Field:

   - On your Garmin device, navigate to the activity settings.

   - Select Data Screens > Add New > Connect IQ.

   - Choose AccuLapPace from the list.

## Usage
Once installed:

 - Start your running or cycling activity.
 - Navigate to the data screen where AccuLapPace is added.
 - Monitor your lap pace with enhanced precision throughout your workout.

## Development
### Prerequisites
 - Garmin Connect IQ SDK: Ensure you have the latest version installed. Download it from the Garmin Developer Site.

### Building the Project
 1. Clone the Repository:<br>
 ```git clone https://github.com/owenfletcher/AccuLapPace.git```
 1. Navigate to the Project Directory:<br>
 ```cd AccuLapPace```
 1. Build the Project:
    - Use the `monkeyc` compiler provided by the Connect IQ SDK:<br>
 ```monkeyc -o AccuLapPace.prg -m manifest.xml -z resources source/AccuLapPace.mc```
    - Replace the file paths as necessary based on your environment.
 1. Deploy to a Device or Emulator:
    - Use the `connectiq` tool to install the app on your device or test it using the simulator.

## Contributing
Contributions are welcome! To contribute:

 1. Fork the Repository.
 1. Create a New Branch:<br>
  ```git checkout -b feature/YourFeature```
 1. Commit Your Changes:<br>
  ```git commit -m 'Add your feature'```
 1. Push to the Branch:<br>
  ```git push origin feature/YourFeature```
 1. Open a Pull Request.

Please ensure your code adheres to the existing style guidelines and includes appropriate documentation and tests.

## License
This project is licensed under the MIT License.

## Acknowledgments
Thanks to [Owen Fletcher](https://github.com/owenfletcher) for developing and maintaining this project.

Garmin for providing the Connect IQ platform and development tools.
