Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C5622B6E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 21:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96C5A20397;
	Thu, 23 Jul 2020 19:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORjoyxAxH7qt; Thu, 23 Jul 2020 19:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 13A9221F6F;
	Thu, 23 Jul 2020 19:41:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ABE3A1BF275
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 19:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96A6520397
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 19:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5qn5LhbJw2Y9 for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 19:41:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by silver.osuosl.org (Postfix) with ESMTPS id A4A3320131
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 19:41:04 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 7C7EBBC284;
 Thu, 23 Jul 2020 19:40:59 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, viro@zeniv.linux.org.uk,
 xiyuyang19@fudan.edu.cn, akpm@linux-foundation.org,
 daniel.m.jordan@oracle.com, tanxin.ctf@gmail.com, walken@google.com,
 nishkadg.linux@gmail.com, mh12gx2825@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: Replace HTTP links with HTTPS ones
Date: Thu, 23 Jul 2020 21:40:53 +0200
Message-Id: <20200723194053.72227-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely
 or at least not (just) HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 drivers/staging/comedi/comedi_fops.c                  | 2 +-
 drivers/staging/comedi/comedi_pci.c                   | 2 +-
 drivers/staging/comedi/comedi_pcmcia.c                | 2 +-
 drivers/staging/comedi/comedi_usb.c                   | 2 +-
 drivers/staging/comedi/drivers/8255.c                 | 2 +-
 drivers/staging/comedi/drivers/8255_pci.c             | 2 +-
 drivers/staging/comedi/drivers/adq12b.c               | 2 +-
 drivers/staging/comedi/drivers/aio_aio12_8.c          | 2 +-
 drivers/staging/comedi/drivers/aio_iiro_16.c          | 2 +-
 drivers/staging/comedi/drivers/c6xdigio.c             | 2 +-
 drivers/staging/comedi/drivers/comedi_8255.c          | 2 +-
 drivers/staging/comedi/drivers/comedi_parport.c       | 2 +-
 drivers/staging/comedi/drivers/comedi_test.c          | 2 +-
 drivers/staging/comedi/drivers/contec_pci_dio.c       | 2 +-
 drivers/staging/comedi/drivers/daqboard2000.c         | 4 ++--
 drivers/staging/comedi/drivers/dmm32at.c              | 2 +-
 drivers/staging/comedi/drivers/fl512.c                | 2 +-
 drivers/staging/comedi/drivers/gsc_hpdi.c             | 2 +-
 drivers/staging/comedi/drivers/icp_multi.c            | 2 +-
 drivers/staging/comedi/drivers/ii_pci20kc.c           | 2 +-
 drivers/staging/comedi/drivers/jr3_pci.c              | 4 ++--
 drivers/staging/comedi/drivers/ke_counter.c           | 2 +-
 drivers/staging/comedi/drivers/me4000.c               | 4 ++--
 drivers/staging/comedi/drivers/me_daq.c               | 2 +-
 drivers/staging/comedi/drivers/mite.c                 | 2 +-
 drivers/staging/comedi/drivers/mpc624.c               | 2 +-
 drivers/staging/comedi/drivers/multiq3.c              | 2 +-
 drivers/staging/comedi/drivers/plx9052.h              | 2 +-
 drivers/staging/comedi/drivers/quatech_daqp_cs.c      | 2 +-
 drivers/staging/comedi/drivers/rtd520.c               | 2 +-
 drivers/staging/comedi/drivers/rti800.c               | 2 +-
 drivers/staging/comedi/drivers/rti802.c               | 2 +-
 drivers/staging/comedi/drivers/s526.c                 | 2 +-
 drivers/staging/comedi/drivers/ssv_dnp.c              | 2 +-
 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 2 +-
 35 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index e85a99b68f31..4f96e3c9a228 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -3426,6 +3426,6 @@ static void __exit comedi_cleanup(void)
 }
 module_exit(comedi_cleanup);
 
-MODULE_AUTHOR("http://www.comedi.org");
+MODULE_AUTHOR("https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi core module");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/comedi_pci.c b/drivers/staging/comedi/comedi_pci.c
index 126048b03f43..54739af7eb71 100644
--- a/drivers/staging/comedi/comedi_pci.c
+++ b/drivers/staging/comedi/comedi_pci.c
@@ -223,6 +223,6 @@ static void __exit comedi_pci_exit(void)
 }
 module_exit(comedi_pci_exit);
 
