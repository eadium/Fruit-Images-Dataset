sudo apt update && sudo apt upgrade -y
sudo apt install -y python3 python3-pip git linux-image-extra-virtual
screen -d git clone https://github.com/eadium/Fruit-Images-Dataset.git


wget http://us.download.nvidia.com/tesla/410.129/NVIDIA-Linux-x86_64-410.129-diagnostic.run
chmod +x NVIDIA-Linux-x86_64-410.129-diagnostic.run
sudo ./NVIDIA-Linux-x86_64-410.129-diagnostic.run

scp rasseki.ru:cudnn-10.0-linux-x64-v7.4.1.5.tgz .
tar -zxvf cudnn-10.0-linux-x64-v7.4.1.5.tgz

sudo mkdir -p /usr/local/cuda-10.0/lib64/ /usr/local/cuda-10.0/include/
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.0/lib64/
sudo cp  cuda/include/cudnn.h /usr/local/cuda-10.0/include/

sudo apt-get install -y libcupti-dev libcudnn7

if [ -d "/usr/local/cuda-10.0/bin/" ]; then
    export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
pip3 install tensorflow-gpu

python3 
from tensorflow.python.client import device_lib
device_lib.list_local_devices()


##################################
wget http://us.download.nvidia.com/tesla/410.129/NVIDIA-Linux-x86_64-410.129-diagnostic.run
chmod +x NVIDIA-Linux-x86_64-410.129-diagnostic.run
sudo ./NVIDIA-Linux-x86_64-410.129-diagnostic.run

scp rasseki.ru:cudnn-10.0-linux-x64-v7.4.1.5.tgz .
tar -zxvf cudnn-10.0-linux-x64-v7.4.1.5.tgz

sudo mkdir -p /usr/local/cuda-10.0/lib64/ /usr/local/cuda-10.0/include/
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.0/lib64/
sudo cp  cuda/include/cudnn.h /usr/local/cuda-10.0/include/

sudo apt-get install libcupti-dev

export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

pip3 install –upgrade tensorflow-gpu
wget http://us.download.nvidia.com/tesla/410.129/NVIDIA-Linux-x86_64-410.129-diagnostic.run
chmod +x NVIDIA-Linux-x86_64-410.129-diagnostic.run
sudo ./NVIDIA-Linux-x86_64-410.129-diagnostic.run

scp rasseki.ru:cudnn-10.0-linux-x64-v7.4.1.5.tgz .
tar -zxvf cudnn-10.0-linux-x64-v7.4.1.5.tgz

sudo mkdir -p /usr/local/cuda-10.0/lib64/ /usr/local/cuda-10.0/include/
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-10.0/lib64/
sudo cp  cuda/include/cudnn.h /usr/local/cuda-10.0/include/

sudo apt-get install libcupti-dev

export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

pip3 install –upgrade tensorflow-gpu

python3 
from tensorflow.python.client import device_lib
device_lib.list_local_devices()


python3 
from tensorflow.python.client import device_lib
device_lib.list_local_devices()


# Add NVIDIA package repositories
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update

# Install NVIDIA driver
sudo apt-get install --no-install-recommends nvidia-driver-435
# Reboot. Check that GPUs are visible using the command: nvidia-smi

# Install development and runtime libraries (~4GB)
sudo apt-get install --no-install-recommends \
    cuda-10-0 \
    libcudnn7=7.6.2.24-1+cuda10.0  \
    libcudnn7-dev=7.6.2.24-1+cuda10.0


# Install TensorRT. Requires that libcudnn7 is installed above.
sudo apt-get install -y --no-install-recommends libnvinfer5=5.1.5-1+cuda10.0 \
    libnvinfer-dev=5.1.5-1+cuda10.0
