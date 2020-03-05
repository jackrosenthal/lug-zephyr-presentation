Zephyr OS
=========

:Author: Jack Rosenthal
:Date: 2020-03-05

What is Zephyr?
---------------

.. image:: graphics/zephyr.png
   :width: 130pt

Zephyr OS is a real time operating system kernel designed for
extremely resource-constrained and embedded environments.

* Zephyr is a project of the Linux Foundation, is written in C, and
  uses the Linux Kernel style guide.

* Permissive Apache 2.0 License.

* Wide core and chip support (ARM, x86, ARC, NIOS II, Xtensa, RISC-V).

* Runs in as little as 8K of RAM.

* Your application compiles and integrates with the OS kernel.

Kernel Features
---------------

* **Multi-threading** with a variety of scheduling algorithms.

* Compile-time registration of **interrupt handlers**.

* Optional **memory allocation services** for dynamic allocation.

* **Thread synchronization** APIs and data structures.

* **Power management services** for idling infrastructure.

* **MMU support** when available in hardware.

Thread Scheduling
-----------------

* Choose from cooperative and preemptive multitasking.

* Earliest Deadline First.

* Selectable data structures for queueing.

Networking Stack
----------------

.. image:: graphics/ethernet.jpg
   :width: 100pt

Full featured network stack with support for BSD-style sockets!

.. sourcecode:: c

   #include <net/socket.h>

   void main(void)
   {
           int sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
           ...
   }

Bluetooth Stack
---------------

.. image:: graphics/bluetooth.png
   :width: 90pt

* Bluetooth 5.0 compliant.

* Bluetooth Low Energy support.

* Highly configurable.

Many More Features
------------------

* Programmable debug UART console with tab completion.

* Virtual filesystems, supporting LittleFS and more.

* Can run as a POSIX application for emulation and unit tests.
