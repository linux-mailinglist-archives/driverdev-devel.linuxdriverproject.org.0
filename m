Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9260228885
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 20:46:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAF708820C;
	Tue, 21 Jul 2020 18:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDqYDyE+Qlve; Tue, 21 Jul 2020 18:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED2598814F;
	Tue, 21 Jul 2020 18:46:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFE3C1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC90F86B01
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LlUTzVkz-Qya for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 18:46:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 819EA86AE2
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 18:46:23 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 2B8A4BC148;
 Tue, 21 Jul 2020 18:46:19 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: amplc: Replace HTTP links with HTTPS ones
Date: Tue, 21 Jul 2020 20:46:13 +0200
Message-Id: <20200721184613.67596-1-grandmaster@al2klimov.de>
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


 drivers/staging/comedi/drivers/amplc_dio200.c        | 4 ++--
 drivers/staging/comedi/drivers/amplc_dio200.h        | 2 +-
 drivers/staging/comedi/drivers/amplc_dio200_common.c | 4 ++--
 drivers/staging/comedi/drivers/amplc_dio200_pci.c    | 4 ++--
 drivers/staging/comedi/drivers/amplc_pc236.c         | 4 ++--
 drivers/staging/comedi/drivers/amplc_pc236.h         | 2 +-
 drivers/staging/comedi/drivers/amplc_pc236_common.c  | 4 ++--
 drivers/staging/comedi/drivers/amplc_pc263.c         | 4 ++--
 drivers/staging/comedi/drivers/amplc_pci224.c        | 4 ++--
 drivers/staging/comedi/drivers/amplc_pci230.c        | 2 +-
 drivers/staging/comedi/drivers/amplc_pci236.c        | 4 ++--
 drivers/staging/comedi/drivers/amplc_pci263.c        | 4 ++--
 12 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_dio200.c b/drivers/staging/comedi/drivers/amplc_dio200.c
index 26e63d64ffc6..fa19c9e7c56b 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200.c
@@ -4,7 +4,7 @@
  *
  * Driver for Amplicon PC212E, PC214E, PC215E, PC218E, PC272E.
  *
