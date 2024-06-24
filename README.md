# Diabetic Retinopathy Detection Using Image Processing

This repository contains a MATLAB project for detecting diabetic retinopathy using image processing techniques. The project includes a follow-up file for blood vessel segmentation.

## Table of Contents

- [Introduction](#introduction)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Diabetic retinopathy is a diabetes complication that affects the eyes. This project aims to detect diabetic retinopathy using image processing techniques implemented in MATLAB. The project includes preprocessing steps, feature extraction, and blood vessel segmentation.

## Requirements

- MATLAB (tested with version R2020a and later)
- Image Processing Toolbox

## Installation

1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/your-username/Diabetic-Retinopathy-Detection.git
    ```
2. Navigate to the project directory:
    ```bash
    cd Diabetic-Retinopathy-Detection
    ```

## Usage

1. Open MATLAB and navigate to the project directory.
2. Run the main script to perform diabetic retinopathy detection:
    ```matlab
    clc; clear all; close all;
    run('your_main_script.m')
    ```
3. The script will display various stages of image processing, including the original image, grayscale conversion, histogram equalization, filtering, thresholding, and feature extraction.

## Project Structure

- `main_script.m`: The main script for diabetic retinopathy detection.
- `blood_vessel_segmentation.m`: The script for blood vessel segmentation.
- `Colorize_Image.m`: The function for colorizing segmented images.
- `Threshold_Level.m`: The function for determining the threshold level.
- `neo_and_micro.jpg`: Sample image used for testing.



## Contributing

Contributions are welcome! Please fork the repository and use a feature branch. Pull requests are warmly welcome.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
