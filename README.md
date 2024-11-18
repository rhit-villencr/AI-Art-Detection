# AI-Art-Detection

## Overview
This project is designed to take in a piece of artwork and classify it as one of 11 styles. It includes all the necessary scripts, data, and documentation to reproduce the results.

## Steps
### Clone Repository
```
git clone https://github.com/rhit-villencr/AI-Art-Detection.git
cd AI-Art-Detection
```

### Install Scripts
```
conda install --yes --file requirements.txt
```

### Download Dataset
```
mkdir Datasets
cd Datasets
mkdir Art-Dataset
kaggle datasets download steubk/wikiart
unzip -q wikiart.zip -d Art-Dataset/
rm -rf wikiart.zip
```

### Remove Unecessary Styles
```
cd ..
bash setupDataset.bash
```

### Feature Extraction
```
mkdir Features
open and run ResNetFeatureExtraction.ipynb with data_file = "Art-Dataset"
```

### Train NN
```
open and run GenreNeuralNetwork.ipynb with file_name="256_No_AI_features_resnet.npz"
```

### Run NN on Image
```
```


