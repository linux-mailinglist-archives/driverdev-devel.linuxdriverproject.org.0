Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB8E228855
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 20:36:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19C12886D1;
	Tue, 21 Jul 2020 18:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLc7l6Ycn71v; Tue, 21 Jul 2020 18:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF2C7886BE;
	Tue, 21 Jul 2020 18:35:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 434811BF2B3
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F75E86AD0
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id arsCHhg6DCAd for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 18:35:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3952C86AC1
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 18:35:55 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 05478BC148;
 Tue, 21 Jul 2020 18:35:51 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, dan.carpenter@oracle.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: addi: Replace HTTP links with HTTPS ones
Date: Tue, 21 Jul 2020 20:35:45 +0200
Message-Id: <20200721183545.67500-1-grandmaster@al2klimov.de>
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


 drivers/staging/comedi/drivers/addi_apci_1032.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_1500.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_1516.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_1564.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_16xx.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_2032.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_2200.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_3120.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_3501.c | 2 +-
 drivers/staging/comedi/drivers/addi_apci_3xxx.c | 2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_1032.c b/drivers/staging/comedi/drivers/addi_apci_1032.c
index 560649be9d13..8df968081754 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1032.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1032.c
@@ -381,6 +381,6 @@ static struct pci_driver apci1032_pci_driver = {
 };
 module_comedi_pci_driver(apci1032_driver, apci1032_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("ADDI-DATA APCI-1032, 32 channel DI boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_1500.c b/drivers/staging/comedi/drivers/addi_apci_1500.c
index 689acd69a1b9..84c22ae9ba24 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1500.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1500.c
@@ -868,6 +868,6 @@ static struct pci_driver apci1500_pci_driver = {
 };
 module_comedi_pci_driver(apci1500_driver, apci1500_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("ADDI-DATA APCI-1500, 16 channel DI / 16 channel DO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_1516.c b/drivers/staging/comedi/drivers/addi_apci_1516.c
index 6c8213ee1a74..274ec9fb030c 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1516.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1516.c
@@ -212,5 +212,5 @@ static struct pci_driver apci1516_pci_driver = {
 module_comedi_pci_driver(apci1516_driver, apci1516_pci_driver);
 
 MODULE_DESCRIPTION("ADDI-DATA APCI-1016/1516/2016, 16 channel DIO boards");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
index 10501fe6bb25..a6d8d32d4896 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1564.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1564.c
@@ -807,6 +807,6 @@ static struct pci_driver apci1564_pci_driver = {
 };
 module_comedi_pci_driver(apci1564_driver, apci1564_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("ADDI-DATA APCI-1564, 32 channel DI / 32 channel DO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_16xx.c b/drivers/staging/comedi/drivers/addi_apci_16xx.c
index 050d0b4b3209..9bbef3b15f3f 100644
--- a/drivers/staging/comedi/drivers/addi_apci_16xx.c
+++ b/drivers/staging/comedi/drivers/addi_apci_16xx.c
@@ -174,5 +174,5 @@ static struct pci_driver apci16xx_pci_driver = {
 module_comedi_pci_driver(apci16xx_driver, apci16xx_pci_driver);
 
 MODULE_DESCRIPTION("ADDI-DATA APCI-1648/1696, TTL I/O boards");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_2032.c b/drivers/staging/comedi/drivers/addi_apci_2032.c
index a122f3f3f5ec..e9a2b37a4ae0 100644
--- a/drivers/staging/comedi/drivers/addi_apci_2032.c
+++ b/drivers/staging/comedi/drivers/addi_apci_2032.c
@@ -325,6 +325,6 @@ static struct pci_driver apci2032_pci_driver = {
 };
 module_comedi_pci_driver(apci2032_driver, apci2032_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("ADDI-DATA APCI-2032, 32 channel DO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_2200.c b/drivers/staging/comedi/drivers/addi_apci_2200.c
index 140d1514a106..4c5aee784bd9 100644
--- a/drivers/staging/comedi/drivers/addi_apci_2200.c
+++ b/drivers/staging/comedi/drivers/addi_apci_2200.c
@@ -139,5 +139,5 @@ static struct pci_driver apci2200_pci_driver = {
 module_comedi_pci_driver(apci2200_driver, apci2200_pci_driver);
 
 MODULE_DESCRIPTION("ADDI-DATA APCI-2200 Relay board, optically isolated");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_3120.c b/drivers/staging/comedi/drivers/addi_apci_3120.c
index d2810fdd5e63..1ed3b33d1a30 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3120.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3120.c
@@ -1112,6 +1112,6 @@ static struct pci_driver apci3120_pci_driver = {
 };
 module_comedi_pci_driver(apci3120_driver, apci3120_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("ADDI-DATA APCI-3120, Analog input board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_3501.c b/drivers/staging/comedi/drivers/addi_apci_3501.c
index b4aa588975df..f0c9642f3f1a 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3501.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3501.c
@@ -413,5 +413,5 @@ static struct pci_driver apci3501_pci_driver = {
 module_comedi_pci_driver(apci3501_driver, apci3501_pci_driver);
 
 MODULE_DESCRIPTION("ADDI-DATA APCI-3501 Analog output board");
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/addi_apci_3xxx.c b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
index 55784f24e2a7..a90d59377e18 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3xxx.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
@@ -956,6 +956,6 @@ static struct pci_driver apci3xxx_pci_driver = {
 };
 module_comedi_pci_driver(apci3xxx_driver, apci3xxx_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
