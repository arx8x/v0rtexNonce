**I've added offsets for all devices and versions. This is experimental and I will be replacing some of them with confirmed ones from previous commits**

# v0rtexNonce

Read or set generator(com.apple.System.boot-nonce variable) using siguza's v0rtex exploit.

The source code has a bunch of offsets. If your device's offsets can't be found in the source code, you maybe able to find them elsewhere. Search/ask /r/jailbreak. If the offsets you found are confirmed to be working, please add them to this project as a pull request.


**Loading Offsets**

Offsets are automatically loaded based on information from offsets.m by device and build id.
Watch xcode's console and it'll show what device the app detects and a test offset(`OFFSET_ROP_ADD_X0_X0_0x10`) to verify if it loads the right offsets.

**Adding offsets**

If you wish to add offsets to this project, please read the note I left in offsets.m. Follow the format.

**Problems**

Keep in mind that this is still experimental. The exploit might take a number of tries to succeed. Just keep trying. At one point, I had to try more than 20 time in a row.

Make sure to have Xcode 9 or higher to compile!


**Example log (success)**

```
  uid isn't 0
  Darwin Kernel Version 16.6.0: Mon Apr 17 17:33:34 PDT 2017; root:xnu-3789.60.24~24/RELEASE_ARM64_S8000
  loading offsets for iPhone8,1 - 14F89
  test offset x0x0x10gadget: fffffff0064b1398
  service: 680b
  client: 690b, (os/kern) successful
  newSurface: (os/kern) successful
  realport: 6a03
  port: 106b03
  mach_port_insert_right: (os/kern) successful
  mach_ports_register: (os/kern) successful
  herp derp
  mach_ports_register: (os/kern) successful
  mach_port_get_context: 0x200001d300000000, (os/kern) successful
  setValue(467): (os/kern) successful
  mach_port_request_notification: 0, (os/kern) successful
  getValue(467): 0x1010 bytes, (os/kern) successful
  realport addr: 0xfffffff0074db1e0
  setValue(467): (os/kern) successful
  itk_space: 0xfffffff0023b7018
  self_task: 0xfffffff006da4aa0
  IOSurfaceRootUserClient port: 0xfffffff0074db480
  IOSurfaceRootUserClient addr: 0xfffffff0056b4e00
  IOSurfaceRootUserClient vtab: 0xfffffff01dc7c9f8
  slide: 0x0000000016e00000
  mach_ports_register: (os/kern) successful
  setValue(467): (os/kern) successful
  kernel_task addr: 0xfffffff0023faa80, success
  kernproc addr: 0xfffffff01e39d448, success
  kern_ucred: 0xfffffff0025edb90, success
  self_proc: 0xfffffff00664e8d0, success
  self_ucred: 0xfffffff004e1b8d0, success
  stole the kernel's cr_label
  uid: 0
  realhost: 6b07 (host: a03)
  zone_map: 0xfffffff11c55de80, success
  kernel_map: 0xfffffff11c55dd60, success
  ipc_space_kernel: 0xfffffff0023b5ef0, success
  zm_range: 0xfffffff002308000-0xfffffff01a308000, success
  zm_port addr: 0xfffffff0075bd7a0
  km_port addr: 0xfffffff0075be6b8
  copyin: success
  mach_ports_lookup: (os/kern) successful
  zone_map port: 6c07
  kernel_map port: 6d07
  mach_ports_register: (os/kern) successful
  mach_vm_remap: (os/kern) successful
  remap_addr: 0xfffffff002002a80
  mach_vm_wire: (os/kern) successful
  newport: 0xfffffff0075bd998
  copyin: success
  kernel_task: 6e07, (os/kern) successful
  mach_ports_register: (os/kern) successful
  copyin: success
  kernel_task: 0x6e07
  Reading kernel header...
  Found __TEXT.__cstring section at 0xfffffff01de1f738
  Found __DATA.__data section at 0xfffffff01e2f4000
  Found string "little-endian?" at 0xfffffff01de5bc7c
  Found gOFVariables at 0xfffffff01e323700
  Successfully patched permissions for variable "com.apple.System.boot-nonce"
  current generator: 0xfeedfacebadf00d0
```
