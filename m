Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 436AF2288FB
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 21:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F182F2278C;
	Tue, 21 Jul 2020 19:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lnyUK+wiTk-5; Tue, 21 Jul 2020 19:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1643E22735;
	Tue, 21 Jul 2020 19:17:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8487C1BF2BA
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 19:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77DE284FB0
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 19:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 14q71cmSTGOg for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 19:17:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A67B884F2A
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 19:17:39 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 35E0FBC1AB;
 Tue, 21 Jul 2020 19:17:36 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, mh12gx2825@gmail.com, ejyu99@gmail.com,
 yuehaibing@huawei.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: ni: Replace HTTP links with HTTPS ones
Date: Tue, 21 Jul 2020 21:17:29 +0200
Message-Id: <20200721191729.67847-1-grandmaster@al2klimov.de>
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

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

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


 drivers/staging/comedi/drivers/ni_6527.c         | 2 +-
 drivers/staging/comedi/drivers/ni_65xx.c         | 2 +-
 drivers/staging/comedi/drivers/ni_660x.c         | 2 +-
 drivers/staging/comedi/drivers/ni_670x.c         | 2 +-
 drivers/staging/comedi/drivers/ni_at_a2150.c     | 2 +-
 drivers/staging/comedi/drivers/ni_at_ao.c        | 2 +-
 drivers/staging/comedi/drivers/ni_atmio.c        | 2 +-
 drivers/staging/comedi/drivers/ni_atmio16d.c     | 2 +-
 drivers/staging/comedi/drivers/ni_daq_700.c      | 4 ++--
 drivers/staging/comedi/drivers/ni_labpc.c        | 4 ++--
 drivers/staging/comedi/drivers/ni_labpc_common.c | 2 +-
 drivers/staging/comedi/drivers/ni_labpc_isadma.c | 2 +-
 drivers/staging/comedi/drivers/ni_labpc_pci.c    | 2 +-
 drivers/staging/comedi/drivers/ni_pcidio.c       | 4 ++--
 drivers/staging/comedi/drivers/ni_pcimio.c       | 2 +-
 drivers/staging/comedi/drivers/ni_routes.c       | 2 +-
 drivers/staging/comedi/drivers/ni_usb6501.c      | 2 +-
 17 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_6527.c b/drivers/staging/comedi/drivers/ni_6527.c
