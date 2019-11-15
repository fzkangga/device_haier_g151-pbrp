## TWRP device tree for Smartfren Andromax A16C3H (g151)

Add to `.repo/local_manifests/g151.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project name="fzkangga/device_haier_g151-twrp" path="device/haier/g151"  remote="github" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_g151-eng
mka recoveryimage
```
