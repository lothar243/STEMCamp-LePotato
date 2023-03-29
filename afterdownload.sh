echo "Setting up ciphor.py to be executed from anywhere"
sudo cp ciphor.py /usr/bin
echo "Setting up rsaHex.py to be executed from anywhere"
sudo chmod +x /usr/bin/ciphor.py
sudo cp rsaHex.py /usr/bin
sudo chmod +x /usr/bin/rsaHex.py
echo "Adding the STEM camp directory to PYTHONPATH, so that certain libraries can be imported from anywhere
echo "export PYTHONPATH=\"${PYTHONPATH}:$(pwd)\"" >> ~/.bashrc

#echo "Enabling ssh"
#sudo systemctl enable ssh
#sudo systemctl start ssh

echo "Enabling SPI and I2C"
#sudo crontab -l > mycron
echo "@reboot ldto enable i2c-ao" > mycron
#echo "@reboot ldto enable spi###"
sudo crontab mycron
sudo rm mycron

#sudo sed -i "/dtparam=spi=on/s/^#//g" /boot/config.txt
#sudo sed -i "/dtparam=i2c_arm=on/s/^#//g" /boot/config.txt

sudo apt update
sudo apt install -y snapd
sudo snap install core
sudo snap install john-the-ripper
#pip3 install mfrc522

sudo apt install python3-pip
pip3 install smbus