- * Copyright (C) 2005-2013 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2005-2013 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998,2000 David A. Schleef <ds@schleef.org>
@@ -260,6 +260,6 @@ static struct comedi_driver amplc_dio200_driver = {
 };
 module_comedi_driver(amplc_dio200_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon 200 Series ISA DIO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_dio200.h b/drivers/staging/comedi/drivers/amplc_dio200.h
index 1d81393be6df..745baaf940ee 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200.h
+++ b/drivers/staging/comedi/drivers/amplc_dio200.h
@@ -5,7 +5,7 @@
  * Header for amplc_dio200.c, amplc_dio200_common.c and
  * amplc_dio200_pci.c.
  *
- * Copyright (C) 2005-2013 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2005-2013 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998,2000 David A. Schleef <ds@schleef.org>
diff --git a/drivers/staging/comedi/drivers/amplc_dio200_common.c b/drivers/staging/comedi/drivers/amplc_dio200_common.c
index 0b2f04b02ebc..a3454130d5f8 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_common.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_common.c
@@ -4,7 +4,7 @@
  *
  * Common support code for "amplc_dio200" and "amplc_dio200_pci".
  *
- * Copyright (C) 2005-2013 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2005-2013 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998,2000 David A. Schleef <ds@schleef.org>
@@ -853,6 +853,6 @@ static void __exit amplc_dio200_common_exit(void)
 }
 module_exit(amplc_dio200_common_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi helper for amplc_dio200 and amplc_dio200_pci");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_dio200_pci.c b/drivers/staging/comedi/drivers/amplc_dio200_pci.c
index 30d239731e0b..1bd7a42c8464 100644
--- a/drivers/staging/comedi/drivers/amplc_dio200_pci.c
+++ b/drivers/staging/comedi/drivers/amplc_dio200_pci.c
@@ -3,7 +3,7 @@
  *
  * Driver for Amplicon PCI215, PCI272, PCIe215, PCIe236, PCIe296.
  *
- * Copyright (C) 2005-2013 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2005-2013 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998,2000 David A. Schleef <ds@schleef.org>
@@ -410,6 +410,6 @@ static struct pci_driver dio200_pci_pci_driver = {
 };
 module_comedi_pci_driver(dio200_pci_comedi_driver, dio200_pci_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon 200 Series PCI(e) DIO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pc236.c b/drivers/staging/comedi/drivers/amplc_pc236.c
index b7dd15f5ec63..c377af1d5246 100644
--- a/drivers/staging/comedi/drivers/amplc_pc236.c
+++ b/drivers/staging/comedi/drivers/amplc_pc236.c
@@ -3,7 +3,7 @@
  * comedi/drivers/amplc_pc236.c
  * Driver for Amplicon PC36AT DIO boards.
  *
- * Copyright (C) 2002 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
@@ -71,6 +71,6 @@ static struct comedi_driver amplc_pc236_driver = {
 
 module_comedi_driver(amplc_pc236_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PC36AT DIO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pc236.h b/drivers/staging/comedi/drivers/amplc_pc236.h
index 45e933ee8735..7e72729f7492 100644
--- a/drivers/staging/comedi/drivers/amplc_pc236.h
+++ b/drivers/staging/comedi/drivers/amplc_pc236.h
@@ -3,7 +3,7 @@
  * comedi/drivers/amplc_pc236.h
  * Header for "amplc_pc236", "amplc_pci236" and "amplc_pc236_common".
  *
- * Copyright (C) 2002-2014 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002-2014 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
diff --git a/drivers/staging/comedi/drivers/amplc_pc236_common.c b/drivers/staging/comedi/drivers/amplc_pc236_common.c
index 01b90e4eca8a..043752663188 100644
--- a/drivers/staging/comedi/drivers/amplc_pc236_common.c
+++ b/drivers/staging/comedi/drivers/amplc_pc236_common.c
@@ -3,7 +3,7 @@
  * comedi/drivers/amplc_pc236_common.c
  * Common support code for "amplc_pc236" and "amplc_pci236".
  *
- * Copyright (C) 2002-2014 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002-2014 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
@@ -186,6 +186,6 @@ static void __exit amplc_pc236_common_exit(void)
 }
 module_exit(amplc_pc236_common_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi helper for amplc_pc236 and amplc_pci236");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pc263.c b/drivers/staging/comedi/drivers/amplc_pc263.c
index 84c989f12faf..68da6098ee84 100644
--- a/drivers/staging/comedi/drivers/amplc_pc263.c
+++ b/drivers/staging/comedi/drivers/amplc_pc263.c
@@ -2,7 +2,7 @@
 /*
  * Driver for Amplicon PC263 relay board.
  *
- * Copyright (C) 2002 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
@@ -97,6 +97,6 @@ static struct comedi_driver amplc_pc263_driver = {
 
 module_comedi_driver(amplc_pc263_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PC263 relay board");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pci224.c b/drivers/staging/comedi/drivers/amplc_pci224.c
index 657b736ef46d..bcf6d61af863 100644
--- a/drivers/staging/comedi/drivers/amplc_pci224.c
+++ b/drivers/staging/comedi/drivers/amplc_pci224.c
@@ -3,7 +3,7 @@
  * comedi/drivers/amplc_pci224.c
  * Driver for Amplicon PCI224 and PCI234 AO boards.
  *
- * Copyright (C) 2005 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2005 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 1998,2000 David A. Schleef <ds@schleef.org>
@@ -1138,6 +1138,6 @@ static struct pci_driver amplc_pci224_pci_driver = {
 };
 module_comedi_pci_driver(amplc_pci224_driver, amplc_pci224_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PCI224 and PCI234 AO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index f7e673121864..8911dc2bd2c6 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -2570,6 +2570,6 @@ static struct pci_driver amplc_pci230_pci_driver = {
 };
 module_comedi_pci_driver(amplc_pci230_driver, amplc_pci230_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PCI230(+) and PCI260(+)");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pci236.c b/drivers/staging/comedi/drivers/amplc_pci236.c
index 86ea876a11be..e7f6fa4d101a 100644
--- a/drivers/staging/comedi/drivers/amplc_pci236.c
+++ b/drivers/staging/comedi/drivers/amplc_pci236.c
@@ -3,7 +3,7 @@
  * comedi/drivers/amplc_pci236.c
  * Driver for Amplicon PCI236 DIO boards.
  *
- * Copyright (C) 2002-2014 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002-2014 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
@@ -139,6 +139,6 @@ static struct pci_driver amplc_pci236_pci_driver = {
 
 module_comedi_pci_driver(amplc_pci236_driver, amplc_pci236_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PCI236 DIO boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/amplc_pci263.c b/drivers/staging/comedi/drivers/amplc_pci263.c
index c3efe14020a8..9217973f1141 100644
--- a/drivers/staging/comedi/drivers/amplc_pci263.c
+++ b/drivers/staging/comedi/drivers/amplc_pci263.c
@@ -2,7 +2,7 @@
 /*
  * Driver for Amplicon PCI263 relay board.
  *
- * Copyright (C) 2002 MEV Ltd. <http://www.mev.co.uk/>
+ * Copyright (C) 2002 MEV Ltd. <https://www.mev.co.uk/>
  *
  * COMEDI - Linux Control and Measurement Device Interface
  * Copyright (C) 2000 David A. Schleef <ds@schleef.org>
@@ -106,6 +106,6 @@ static struct pci_driver amplc_pci263_pci_driver = {
 };
 module_comedi_pci_driver(amplc_pci263_driver, amplc_pci263_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Amplicon PCI263 relay board");
 MODULE_LICENSE("GPL");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
