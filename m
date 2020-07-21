Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027322889C
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 20:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FFA98821D;
	Tue, 21 Jul 2020 18:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SyAtvH8fR3ZZ; Tue, 21 Jul 2020 18:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8ACC881EC;
	Tue, 21 Jul 2020 18:56:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 117291BF2B3
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E17986B16
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgp07B-whbql for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 18:56:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C25C286B13
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 18:56:42 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 25D4DBC1AB;
 Tue, 21 Jul 2020 18:56:39 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: das: Replace HTTP links with HTTPS ones
Date: Tue, 21 Jul 2020 20:56:33 +0200
Message-Id: <20200721185633.67671-1-grandmaster@al2klimov.de>
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


 drivers/staging/comedi/drivers/das08.c     | 2 +-
 drivers/staging/comedi/drivers/das08_isa.c | 2 +-
 drivers/staging/comedi/drivers/das08_pci.c | 2 +-
 drivers/staging/comedi/drivers/das16.c     | 2 +-
 drivers/staging/comedi/drivers/das16m1.c   | 2 +-
 drivers/staging/comedi/drivers/das1800.c   | 2 +-
 drivers/staging/comedi/drivers/das800.c    | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
index 65e5f2e6c122..b50743c5b822 100644
--- a/drivers/staging/comedi/drivers/das08.c
+++ b/drivers/staging/comedi/drivers/das08.c
@@ -465,6 +465,6 @@ static void __exit das08_exit(void)
 }
 module_exit(das08_exit);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi common DAS08 support module");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das08_isa.c b/drivers/staging/comedi/drivers/das08_isa.c
index b22a45bd21d1..8c4cfa821423 100644
--- a/drivers/staging/comedi/drivers/das08_isa.c
+++ b/drivers/staging/comedi/drivers/das08_isa.c
@@ -185,6 +185,6 @@ static struct comedi_driver das08_isa_driver = {
 };
 module_comedi_driver(das08_isa_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das08_pci.c b/drivers/staging/comedi/drivers/das08_pci.c
index 7856fc13466a..1cd903336a4c 100644
--- a/drivers/staging/comedi/drivers/das08_pci.c
+++ b/drivers/staging/comedi/drivers/das08_pci.c
@@ -91,6 +91,6 @@ static struct pci_driver das08_pci_driver = {
 };
 module_comedi_pci_driver(das08_pci_comedi_driver, das08_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi low-level driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
index 81eb51b1be25..4ac2622b0fac 100644
--- a/drivers/staging/comedi/drivers/das16.c
+++ b/drivers/staging/comedi/drivers/das16.c
@@ -1195,6 +1195,6 @@ static struct comedi_driver das16_driver = {
 };
 module_comedi_driver(das16_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for DAS16 compatible boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das16m1.c b/drivers/staging/comedi/drivers/das16m1.c
index 4e36377b592a..75f3dbbe97ac 100644
--- a/drivers/staging/comedi/drivers/das16m1.c
+++ b/drivers/staging/comedi/drivers/das16m1.c
@@ -617,6 +617,6 @@ static struct comedi_driver das16m1_driver = {
 };
 module_comedi_driver(das16m1_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for CIO-DAS16/M1 ISA cards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9f4f3..f50891a6ee7d 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -1359,6 +1359,6 @@ static struct comedi_driver das1800_driver = {
 };
 module_comedi_driver(das1800_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for DAS1800 compatible ISA boards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/das800.c b/drivers/staging/comedi/drivers/das800.c
index 8cf09ef3012f..4ea100ff6930 100644
--- a/drivers/staging/comedi/drivers/das800.c
+++ b/drivers/staging/comedi/drivers/das800.c
@@ -739,6 +739,6 @@ static struct comedi_driver driver_das800 = {
 };
 module_comedi_driver(driver_das800);
 
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
