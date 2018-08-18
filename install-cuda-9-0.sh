
#!/bin/bash

# for Ubuntu16.04 64bit

readonly VERSION="9.0.176_384.81"
readonly FILENAME="cuda_${VERSION}_linux-run"
readonly FILEURL="https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/${FILENAME}"

cd $HOME/Downloads
wget $FILEURL -nc
chmod +x $FILENAME
sudo sh $FILENAME

echo "export PATH=/usr/local/cuda/bin:\$PATH" >> $HOME/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:\$LD_LIBRARY_PATH" >> $HOME/.bashrc

echo "/usr/local/cuda/lib64" | sudo tee -a /etc/ld.so.conf.d/cuda.conf > /dev/null
sudo ldconfig
