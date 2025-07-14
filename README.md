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

Notice that until there's a prompt in the cloud, the script will wait (busy wait)

## Cloud side:
1. Enter the production home page - https://portal.ssi-tools.com/login

2. Login with you credentials:
<img width="434" height="676" alt="image" src="https://github.com/user-attachments/assets/6ce61b10-5e48-4147-84b3-08cbc40fa29a" />

3. Enter the edge devices section:
<img width="1353" height="686" alt="image" src="https://github.com/user-attachments/assets/0b2e4b67-6b3c-4ef2-91ae-d48284973448" />

4. Choose your device and add prompts (the RPi script will start showing ):
<img width="1904" height="707" alt="image" src="https://github.com/user-attachments/assets/cd813b42-89cc-4e76-b960-8935cea6c71a" />

5. (features) change threshold:
a. Click on the "pencil":
<img width="531" height="108" alt="image" src="https://github.com/user-attachments/assets/e58abd2d-3113-4f50-b7be-4c37e8a35188" />
b. Change threshold:
<img width="822" height="606" alt="image" src="https://github.com/user-attachments/assets/56a2eaf0-13f2-4024-bfa0-7feefc922843" />

Notice that if you change the threshold, due to some bug in the cloud, if you check again it will look like the threhold wasn't changed BUT IT DID, meaning that the RPi will get the change and chage the threshold accordingly. If you check again for the threhold, after the first time, it will the change would be applied in the front as well.


 
