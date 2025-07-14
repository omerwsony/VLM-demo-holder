# VLM-demo-holder

## RPi side
#### Initial steps:
1. install IMX500 packages: 
```
sudo apt update && sudo apt full-upgrade 
sudo apt install imx500-tools
```
2. (if not done already) Clone picamera git:
```
cd ~/
git clone https://github.com/raspberrypi/picamera2
```
3. Install picamera packges:
```
sudo apt install python3-picamera2 --no-install-recommends
```
4. Install torch:
```
pip install torch --break-system-packages
```
5. Make sure .rpk models are under /usr/share/imx500-models - if not, perform these steps:
```
cd /usr/share
sudo git clone https://github.com/raspberrypi/imx500-models
```
6. Check to see if a simple script works:
```
cd ~/picamera2/examples/imx500/
python3 imx500_object_detection_demo.py
```
7. Create VLM demo folder (if needed):
```
mkdir vlm_demo
```


#### Commands to run demo
1. Clone/update VLM repo git:
```
cd ~/
# If git doesn't exists yet 
git clone https://github.com/omerwsony/VLM-demo-holder/
# if it does exists:
git pull
```

2. Copy .zip file to RPi folder and unzip it in the relevant folder:
```
cd ~//VLM-demo-holder/
cp 10.7.2025_version_vlm_demo.zip ~/picamera2/examples/imx500/vlm_demo/
cd ~/picamera2/examples/imx500/vlm_demo/
unzip 10.7.2025_version_vlm_demo.zip
```

3. Run the demo 
```
python3 yoloe_demo.py
```
