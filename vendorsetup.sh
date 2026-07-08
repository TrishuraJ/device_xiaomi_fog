# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone  https://github.com/alternoegraha/vendor_xiaomi_fog  -b baklava-and-beyond vendor/xiaomi/fog

# Clone prebuilt kernel
git clone https://github.com/alternoegraha/device_xiaomi_fog-kernel -b motregen  device/xiaomi/fog-kernel

# Clone LineageOS' hardware/xiaomi
git clone -b lineage-23.2 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

# Clone ViperFX
#git clone https://github.com/elpaablo/packages_apps_ViPER4AndroidFX -b alpha-16.1 packages/apps/ViPER4AndroidFX

#Clone MIUI Camera
#git clone https://gitlab.com/ThankYouMario/proprietary_vendor_xiaomi_camera -b vauxite-sm6225 vendor/xiaomi/camera
