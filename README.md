# HW4 - Efficient Training and Inference

## Setting up

### AWS
This assignment is best completed on AWS. See our documentation here:
https://cmu.app.box.com/file/1999311311551?s=mhbn89gtmlgqo8eg5qgb35exlds6dslj

### Python environment
1. Install conda by entering these commands into your command line and following the instructions: 
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
```

2. Create conda environment:
   If you run into error like `UnavailableInvalidChannel: HTTP 403 FORBIDDEN for channel <some channel>` on your EC2 instance, you can solve it by running `conda config --remove channels <some channel>`, and make sure you have the default channel by running `conda config --add channels defaults`.
```bash
conda create -n cmu-llms-hw4 python=3.11
conda activate cmu-llms-hw4
conda install pytorch==2.4.1 torchvision==0.19.1 torchaudio==2.4.1 -c pytorch
pip install -r requirements.txt
pip install flash-attn
pip install wandb
pip install matplotlib
pip install seaborn
pip install vllm
pip install -U "huggingface_hub[cli]"
pip install --upgrade accelerate
```
3. Run `wandb login` to finish setting up weights & biases for experiment tracking (you will need to have a [weights & biases account](https://wandb.ai/login)).  

4. Run `huggingface-cli login` to allow downloading and uploading to Huggingface hub.  

5. Run `./get_initial_model.sh` to download the model starting point.  

## Contents

This repo contains a simple huggingface-based pre-training script, supporting two datasets:

- two splits of wikitext, with 50M tokens each. Both splits are pre-tokenized for your convinience, one set with sequences of 512 tokens, and the other 2048.
- minipile, with 1.4B tokens, pre-tokenized with sequences of 2048 tokens.

## Pre-training

The folder ```scripts``` contains access points to the pre-training code. All scripts under there can be called as follows:

```./scripts/launch_<name>.sh <path_to_config>```, where ```<path_to_config>``` points to a model configuration under ```configs```.

## Pushing your model to HuggingFace Hub

One question asks you to push your model to the huggingface hub. Steps:

1- Create an account. In your account, create a **public** repo for your model. It's handle will be your_username/model_name.  

2- cd to the model directory you want to push   

3- run ```huggingface-cli upload your_username/model_name .```  

## Submission Checklist and Instructions

Run `bash create_submission.sh` then follow the instructions.

Add and finalize all your files in the `submissions/` folder.

Run `bash zip_submission.sh` and upload the relevant zip file to AutoGrader. Your submission folder should look like:

```
submission/
├── configs/
├── model.txt
├── lm_inference.py
└── report.pdf
```
