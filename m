Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 556DA22B69E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 21:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2AECD2282E;
	Thu, 23 Jul 2020 19:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqi-1idCzlfl; Thu, 23 Jul 2020 19:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D0D8020498;
	Thu, 23 Jul 2020 19:18:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 659351BF275
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 19:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61C7C8874A
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 19:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mH6pUczENrb4 for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 19:18:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.al2klimov.de (smtp.al2klimov.de [78.46.175.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6AB6886CA
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 19:18:37 +0000 (UTC)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id 092B9BC283;
 Thu, 23 Jul 2020 19:18:33 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: comedi: adv: Replace HTTP links with HTTPS ones
Date: Thu, 23 Jul 2020 21:18:27 +0200
Message-Id: <20200723191827.72047-1-grandmaster@al2klimov.de>
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


 drivers/staging/comedi/drivers/adv_pci1710.c | 2 +-
 drivers/staging/comedi/drivers/adv_pci1723.c | 2 +-
 drivers/staging/comedi/drivers/adv_pci1760.c | 2 +-
 drivers/staging/comedi/drivers/adv_pci_dio.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/adv_pci1710.c b/drivers/staging/comedi/drivers/adv_pci1710.c
index ddc0dc93d08b..692893c7e5c3 100644
--- a/drivers/staging/comedi/drivers/adv_pci1710.c
+++ b/drivers/staging/comedi/drivers/adv_pci1710.c
@@ -958,6 +958,6 @@ static struct pci_driver adv_pci1710_pci_driver = {
 };
 module_comedi_pci_driver(adv_pci1710_driver, adv_pci1710_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi: Advantech PCI-1710 Series Multifunction DAS Cards");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/adv_pci1723.c b/drivers/staging/comedi/drivers/adv_pci1723.c
index 771d61f87427..23660a9fdb9c 100644
--- a/drivers/staging/comedi/drivers/adv_pci1723.c
+++ b/drivers/staging/comedi/drivers/adv_pci1723.c
@@ -222,6 +222,6 @@ static struct pci_driver adv_pci1723_pci_driver = {
 };
 module_comedi_pci_driver(adv_pci1723_driver, adv_pci1723_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Advantech PCI-1723 Comedi driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/adv_pci1760.c b/drivers/staging/comedi/drivers/adv_pci1760.c
index f460f21efb90..6de8ab97d346 100644
--- a/drivers/staging/comedi/drivers/adv_pci1760.c
+++ b/drivers/staging/comedi/drivers/adv_pci1760.c
@@ -419,6 +419,6 @@ static struct pci_driver pci1760_pci_driver = {
 };
 module_comedi_pci_driver(pci1760_driver, pci1760_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Advantech PCI-1760");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/comedi/drivers/adv_pci_dio.c b/drivers/staging/comedi/drivers/adv_pci_dio.c
index 5fef2aef7e03..0df28ec00f37 100644
--- a/drivers/staging/comedi/drivers/adv_pci_dio.c
+++ b/drivers/staging/comedi/drivers/adv_pci_dio.c
@@ -532,6 +532,6 @@ static struct pci_driver adv_pci_dio_pci_driver = {
 };
 module_comedi_pci_driver(adv_pci_dio_driver, adv_pci_dio_pci_driver);
 
-MODULE_AUTHOR("Comedi http://www.comedi.org");
+MODULE_AUTHOR("Comedi https://www.comedi.org");
 MODULE_DESCRIPTION("Comedi driver for Advantech Digital I/O Cards");
 MODULE_LICENSE("GPL");
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