index 4d1eccb5041d..ba7f40b46c3a 100644
--- a/drivers/staging/comedi/drivers/ni_6527.c
+++ b/drivers/staging/comedi/drivers/ni_6527.c
@@ -486,6 +486,6 @@ static struct pci_driver ni6527_pci_driver = {
 };
 module_comedi_pci_driver(ni6527_driver, ni6527_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for National Instruments PCI-6527");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_65xx.c b/drivers/staging/comedi/drivers/ni_65xx.c
index 996074e471d3..eb3f9f7109da 100644
--- a/drivers/staging/comedi/drivers/ni_65xx.c
+++ b/drivers/staging/comedi/drivers/ni_65xx.c
@@ -817,6 +817,6 @@ static struct pci_driver ni_65xx_pci_driver = {
 };
 module_comedi_pci_driver(ni_65xx_driver, ni_65xx_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for NI PCI-65xx static dio boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_660x.c b/drivers/staging/comedi/drivers/ni_660x.c
index 75d5c9c24596..e60d0125bcb2 100644
--- a/drivers/staging/comedi/drivers/ni_660x.c
+++ b/drivers/staging/comedi/drivers/ni_660x.c
@@ -1250,6 +1250,6 @@ static struct pci_driver ni_660x_pci_driver = {
 };
 module_comedi_pci_driver(ni_660x_driver, ni_660x_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for NI 660x counter/timer boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_670x.c b/drivers/staging/comedi/drivers/ni_670x.c
index 4e4ae31c8d0b..c197e47486be 100644
--- a/drivers/staging/comedi/drivers/ni_670x.c
+++ b/drivers/staging/comedi/drivers/ni_670x.c
@@ -277,6 +277,6 @@ static struct pci_driver ni_670x_pci_driver = {
 };
 module_comedi_pci_driver(ni_670x_driver, ni_670x_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_at_a2150.c b/drivers/staging/comedi/drivers/ni_at_a2150.c
index 76e8d047f71e..10ad7b88713e 100644
--- a/drivers/staging/comedi/drivers/ni_at_a2150.c
+++ b/drivers/staging/comedi/drivers/ni_at_a2150.c
@@ -777,6 +777,6 @@ static struct comedi_driver ni_at_a2150_driver = {
 };
 module_comedi_driver(ni_at_a2150_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_at_ao.c b/drivers/staging/comedi/drivers/ni_at_ao.c
index 814895d01ffa..2a0fb4d460db 100644
--- a/drivers/staging/comedi/drivers/ni_at_ao.c
+++ b/drivers/staging/comedi/drivers/ni_at_ao.c
@@ -369,6 +369,6 @@ static struct comedi_driver ni_at_ao_driver = {
 };
 module_comedi_driver(ni_at_ao_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for NI AT-AO-6/10 boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_atmio.c b/drivers/staging/comedi/drivers/ni_atmio.c
index 2b7bfe0dd7f3..56c78da475e7 100644
--- a/drivers/staging/comedi/drivers/ni_atmio.c
+++ b/drivers/staging/comedi/drivers/ni_atmio.c
@@ -354,7 +354,7 @@ static struct comedi_driver ni_atmio_driver = {
 };
 module_comedi_driver(ni_atmio_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
 
diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c b/drivers/staging/comedi/drivers/ni_atmio16d.c
index 0bca7d752015..dffce1aa3e69 100644
--- a/drivers/staging/comedi/drivers/ni_atmio16d.c
+++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
@@ -724,6 +724,6 @@ static struct comedi_driver atmio16d_driver = {
 };
 module_comedi_driver(atmio16d_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_daq_700.c b/drivers/staging/comedi/drivers/ni_daq_700.c
index 81fd4c26a16f..d40fc89f9cef 100644
--- a/drivers/staging/comedi/drivers/ni_daq_700.c
+++ b/drivers/staging/comedi/drivers/ni_daq_700.c
@@ -34,8 +34,8 @@
  *
  * IRQ is assigned but not used.
  *
- * Manuals:	Register level:	http://www.ni.com/pdf/manuals/340698.pdf
- *		User Manual:	http://www.ni.com/pdf/manuals/320676d.pdf
+ * Manuals:	Register level:	https://www.ni.com/pdf/manuals/340698.pdf
+ *		User Manual:	https://www.ni.com/pdf/manuals/320676d.pdf
  */
 
 #include <linux/module.h>
diff --git a/drivers/staging/comedi/drivers/ni_labpc.c b/drivers/staging/comedi/drivers/ni_labpc.c
index c6cf37ccbc92..1f4a07bd1d26 100644
--- a/drivers/staging/comedi/drivers/ni_labpc.c
+++ b/drivers/staging/comedi/drivers/ni_labpc.c
@@ -27,7 +27,7 @@
  * Kernel-level ISA plug-and-play support for the lab-pc-1200 boards
  * has not yet been added to the driver, mainly due to the fact that
  * I don't know the device id numbers. If you have one of these boards,
- * please file a bug report at http://comedi.org/ so I can get the
+ * please file a bug report at https://comedi.org/ so I can get the
  * necessary information from you.
  *
  * The 1200 series boards have onboard calibration dacs for correcting
@@ -111,6 +111,6 @@ static struct comedi_driver labpc_driver = {
 };
 module_comedi_driver(labpc_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for NI Lab-PC ISA boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_labpc_common.c b/drivers/staging/comedi/drivers/ni_labpc_common.c
index ce0f85026277..dd97946eacaf 100644
--- a/drivers/staging/comedi/drivers/ni_labpc_common.c
+++ b/drivers/staging/comedi/drivers/ni_labpc_common.c
@@ -1358,6 +1358,6 @@ static void __exit labpc_common_exit(void)
 }
 module_exit(labpc_common_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi helper for ni_labpc, ni_labpc_pci, ni_labpc_cs");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_labpc_isadma.c b/drivers/staging/comedi/drivers/ni_labpc_isadma.c
index 5657736a9408..a551aca6e615 100644
--- a/drivers/staging/comedi/drivers/ni_labpc_isadma.c
+++ b/drivers/staging/comedi/drivers/ni_labpc_isadma.c
@@ -176,6 +176,6 @@ static void __exit ni_labpc_isadma_cleanup_module(void)
 }
 module_exit(ni_labpc_isadma_cleanup_module);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi NI Lab-PC ISA DMA support");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_labpc_pci.c b/drivers/staging/comedi/drivers/ni_labpc_pci.c
index d7d5a7973558..ec180b0fedf7 100644
--- a/drivers/staging/comedi/drivers/ni_labpc_pci.c
+++ b/drivers/staging/comedi/drivers/ni_labpc_pci.c
@@ -128,5 +128,5 @@ static struct pci_driver labpc_pci_driver = {
 module_comedi_pci_driver(labpc_pci_comedi_driver, labpc_pci_driver);
 
 MODULE_DESCRIPTION("Comedi: National Instruments Lab-PC PCI-1200 driver");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_pcidio.c b/drivers/staging/comedi/drivers/ni_pcidio.c
index 8f3864799c19..623f8d08d13a 100644
--- a/drivers/staging/comedi/drivers/ni_pcidio.c
+++ b/drivers/staging/comedi/drivers/ni_pcidio.c
@@ -33,7 +33,7 @@
  * The PCI-6534 requires a firmware upload after power-up to work, the
  * firmware data and instructions for loading it with comedi_config
  * it are contained in the comedi_nonfree_firmware tarball available from
- * http://www.comedi.org
+ * https://www.comedi.org
  */
 
 #define USE_DMA
@@ -1005,6 +1005,6 @@ static struct pci_driver ni_pcidio_pci_driver = {
 };
 module_comedi_pci_driver(ni_pcidio_driver, ni_pcidio_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index c1d70eec24ab..6c813a490ba5 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -1472,6 +1472,6 @@ static struct pci_driver ni_pcimio_pci_driver = {
 };
 module_comedi_pci_driver(ni_pcimio_driver, ni_pcimio_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/ni_routes.c b/drivers/staging/comedi/drivers/ni_routes.c
index 07cb970340db..c426a9286f15 100644
--- a/drivers/staging/comedi/drivers/ni_routes.c
+++ b/drivers/staging/comedi/drivers/ni_routes.c
@@ -556,7 +556,7 @@ static void __exit ni_routes_module_exit(void)
 module_init(ni_routes_module_init);
 module_exit(ni_routes_module_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi helper for routing signals-->terminals for NI");
 MODULE_LICENSE("GPL");
 /* **** END simple module entry/exit functions **** */
diff --git a/drivers/staging/comedi/drivers/ni_usb6501.c b/drivers/staging/comedi/drivers/ni_usb6501.c
index 360e86a19fe3..5b6d9d783b2f 100644
--- a/drivers/staging/comedi/drivers/ni_usb6501.c
+++ b/drivers/staging/comedi/drivers/ni_usb6501.c
@@ -79,7 +79,7 @@
  *	RES: 00 01 00 0C 00 08 01 00 00 00 00 02
  *
  *
- *	Please  visit http://www.brickedbrain.com if you need
+ *	Please  visit https://www.brickedbrain.com if you need
  *	additional information or have any questions.
  *
  */
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