-MODULE_AUTHOR("http://www.comedi.org");
+MODULE_AUTHOR("https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi PCI interface module");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/comedi_pcmcia.c b/drivers/staging/comedi/comedi_pcmcia.c
index e16f35eae343..bb273bb202e6 100644
--- a/drivers/staging/comedi/comedi_pcmcia.c
+++ b/drivers/staging/comedi/comedi_pcmcia.c
@@ -204,6 +204,6 @@ static void __exit comedi_pcmcia_exit(void)
 }
 module_exit(comedi_pcmcia_exit);
 
-MODULE_AUTHOR("http://www.comedi.org");
+MODULE_AUTHOR("https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi PCMCIA interface module");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/comedi_usb.c b/drivers/staging/comedi/comedi_usb.c
index c632c2bae722..eea8ebf32ed0 100644
--- a/drivers/staging/comedi/comedi_usb.c
+++ b/drivers/staging/comedi/comedi_usb.c
@@ -146,6 +146,6 @@ static void __exit comedi_usb_exit(void)
 }
 module_exit(comedi_usb_exit);
 
-MODULE_AUTHOR("http://www.comedi.org");
+MODULE_AUTHOR("https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi USB interface module");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/8255.c b/drivers/staging/comedi/drivers/8255.c
index 3d6105b5a11b..e23335c75867 100644
--- a/drivers/staging/comedi/drivers/8255.c
+++ b/drivers/staging/comedi/drivers/8255.c
@@ -120,6 +120,6 @@ static struct comedi_driver dev_8255_driver = {
 };
 module_comedi_driver(dev_8255_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for standalone 8255 devices");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/8255_pci.c b/drivers/staging/comedi/drivers/8255_pci.c
index 9ed05f962fdb..5a810f0e532a 100644
--- a/drivers/staging/comedi/drivers/8255_pci.c
+++ b/drivers/staging/comedi/drivers/8255_pci.c
@@ -291,5 +291,5 @@ static struct pci_driver pci_8255_pci_driver = {
 module_comedi_pci_driver(pci_8255_driver, pci_8255_pci_driver);
 
 MODULE_DESCRIPTION("COMEDI - Generic PCI based 8255 Digital I/O boards");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/adq12b.c b/drivers/staging/comedi/drivers/adq12b.c
index 5d431573bcca..d719f76709ef 100644
--- a/drivers/staging/comedi/drivers/adq12b.c
+++ b/drivers/staging/comedi/drivers/adq12b.c
@@ -238,6 +238,6 @@ static struct comedi_driver adq12b_driver = {
 };
 module_comedi_driver(adq12b_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/aio_aio12_8.c b/drivers/staging/comedi/drivers/aio_aio12_8.c
index f4beda1ed640..4829115921a3 100644
--- a/drivers/staging/comedi/drivers/aio_aio12_8.c
+++ b/drivers/staging/comedi/drivers/aio_aio12_8.c
@@ -272,6 +272,6 @@ static struct comedi_driver aio_aio12_8_driver = {
 };
 module_comedi_driver(aio_aio12_8_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Access I/O AIO12-8 Analog I/O Board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/aio_iiro_16.c b/drivers/staging/comedi/drivers/aio_iiro_16.c
index 41c9c56816ef..fe3876235075 100644
--- a/drivers/staging/comedi/drivers/aio_iiro_16.c
+++ b/drivers/staging/comedi/drivers/aio_iiro_16.c
@@ -230,6 +230,6 @@ static struct comedi_driver aio_iiro_16_driver = {
 };
 module_comedi_driver(aio_iiro_16_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Access I/O Products 104-IIRO-16 board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/c6xdigio.c b/drivers/staging/comedi/drivers/c6xdigio.c
index 41cc784320a9..786fd15698df 100644
--- a/drivers/staging/comedi/drivers/c6xdigio.c
+++ b/drivers/staging/comedi/drivers/c6xdigio.c
@@ -293,6 +293,6 @@ static struct comedi_driver c6xdigio_driver = {
 };
 module_comedi_driver(c6xdigio_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for the C6x_DIGIO DSP daughter card");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/comedi_8255.c b/drivers/staging/comedi/drivers/comedi_8255.c
index 62baa0d79302..3298725b9ba5 100644
--- a/drivers/staging/comedi/drivers/comedi_8255.c
+++ b/drivers/staging/comedi/drivers/comedi_8255.c
@@ -271,6 +271,6 @@ static void __exit comedi_8255_module_exit(void)
 }
 module_exit(comedi_8255_module_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi: Generic 8255 digital I/O support");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/comedi_parport.c b/drivers/staging/comedi/drivers/comedi_parport.c
index efaa57372aeb..9361b2dcf949 100644
--- a/drivers/staging/comedi/drivers/comedi_parport.c
+++ b/drivers/staging/comedi/drivers/comedi_parport.c
@@ -300,6 +300,6 @@ static struct comedi_driver parport_driver = {
 };
 module_comedi_driver(parport_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi: Standard parallel port driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/comedi_test.c b/drivers/staging/comedi/drivers/comedi_test.c
index ef4c7c8a2b71..cbc225eb1991 100644
--- a/drivers/staging/comedi/drivers/comedi_test.c
+++ b/drivers/staging/comedi/drivers/comedi_test.c
@@ -844,6 +844,6 @@ static void __exit comedi_test_exit(void)
 }
 module_exit(comedi_test_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/contec_pci_dio.c b/drivers/staging/comedi/drivers/contec_pci_dio.c
index 49be795b4971..b8fdd9c1f166 100644
--- a/drivers/staging/comedi/drivers/contec_pci_dio.c
+++ b/drivers/staging/comedi/drivers/contec_pci_dio.c
@@ -112,6 +112,6 @@ static struct pci_driver contec_pci_dio_pci_driver = {
 };
 module_comedi_pci_driver(contec_pci_dio_driver, contec_pci_dio_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/daqboard2000.c b/drivers/staging/comedi/drivers/daqboard2000.c
index 28603dfadce2..f64e747078bd 100644
--- a/drivers/staging/comedi/drivers/daqboard2000.c
+++ b/drivers/staging/comedi/drivers/daqboard2000.c
@@ -18,7 +18,7 @@
  * the source code for the Windows driver.
  *
  * The FPGA on the board requires firmware, which is available from
- * http://www.comedi.org in the comedi_nonfree_firmware tarball.
+ * https://www.comedi.org in the comedi_nonfree_firmware tarball.
  *
  * Configuration options: not applicable, uses PCI auto config
  */
@@ -781,7 +781,7 @@ static struct pci_driver db2k_pci_driver = {
 };
 module_comedi_pci_driver(db2k_driver, db2k_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE(DB2K_FIRMWARE);
diff --git a/drivers/staging/comedi/drivers/dmm32at.c b/drivers/staging/comedi/drivers/dmm32at.c
index 75693cdde313..17e6018918bb 100644
--- a/drivers/staging/comedi/drivers/dmm32at.c
+++ b/drivers/staging/comedi/drivers/dmm32at.c
@@ -611,6 +611,6 @@ static struct comedi_driver dmm32at_driver = {
 };
 module_comedi_driver(dmm32at_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi: Diamond Systems Diamond-MM-32-AT");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/fl512.c b/drivers/staging/comedi/drivers/fl512.c
index 41c50c7a8f59..b715f30659fa 100644
--- a/drivers/staging/comedi/drivers/fl512.c
+++ b/drivers/staging/comedi/drivers/fl512.c
@@ -138,6 +138,6 @@ static struct comedi_driver fl512_driver = {
 };
 module_comedi_driver(fl512_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/gsc_hpdi.c b/drivers/staging/comedi/drivers/gsc_hpdi.c
index dc62db1ee1dd..e35e4a743714 100644
--- a/drivers/staging/comedi/drivers/gsc_hpdi.c
+++ b/drivers/staging/comedi/drivers/gsc_hpdi.c
@@ -718,6 +718,6 @@ static struct pci_driver gsc_hpdi_pci_driver = {
 };
 module_comedi_pci_driver(gsc_hpdi_driver, gsc_hpdi_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for General Standards PCI-HPDI32/PMC-HPDI32");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/icp_multi.c b/drivers/staging/comedi/drivers/icp_multi.c
index b14aaed6b525..16d2b78de83c 100644
--- a/drivers/staging/comedi/drivers/icp_multi.c
+++ b/drivers/staging/comedi/drivers/icp_multi.c
@@ -331,6 +331,6 @@ static struct pci_driver icp_multi_pci_driver = {
 };
 module_comedi_pci_driver(icp_multi_driver, icp_multi_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Inova ICP_MULTI board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ii_pci20kc.c b/drivers/staging/comedi/drivers/ii_pci20kc.c
index 3eaf7c59de75..399255dbe388 100644
--- a/drivers/staging/comedi/drivers/ii_pci20kc.c
+++ b/drivers/staging/comedi/drivers/ii_pci20kc.c
@@ -519,6 +519,6 @@ static struct comedi_driver ii20k_driver = {
 };
 module_comedi_driver(ii20k_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Intelligent Instruments PCI-20001C");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
index c3c88e6d298f..7a02c4fa3cda 100644
--- a/drivers/staging/comedi/drivers/jr3_pci.c
+++ b/drivers/staging/comedi/drivers/jr3_pci.c
@@ -24,7 +24,7 @@
  * The DSP on the board requires initialization code, which can be
  * loaded by placing it in /lib/firmware/comedi.  The initialization
  * code should be somewhere on the media you got with your card.  One
- * version is available from http://www.comedi.org in the
+ * version is available from https://www.comedi.org in the
  * comedi_nonfree_firmware tarball.  The file is called "jr3pci.idm".
  */
 
@@ -810,7 +810,7 @@ static struct pci_driver jr3_pci_pci_driver = {
 };
 module_comedi_pci_driver(jr3_pci_driver, jr3_pci_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for JR3/PCI force sensor board");
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE("comedi/jr3pci.idm");
diff --git a/drivers/staging/comedi/drivers/ke_counter.c b/drivers/staging/comedi/drivers/ke_counter.c
index e612cf605700..bef1b20c1c8d 100644
--- a/drivers/staging/comedi/drivers/ke_counter.c
+++ b/drivers/staging/comedi/drivers/ke_counter.c
@@ -227,6 +227,6 @@ static struct pci_driver ke_counter_pci_driver = {
 };
 module_comedi_pci_driver(ke_counter_driver, ke_counter_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Kolter Electronic Counter Card");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/me4000.c b/drivers/staging/comedi/drivers/me4000.c
index ee53571a8969..726e40dc17b6 100644
--- a/drivers/staging/comedi/drivers/me4000.c
+++ b/drivers/staging/comedi/drivers/me4000.c
@@ -26,7 +26,7 @@
  *
  * The firmware required by these boards is available in the
  * comedi_nonfree_firmware tarball available from
- * http://www.comedi.org.
+ * https://www.comedi.org.
  */
 
 #include <linux/module.h>
@@ -1272,7 +1272,7 @@ static struct pci_driver me4000_pci_driver = {
 };
 module_comedi_pci_driver(me4000_driver, me4000_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Meilhaus ME-4000 series boards");
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE(ME4000_FIRMWARE);
diff --git a/drivers/staging/comedi/drivers/me_daq.c b/drivers/staging/comedi/drivers/me_daq.c
index 169742be17b8..ef18e387471b 100644
--- a/drivers/staging/comedi/drivers/me_daq.c
+++ b/drivers/staging/comedi/drivers/me_daq.c
@@ -550,7 +550,7 @@ static struct pci_driver me_daq_pci_driver = {
 };
 module_comedi_pci_driver(me_daq_driver, me_daq_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE(ME2600_FIRMWARE);
diff --git a/drivers/staging/comedi/drivers/mite.c b/drivers/staging/comedi/drivers/mite.c
index cc9fc263573e..70960e3ba878 100644
--- a/drivers/staging/comedi/drivers/mite.c
+++ b/drivers/staging/comedi/drivers/mite.c
@@ -933,6 +933,6 @@ static void __exit mite_module_exit(void)
 }
 module_exit(mite_module_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi helper for NI Mite PCI interface chip");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/mpc624.c b/drivers/staging/comedi/drivers/mpc624.c
index bf3a3a08c7ab..646f4c086204 100644
--- a/drivers/staging/comedi/drivers/mpc624.c
+++ b/drivers/staging/comedi/drivers/mpc624.c
@@ -306,6 +306,6 @@ static struct comedi_driver mpc624_driver = {
 };
 module_comedi_driver(mpc624_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Micro/sys MPC-624 PC/104 board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/multiq3.c b/drivers/staging/comedi/drivers/multiq3.c
index c85c9ab3655f..c1897aee9a9a 100644
--- a/drivers/staging/comedi/drivers/multiq3.c
+++ b/drivers/staging/comedi/drivers/multiq3.c
@@ -327,6 +327,6 @@ static struct comedi_driver multiq3_driver = {
 };
 module_comedi_driver(multiq3_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Quanser Consulting MultiQ-3 board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/plx9052.h b/drivers/staging/comedi/drivers/plx9052.h
index 8ec5a5f2837d..e68a7afef025 100644
--- a/drivers/staging/comedi/drivers/plx9052.h
+++ b/drivers/staging/comedi/drivers/plx9052.h
@@ -2,7 +2,7 @@
 /*
  * Definitions for the PLX-9052 PCI interface chip
  *
- * Copyright (C) 2002 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
index 6daaacf7a26a..1b1efa4d31f6 100644
--- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
+++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
@@ -7,7 +7,7 @@
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998 David A. Schleef <ds@schleef.org>
- * http://www.comedi.org/
+ * https://www.comedi.org/
  *
  * Documentation for the DAQP PCMCIA cards can be found on Quatech's site:
  *	ftp://ftp.quatech.com/Manuals/daqp-208.pdf
diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index 8c04af09be2c..2d99a648b054 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -1360,6 +1360,6 @@ static struct pci_driver rtd520_pci_driver = {
 };
 module_comedi_pci_driver(rtd520_driver, rtd520_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/rti800.c b/drivers/staging/comedi/drivers/rti800.c
index f7c320c89ee6..327fd93b8b12 100644
--- a/drivers/staging/comedi/drivers/rti800.c
+++ b/drivers/staging/comedi/drivers/rti800.c
@@ -353,5 +353,5 @@ static struct comedi_driver rti800_driver = {
 module_comedi_driver(rti800_driver);
 
 MODULE_DESCRIPTION("Comedi: RTI-800 Multifunction Analog/Digital board");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/rti802.c b/drivers/staging/comedi/drivers/rti802.c
index c6cf92bfff73..195e2b1ac4c1 100644
--- a/drivers/staging/comedi/drivers/rti802.c
+++ b/drivers/staging/comedi/drivers/rti802.c
@@ -115,6 +115,6 @@ static struct comedi_driver rti802_driver = {
 };
 module_comedi_driver(rti802_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Analog Devices RTI-802 board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/s526.c b/drivers/staging/comedi/drivers/s526.c
index 5d567ae78f28..ba485f106c1e 100644
--- a/drivers/staging/comedi/drivers/s526.c
+++ b/drivers/staging/comedi/drivers/s526.c
@@ -624,6 +624,6 @@ static struct comedi_driver s526_driver = {
 };
 module_comedi_driver(s526_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ssv_dnp.c b/drivers/staging/comedi/drivers/ssv_dnp.c
index 0628060e42ca..016d315aa584 100644
--- a/drivers/staging/comedi/drivers/ssv_dnp.c
+++ b/drivers/staging/comedi/drivers/ssv_dnp.c
@@ -175,6 +175,6 @@ static struct comedi_driver dnp_driver = {
 };
 module_comedi_driver(dnp_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index f809051820ac..eaefaf596a37 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -607,7 +607,7 @@ static void __exit ni_routes_unittest_exit(void) { }
 module_init(ni_routes_unittest);
 module_exit(ni_routes_unittest_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi unit-tests for ni_routes module");
 MODULE_LICENSE("GPL");
 /* **** END simple module entry/exit functions **** */
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
