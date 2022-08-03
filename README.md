# Introduction
Have you ever listened to the gentle sound of a cable car rope? These ropes react to wind, thermal forces, earth movements, birds and human activity, acting as resonating bodies that show almost fascinating, often complex and long-lasting progressions.

We have developed a device ('Seilsender', German for "Rope Transmitter") that records these sounds and forwards them to a streaming server. Our goal is to make as many exciting sound sources as possible accessible and publicly available.

Interested? Then join our project. The instructions below describe how you can set up your own 'Seilsender' and contribute to the diverse collection of sounds.

You can find more information at [seilsender.ch](https://www.seilsender.ch/).

<img src="media\SeilbahnMünsterfähre.png" alt="SeilbahnMünsterfähre.png" style="height:170px;" /> <img src="media\SeilbahnStutzObsaum.png" alt="SeilbahnStutzObsaum" style="height:170px;" /> <img src="media\HwOverviewCaseOpen.png" alt="HwOverviewCaseOpen" style="height:170px;" /> 

Pictures: Münsterfähre (cable ferry), Basel, CH / Material ropeway, Stutz-Obsaum, CH / Seilsender Prototype with case open

> ToDo: Introduction überarbeiten / validieren mit M.R.



# Basic Configuration Setup Guide

The basic configuration setup guide describes all steps necessary to start streaming audio with your Raspberry Pi.

Further options like LTE connectivity, more sophisticated audio input with audio hat or flexible power supply with PiJuice are described in the Optional Features section.


## Preparing the Visaton Exciter as a Structure-Borne Noise Sensor

Required parts:

| Quantity | Part                         | Type & Product Link                                          |
| -------- | ---------------------------- | ------------------------------------------------------------ |
| 1        | Structure-Borne noise sensor | Visaton BS 76 8 &#937;, [product link](https://www.reichelt.com/ch/de/koerperschallwandler-bs-76-20-w-8-ohm-vis-bs76-8-p100215.html?&trstct=pos_0&nbc=1) |
| 1        | 3.5mm Mini-Jack Stereo       | NEUTRIK NYS231, [product link](https://www.reichelt.com/ch/de/klinkenstecker-3-5-mm-stereo-3-pol-neutrik-nys231-p131754.html?&trstct=pos_1&nbc=1) |
| 1        | Screw Clamp                  | WOKIN G-Clamp 3", 75 mm, [product link](https://www.reichelt.com/ch/de/g-schraubzwinge-3-75-mm-wokin-106403-p303436.html?&nbc=1) |

<img src="media\VisatonFrontView.png" alt="VisatonFrontView" style="width:400px;float:left" />

Required tools:
- Soldering iron
- Solder
- Opt. wire cutters
- Opt. helping hand
- Opt. wire stripper
- Opt. hot glue gun

Proceed as follows:

- Hot Glue as kink protection  
  Over time, the cables tend to break right where they enter the case, making the structure-borne noise sensor useless as you can’t install new cables. A drop of hot glue can act as a strain relief. Make sure the surface of the structure-borne noise sensor is clean before applying the hot glue. Roughing up the surface with some sandpaper can also increase the adhesion.  
  <img src="media\VisatonRearViewGlueing.png" alt="VisatonRearViewGlueing" style="width:300px;" /> <img src="media\VisatonRearView.png" alt="VisatonRearView" style="width:300px;" />
- Disassemble the plug by unscrewing the back cover.  
  <img src="media\AudioJack.png" alt="AudioJack" style="width:400px;" />

- Use a wire stripper to remove about 5 mm of insulation off the cables. My cables already had the isolation removed but you might need to remove yours.  
  <img src="media\AudioJackWireStripped.png" alt="AudioJackWireStripped" style="width:400px;" />
- Tin the end of the cable    
  Turn on the soldering iron, wait for it to heat up, and set it down on the table without letting the tip touch the table. Hold the cable in one hand and the solder in the other. You can also use a helping hand to keep the cable in place while holding the soldering iron and solder with your hands. Apply a little bit of solder to the soldering iron to improve the thermal contact and set the cable down on top of it. Now touch the solder to the cable until it melts and flows between the strands.  
  <img src="media\AudioJackCableTinning.png" alt="AudioJackCableTinning" style="width:400px;" />

- Trim the now tinned section to about 4 or 5 mm.  
  <img src="media\AudioJackWireCutting.png" alt="AudioJackWireCutting" style="width:400px;" />

- Unroll the cable and make sure there are no knots. Then thread the cable through the back cover and the plastic insulator.
  <img src="media\AudioJackPreparation.png" alt="AudioJackPreparation" style="width:400px;" />

- Apply some solder to the solder tags  
  Hold the plug in place with helping hands or a vice. Then apply some solder to the longest and shortest solder tags (see image). This will make it easier to solder the wires later. Don’t apply the heat for too long or the plastic parts might melt.  
  <img src="media\AudioJackClothespin.png" alt="AudioJackClothespin" style="width:400px;" />

- Solder the cables to the plug  
  The polarity of the structure-borne noise sensor doesn’t matter, but I’m going with convention and treat the black wire as ground. Use the helping hand to position the wire on the longest soldering tab. Then solder the wire to the tab.  
  <img src="media\AudioJackSoldering.png" alt="AudioJackSoldering" style="width:400px;" />

- Repeat for the other wire. You can use any of the two shorter tabs, they are for the left and right channel respectively.
  <img src="media\AudioJackSoldered.png" alt="AudioJackSoldered" style="width:400px;" />

- Use pliers to crimp the parts of the long tab around the black wire.  
  <img src="media\AudioJackStrainRelief.png" alt="AudioJackStrainRelief" style="width:400px;" />

- Pull the plastic insulation over the solder tabs and screw the cover on. The Connector is now done!
  <img src="media\AudioJackInsulation.png" alt="AudioJackInsuliation" style="width:300px;" />  <img src="media\AudioJackAssembled.png" alt="AudioJackAssembled" style="width:300px;" />
- It is important that the structure-borne noise sensor is firmly mounted to the rope way cable. One way to achieve this is to screw the sensor to a screw clamp:  
  <img src="media\VisatonScrewClamp.png" alt="VisatonScrewClamp" style="width:400px;" />

> ToDo (optional): Neues Bild mit oranger Zwinge und gedrucktem Prisma


## Setting up your Raspberry Pi
Required Raspberry PI and accessories:

| Quantity | Part           | Type & Product Link                                          |
| -------- | -------------- | ------------------------------------------------------------ |
| 1        | Raspberry Pi 4 | Min. 1 GB RAM, Starter Kit with Raspberry Pi 4 Model B, Case,  USB-C Power supply (5V, 3A) , min. 16 GB MicroSD Card, [product link](https://www.pi-shop.ch/raspberry-pi-4-starter-kit-pi-4-2gb) |
| 1        | USB Sound Card | UGREEN 30724, [product link](https://www.digitec.ch/de/s1/product/ugreen-external-sound-adapter-30724-usb-2x-35mm-buchse-mobilgeraet-adapter-15664082?supplier=406802) |

Peripherals to setup your Raspberry Pi

- Micro HDMI to Standard HDMI cable (to connect your Raspberry Pi to the monitor), [product link](https://www.pi-shop.ch/micro-hdmi-to-standard-hdmi-a-m-1m-kabel)
- Monitor
- Keyboard
- Mouse
- Internet connection for your Raspberry Pi (Ethernet or Wi-Fi)

Required additional equipment:

- PC with internet connection
- Micro-SD card adapter

### Download the Operating system

- Insert the Micro-SD card in your Micro-SD card adapter and connect it to your PC.
- Login on Windows with admin Credentials ( 'Raspberry Pi Imager' runs best in an account with admin credentials)
- Download 'Raspberry Pi Imager' from here: <https://www.raspberrypi.com/software/>
- Install the downloaded 'Raspberry Pi Imager' and run the 'Raspberry Pi imager'
- Select the Raspberry Pi OS (32 Bit).  
    <img src="media\ScrPiImager.png" alt="ScrPiImager" style="width:400px;" />
- Select the connected Micro-SD card
- Click 'Write' button an confirm overwriting the Micro-SD card (Double-check that you selected the right card as all of it’s contents will be deleted). This can take several minutes.
- When finished, close 'Raspberry Pi Imager' and remove SD-Card.

### Prepare Raspberry Pi Hardware

**Warning:** The Raspberry Pi has an exposed PCB and can be damaged by electrostatic discharge. Always touch one of the connector’s metallic housings before handling the Pi or wear an ESD wristband.

The easiest way to set up the Raspberry Pi is to connect a mouse, keyboard and monitor. If you use a Raspberry Pi 4, you’ll need a micro HDMI to HDMI adapter (cable) to connect the monitor. The Raspberry Pi 2&3 have a full size HDMI connector and don’t require an adapter, just a normal HDMI cable.

- Install the micro-SD card on the slot on the back of your Raspberry Pi  
  <img src="media\RaspiBottomView.png" alt="RaspiBottomView" style="width:400px;" />
- Connect the mouse and keyboard to any USB port on the Raspberry Pi.
- Connect the monitor with the 'Micro HDMI to Standard HDMI cable' to any HDMI port of your Raspberry Pi. 
- For these next steps, the Raspberry Pi needs internet access. If you do not want to use Wi-Fi, connect an ethernet cable to the Raspberry Pi for internet access.
- Plug in the power supply.

### Raspberry Pi Welcome Wizard

- If everything is connected, switch on the Raspberry Pi. After a few seconds, the Welcome Wizard starts. If nothing happens, try to use the other HDMI port of your Raspberry Pi.  
  <img src="media\ScrFirstBootWelcome.png" alt="ScrFirstBootWelcome" style="width:400px;" />

  Click 'Next' to start the wizard. The welcome wizard will guide you through the most important settings of your Raspberry Pi.  Follow the instructions on the Screen.

- 'Set Country' dialog  
  Country and language selection should correspond with your keyboard layout. We recommend ticking checkbox 'Use English language'. A wrong keyboard layout can switch out certain characters.  
  <img src="media\ScrFirstBootCountry.png" alt="ScrFirstBootCountry" style="width:400px;" />
    
- 'Create User' dialog  
  <img src="media\ScrFirstBootCreateUser.png" alt="ScrFirstBootCreateUser" style="width:400px;" />
  - Enter a username  
    The examples in this manual were all carried out with the user 'seilsender'. It may be easiest for you to use the user 'seilsender' as well.
  - Untick the “Hide characters” checkbox to see if your password was entered correctly.  Enter your new password twice and press Enter.
  - **Important:** Remember your Raspberry Pi username a password, you will need them later! Username and password are case sensitive.
- 'Select Wi-Fi Network' dialog: The system searches available Wi-Fi Networks.
- If you want to connect via ethernet cable, press 'Skip', else select the desired Wi-Fi Network, press 'Next and enter your Wi-Fi password.  
   **Note**: At this point, the keyboard layout is not yet set, so entering the password may be a little tricky. Untick 'Hide Characters'.
- The next step is to update the software. This may take a few minutes. Please be patient…
- Click 'Restart' to reboot your Raspberry Pi.
- After restarting the Pi, you should be shown your desktop.  
  <img src="media\ScrRaspiDesktop.png" alt="ScrRaspiDesktop" style="width:700px;" />
- Hint: If you want to start the welcome wizard again, open a console window an enter  
  `sudo piwiz`

### Raspberry Pi Configuration

- Open the Menu in the top let corner and navigate to Preferences -\> Raspberry Pi Configuration.  
  <img src="media\ScrRaspiConfig.png" alt="ScrRaspiConfig" style="width:700px;" />
- 'Interfaces' tab: Turn on SSH (opt.), VNC and I2C  
  <img src="media\ScrRaspiConfigInterface.png" alt="ScrRaspiConfigInterface" style="width:400px;" />
- 'Localisation' tab / Set Keyboard: Check if your keyboard layout is correct (Example for Swiss German Keyboard)  
  <img src="media\ScrRaspiConfigKeyboard.png" alt="ScrRaspiConfigKeyboard" style="width:400px;" />
- 'Display' tab: To configure the display size used later by VNC, select a moderate Headless Resolution (for example 1024 x 768). A higher resolution will later require more bandwidth and computing power. You can also change this value later if you run into any problems.  
  <img src="media\ScrRaspiConfigIDisplay.png" alt="ScrRaspiConfigIDisplay" style="width:400px;" />
- After changing Headless Resolution, you will be asked to reboot, confirm to reboot.

### Set up VNC

VNC is used to remotely manage your Raspberry Pi via internet connection. VNC-Server is already pre-installed on your Raspberry Pi. All you need additionally is a 'Real VNC' account and a 'VNC Viewer' on your PC.

**Create a VNC account if you don't already have one:**

- Start the web browser on your PC an go to <https://manage.realvnc.com/en/> and enter your e-mail address.
- Create a 'VNC connect' account following the instructions (select 'personal use'.)  
  **Important: Remember your 'VNC connect' credentials, you will need them later!**
- Activate 'HOME' edition of VNC Connect  
  <img src="media\ScrVncActivate.png" alt="ScrVncActivate" style="zoom:100%;" />

**Setup VNC on your Raspberry Pi**

- On your Raspberry Pi Desktop, Click the blue VNC logo in the top right corner and Click 'Sign in':  
  <img src="media\ScrVncSignin.png" alt="ScrVncSignin" style="width:400px;" />
- Sign in with your 'VNC connect' credentials and follow the instructions.
- Enter an additional VNC password for this device:  
  <img src="media\ScrVncAuthentication.png" alt="ScrVncAuthentication" style="width:400px;" />
- **Important: Remember your VNC password, you will need it later to access your Raspberry Pi**
- On the summary tab, it is possible to enter an individual name for VNC (makes in easier if you have more than one device within VNC connect)  
  <img src="media\ScrVncSummary.png" alt="ScrVncSummary" style="width:400px;" />
- Click 'Apply' to finish setup
- **Hint**: There is no easy way to log off from VNC Connect. If necessary, open a console Window on your Raspberry pi with clicking the black button in the top left and enter  
  `sudo rm /root/.vnc/config.d/vncserver-x11.d/CloudCredentials.bed`.  
  Afterwards, the 'Sign In' option is available on den VNC main menu.

Install VNC Viewer on your PC:

- Download VNC Viewer using <https://www.realvnc.com/en/connect/download/viewer/> and install it.
- Open VNC Viewer sign with your 'VNC connect' credentials.
- Then select your team, you and double-click on the Raspberry Pi on the right side to connect. You’ll need to enter your VNC-Password you defined during VNC Setup.
- After you are connected, you can now control the Raspberry Pi via Internet an VNC from your PC. You will no longer need dedicated keyboard, mouse and monitor to access your Raspberry Pi.

### Register your Seilsender

To stream your recordings to the Seilsender-Website, you have to apply for an official Streaming-Id (Mountpoint) and a password.

- ...  
**Important:** Keep your Streaming-Id (Mountpoint) and a password in a safe place

> ToDo: Prozess definieren, z.B. Webformular ausfüllen und Zustellung von 

### Set up DarkIce

DarkIce records audio from an audio interface (e.g. sound card), encodes it and sends it to the IceCast streaming server.

- Open a console Window on your Raspberry Pi with clicking the black button in the top left.  
  <img src="media\ScrRaspiDesktopConsole.png" alt="ScrRaspiDesktopConsole" style="zoom:100%;" />
    
- Install DarkIce with the following command:  
  `sudo apt-get install -y darkice`  
  <img src="media\ScrRaspiConsoleInstallDarkice.png" alt="ScrRaspiConsoleInstallDarkice" style="width:700px;" />
    
- DarkIce needs a configuration file containing all necessary settings. Create a subdirectory and change to the new directory:  
  `mkdir darkice`  
  `cd darkice` 
- Then we download the two templates of the config files:  
  `wget https://raw.githubusercontent.com/LarsBachmann/Seilsender/main/darkice/darkice.cfg`  
    presse Enter  
  `wget https://raw.githubusercontent.com/LarsBachmann/Seilsender/main/darkice/launch_darkice.sh`  
    press Enter.
- Type  
  `ls`  
  and press enter, you should only see the two files `darkice.cfg` and `launch_darkice.sh`.  
  <img src="media\ScrDarkiceFiles.png" alt="ScrDarkiceFiles" style="width:400px;" />
- The file launch_darkice.sh is a simple script to launch DarkIce, but it must be made executable first:  
  `sudo chmod 777 launch_darkice.sh`
- If you now type  
  `ls`  
  again, the launch script will now appear in green color, indicating that it is an executable file.  
  <img src="media\ScrDarkiceExecutable.png" alt="ScrDarkiceExecutable" style="width:400px;" />
- Open the DarkIce configuration file with Nano (a command line editor) to set your mountpoint and a password:  
  `nano darkice.cfg`
- Move down with arrow keys (no mouse) to the appropriate section and set your mountpoint and password (red frame). Optionally, you can set the parameters 'name' and 'description' (parameters are shown when life-streaming your recordings with IceCast).  
  <img src="media\ScrDarkiceCfg.png" alt="ScrDarkiceCfg" style="width:700px;" />
- Save configuration file with CTRL+O, then press Enter to confirm filename and exit Nano editor with CTRL+X.
- The configuration of DarkIce is finished. Now test if everything is working:
  - Plug in the USB soundcard to the Raspberry Pi and connect the structure-borne noise sensor to the microphone input (red socket) of the soundcard  
    <img src="media\HwSoundCard.png" alt="HwSoundCard" style="width:300px;" />
  - Type  
    `darkice -c ./darkice.cfg`  
    into the console. DarkIce will start streaming:  
    <img src="media\ScrDarkiceStart.png" alt="ScrDarkiceStart" style="width:700px;" />
  - The warning 'Could not set POSIX real-time scheduling...' can be ignored.
  - Open the URL https://streamout.seilsender.ch/ on your PC and check if your stream is listed:  
      <img src="media\ScrIcecast2Test.png" alt="ScrIcecast2Test" style="width:300px;" />
  - Click the play-icon below your mount point. You should hear the sound your structure-borne noise sensor is recording. Please note that there can be a few seconds of delay.
- To stop streaming with DarkIce, press CTRL+C in the console-window.

### Set up DarkIce to automatically start on boot

To start DarkIce automatically on boot, integrate the script 'launch_darkice.sh' into startup procedure:

- Use the command  
  `pwd`  
  to display the path to the launch_darkice.sh script and copy it by marking it with the mouse, right clicking and selecting "Copy".  
  <img src="media\ScrDarkicepwd.png" alt="ScrDarkicepwd" style="width:400px;" />
- Open the system-wide crontab with Nano editor  
  `sudo nano /etc/crontab`
- Move down with arrow keys (no mouse) to the end of the crontab file
- Add the following line to the file:  
  `@reboot root /bin/sudo -u <USER> <PATH>/launch_darkice.sh`
- Replace `<USER>` with the username you chose and `<PATH>` with the path you just copied by moving the cursor to the correct spot, right clicking and selecting "Paste" (Example: `@reboot root /bin/sudo -u seilsender /home/seilsender/darkice/launch_darkice.sh`).
- Also add the follwing line which will reboot the Raspberry Pi every day at midnight.   
  `0  0    * * *   root    /sbin/shutdown -r now`
- It should look similar to this:  
  <img src="media\SrcCrontab.png" alt="SrcCrontab" style="width:700px;" />
- Save with CTRL+O, then press Enter to confirm filename and exit Nano editor with CTRL+X.
- To test, reboot the Raspberry Pi with typing the command  
  `reboot`  
  or use the Menu (top left corner) > Logout > Reboot.
- DarkIce should start automatically after about a minute. Open the website https://streamout.seilsender.ch/ on your PC to see if your stream shows up.
- If you want to stop darkice manually, open a console and enter `sudo killall darkice`


# Optional Features

> ToDo (optional): Einleitender Text, evtl. Übersicht.

## LTE USB Stick

Required parts:

| Quantity | Part          | Type & Product Link                                          |
| -------- | ------------- | ------------------------------------------------------------ |
| 1        | LTE-Stick     | Huawei E3372h-320, [product link](https://www.reichelt.com/ch/de/surfstick-4g-lte-usb-weiss-huawei-e3372-p155305.html?&trstct=pos_1&nbc=1) |
| 1        | Data SIM card | Region specific, in Switzerland e.g.  'digitec iot Daten Flat, 30 Tage unlimitiert 10 Mbit/s', [product link](https://www.digitec.ch/de/s1/product/digitec-iot-daten-flat-30-tage-unlimitiert-10-mbits-mobile-abo-sim-karte-12307316) |

If there’s no Wi-Fi or Ethernet available, you can use an LTE USB stick to connect to the cellular network. For this guide I used the Huawei LTE-Stick E3372h-320, but other sticks should work about the same.

- Open your LTE-Stick and make your Data SIM card ready and insert it  
  <img src="media\HwLteStickOpen.png" alt="HwLteStickOpen" style="width:400px;" />
- **Important: Make sure that the contacts of your Data SIM card are oriented towards the LTE-Stick**
- Connect the LTE Stick with an USB-Port on your PC.
- Proceed according to the instructions for your LTE-Stick. Typically, a configuration wizard starts automatically. If not, open http://192.168.8.1 in your browser. Follow the instructions in the wizard. Make sure that SIM PIN entry is disabled.
- Disconnect your PC from the internet (Wi-Fi, Ethernet cable) and check if you have internet access via LTE Stick.
- Test with Raspberry Pi
  - Open a console and enter  
    `ip route`.  
    There should be one route listed beginning with 'default via 192.168... ' with 'dev wlan0' (if your Raspberry Pi is connected to the internet via Wi-Fi)
  - Insert your LTE-Stick into any free USB-Port of your Raspberry Pi
  - Reboot (enter in the console `reboot`)
  - After reboot, open console again and enter `ip route`.  Now, there should be two routes beginning with 'default via 192.168... ', one with 'dev wlan0' and an new one with 'dev eth1'.  
    <img src="media\ScrIpRoute.png" alt="ScrIpRoute" style="width:400px;" />

## Weatherproof Case

Required parts:

| Quantity | Part           | Type & Product Link                                          |
| -------- | -------------- | ------------------------------------------------------------ |
| 1        | Cable Gland    | M20x1.5, [product link](https://www.reichelt.com/ch/de/kabelverschraubung-m20-grau-ism71503-p284015.html?&trstct=pos_0&nbc=1) |
| 1        | Seal Insert    | 3D-Print, NinjaFlex TPE, [3D model download link](https://github.com/LarsBachmann/Seilsender/tree/main/3D%20prints), File 'seal_insert.stl' |
| 1        | Sealing Washer | 3D-Print, NinjaFlex TPE, [3D model download link](https://github.com/LarsBachmann/Seilsender/tree/main/3D%20prints), File 'seal_washer.stl' |
| 1        | Universal Case | Hammond 1554TGY, 180/119/89 mm (L x W x H), [product link](https://www.reichelt.com/ch/de/kunststoffgehaeuse-serie-1554-180-x-120-x-90-mm-grau-1554tgy-p221247.html?search=1554TGY&&r=1) |
| 1        | Mounting Frame | 3D-Print, PETG, [3D model download link](https://github.com/LarsBachmann/Seilsender/tree/main/3D%20prints), File 'Mounting plate.stl' |
| 1        | RPI Mounting Kit | Raspberry Pi mounting kit, four M2.5 10-mm spacer bolts, screws and nuts, [product link](https://www.reichelt.com/de/en/raspberry-pi-mounting-kit-10-mm-spacer-bolts-rpi-mountingkit1-p162089.html?&trstct=pos_1&nbc=1) |
| 4 | Screw M3 x 10mm | PAN head screw, M3, 10mm, [product link](https://www.reichelt.com/ch/de/pan-head-schrauben-kreuzschlitz-pzd-m3-10mm-50-stueck-skl-m3x10-50-p65753.html?&trstct=pol_0&nbc=1) |

All 3D-printing files  (STL files) are available for download. If the seal insert needs to be adapted, the Fusion 360 file is also available.

- Both the cable for the USB-C power-supply and the microphone cable with the 3.5mm Mini-Jack need to pass through the cable gland without removing the plugs. To make this possible, we print a halved sealing with a flexible filament (NinjaFlex TPE). We also print the nut to fix the cable gland in the universal case.  
  <img src="media\CableGlandSealsAndNut.png" alt="CableGlandSealsAndNut" style="width:400px;float:left" />  

- Drill a 20 mm hole into the universal case using a peeling drill:  
  <img src="media\CaseDrilling1.png" alt="CaseDrilling1" style="height:170px;" /> <img src="media\CaseDrilling2.png" alt="CaseDrilling2" style="height:170px;" /> <img src="media\CaseDrilling3.png" alt="CaseDrilling3" style="height:170px;" />
  
- Assemble the cable gland with the cables. Guide the cable through the seal and fit the cable gland.  
  <img src="media\CableGlandAssembly.png" alt="CableGlandAssembly" style="width:400px;" /><img src="media\CableGlandAssembled.JPG" alt="CableGlandAssembled.JPG" style="width:400px;" />
  
- To fix the Raspberry Pi in the universal case, we 3D print a mounting frame. Assemble the Raspberry Pi into the case. The following 3D-Model shows you how to:  
  <img src="media\CaseWithRaspiWoPiJuice.png" alt="CaseWithRaspiWoPiJuice" style="width:600px;" />

> ToDo (optional): Schrauben + Abstandhalter beschreiben
>
> ToDo (optional): Haken zum Aufhängen / montieren des Gehäuses anbringen.
>

- Connect all other Equipment into the Case:  
  <img src="media\CaseAssebled.png" alt="CaseAssebled" style="width:400px;" />

## Audio HAT 'IQaudio Codec Zero'

The microphone input of the USB sound card from the basic configuration is not very sensitive, thus recordings of quiet cable car ropes become weak and partly noisy. The audio HAT 'IQaudio Codec Zero' has an input gain of up to 30 dB and is therefore also suitable for weaker microphone signals.

| Quantity | Part               | Type & Product Link                                          |
| -------- | ------------------ | ------------------------------------------------------------ |
| 1        | IQaudio Codec Zero | Audio HAT for Raspberry Pi, DA7212 codec, [product link](https://www.pi-shop.ch/iqaudio-codec-zero) |

- To avoid conflicts, it is recommended to disable the internal sound card of the Raspberry Pi (affects any audio playback).
  - Open the file /boot/config.txt with Nano editor  
    `sudo nano /boot/config.txt`

  - Move down with arrow keys (no mouse) to the entry `dtparam=audio=on`. Set a hash character '#' in front of the line:  
    <img src="media\ScrCodecZeroDtparam.png" alt="ScrCodecZeroDtparam" style="width:400px;" />
  - Save with CTRL+O, then press Enter to confirm filename and exit Nano editor with CTRL+X.
- Shutdown your Raspberry Pi using the command  
  `poweroff`
- Disconnect your Raspberry Pi from any power supply.
- Remove USB-Audio card if connected.
- Mount the HAT 'IQaudio Codec Zero' on the headers of the Raspberry Pi.
- Power on your Raspberry Pi and open a console window.
- List the recording devices to get the correct card-number  
  `arecord -l`  
  <img src="media\ScrCodecZeroArecord.png" alt="ScrCodecZeroArecord" style="width:400px;" />
- Get the preconfigured Alsa settings (mixer controls)  
  `git clone https://github.com/iqaudio/Pi-Codec.git`  
  <img src="media\ScrCodecZeroGitClone.png" alt="ScrCodecZeroGitClone" style="width:400px;" />
- Load the configuration file, replace the number at the end of the command with the card number identified with arecord above  
  `sudo alsactl restore -f Pi-Codec/IQaudIO_Codec_StereoMIC_record_and_HP_playback.state 2`  
  <img src="media\ScrCodecZeroAlsactlRestore.png" alt="ScrCodecZeroAlsactlRestore" style="width:700px;" />
- Start AlsaMixer to configure the audio levels  
  `alsamixer`
- Press F6, select 'IQaudIOCODEC' and press Enter  
  <img src="media\ScrCodecZeroSelectSoundCard.png" alt="ScrCodecZeroSelectSoundCard" style="width:400px;" />
- Press F4 for capture settings, move with the cursor to 'Mic 2' and then set the level with Up key to the max  
  <img src="media\ScrCodecZeroSelectMicLevel.png" alt="ScrCodecZeroSelectMicLevel" style="width:400px;" />
- The record level can be adjusted anytime with alsamixer.
- If F5 is pressed, almost all codec parameters can be adjusted (see codec data sheet, [link](https://www.renesas.com/eu/en/products/analog-products/audio-video/audio-codecs/da7212-ultra-low-power-stereo-codec-650-w-always-power-mode)).
- Quit AlsaMixer with ESC key and  
  `reboot`
- Test: DarkIce runs now with the Audio HAT 'IQaudio Codec Zero' with internal microphone. Open the URL https://streamout.seilsender.ch/ on your PC and check if your stream is listed and playing.  
  Connect your structure-borne noise sensor with the 3.5mm jack, the mic source will switch automatically.  
- **Important**: Depending on the place of use, the input sensitivity of the microphone input must be adjusted. To display the level of the stream, for example, go to the website https://p-node.org/vumeter/ and enter the URL of your stream.  
  <img src="media\ScrCodecZeroVuMeter.png" alt="ScrCodecZeroVuMeter" style="width:700px;" />
- The level display shows 0dB at maximum level (full scale). Ideally, the recording level should be as high as possible, but should never reach 0dB, otherwise strong signal distortions will occur (clipping).

## PiJuice HAT

The PiJuice HAT is a very helpful add-on if you want to use your Raspberry Pi in an environment without a reliable power grid available. 

The built-in battery can, for example, bridge power failures and, in the event of longer power failures, the Raspberry pi can shut down properly and restart later when the power supply is restored.

Required parts:

| Quantity | Part                   | Type & Product Link                                          |
| -------- | ---------------------- | ------------------------------------------------------------ |
| 1        | Power Management Board | PiJuice HAT, includes 4x Mounting posts attached to PiJuice, 8x mounting screws (4 are already assembled to the board), [product link](https://www.distrelec.ch/de/pijuice-ups-hat-fuer-raspberry-pi-pi-supply-pis-0212/p/30163344) |

### Assembly

<img src="media\HwPiJuiceParts.png" alt="HwPiJuiceParts" style="width:400px;" /> <img src="media\HwPiJuiceStack.png" alt="HwPiJuiceStack" style="width:400px;" /> 

### Software Installation

- Open a terminal window and type:  
  `sudo apt-get install -y pijuice-gui`
- Restart your Raspberry Pi using the command  
  `reboot`

### **Setting the System Clock & RTC**

With PiJuice, the Raspberry Pi can be shut down and started up again in a time-controlled manner. If this function is to be used, the real-time clock (RTC) must be set.

- If you have an internet connection, system time will automatically be synched after boot and this will also sync with the RTC time.
- Check whether the system time has been set correctly:
  - Shutdown Raspberry Pi, disconnect battery on PiJuice and wait one minute.
  - Reconnect battery and start Raspberry Pi
  - To get time status, type  
    `timedatectl status`  
    and check if universal time and RTC time match.

> ToDo (optional): Screenshot von Seilsender mit allen drei Zeiten einfügen

- After a restart, the system time must be automatically fetched from the RTC.  Configuration:
  - Open the auto-start scrip rc.local with the Nano editor:  
    `sudo nano /etc/rc.local`
  - Move down with arrow keys (no mouse) to the end of the file.
  - Add the following line to the file:  
    `sudo hwclock -s`  
     It should look like this:  
    <img src="media\ScrPiJuiceHwclock.png" alt="ScrPiJuiceHwclock" style="width:400px;" />
  - Save with CTRL+O, then press Enter to confirm filename and exit Nano editor with CTRL+X.

### Configuration

The most important settings are described below. Detailed information about the configuration of the PiJuice HAT can be found on PiJuice GitHub ([Link](https://github.com/PiSupply/PiJuice/tree/master/Software#pijuice-rtc)).

- Open the PiJuice configuration menu with clicking on the PiJuice Icon, then click on 'Configure HAT':  
  <img src="media\ScrPiJuiceSettingsHat.png" alt="ScrPiJuiceSettingsHat" style="width:400px;" />
- To configure the buttons on PiJuce, set the options in the button tab as follows:  
  <img src="media\ScrPiJuiceSettingsHatConfigButtons.png" alt="ScrPiJuiceSettingsHatConfigButtons" style="width:400px;" /> 
- The hardware watchdog allows the system to restart automatically if no heart beat is detected. In the tab 'System Task', set time to 5 minutes:  
  <img src="media\ScrPiJuiceSettingsHatSystemTask.png" alt="ScrPiJuiceSettingsHatSystemTask" style="width:400px;" />  
-  **Note**: At shutdown pijuice_sys.py disables the watchdog. Normally the watchdog is only active when the PiJuice service (pijuice_sys.py) is running and the watchdog is enabled. If you want the system to restart automatically after an (accidental) shutdown, you must comment out the deactivation of the watchdog during shutdown in pijuice_sys.py ([Link](https://github.com/PiSupply/PiJuice/issues/492)). 
- Stop system if charge level is below 'Minimum charge:  
  <img src="media\ScrPiJuiceSettingsHatSystemEvents.png" alt="ScrPiJuiceSettingsHatSystemEvents" style="width:400px;" />
- Press 'Apply' and enter  
  `reboot`
- PiJuice is now ready to use.

## Solar Power Supply

Coming Soon...

> ToDo: Setup beschreiben

Required parts:

| Quantity | Part                   | Type & Product Link                                          |
| -------- | ---------------------- | ------------------------------------------------------------ |
| 1        | Power Management Board | PiJuice HAT, includes 4x Mounting posts attached to PiJuice, 8x mounting screws (4 are already assembled to the board), [product link](https://www.distrelec.ch/de/pijuice-ups-hat-fuer-raspberry-pi-pi-supply-pis-0212/p/30163344) |
|          |                        |                                                              |

