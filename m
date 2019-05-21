Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1116824CD0
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 12:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FFD7867F0;
	Tue, 21 May 2019 10:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbPye1QmOxeE; Tue, 21 May 2019 10:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C378886793;
	Tue, 21 May 2019 10:35:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D14D01BF299
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C944685E6F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWi-U8dyjWCe
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C31C985E69
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2+RJn/AjedYUdWcSbNGflOQRmosmKPPIKKTclOwwA7w=; b=bwfmX08KlRWxmbuo5FUYcXL2CO
 Q4KFMTPWJpa5sOQZvm6BKgJYtXprAXWaDbTJFgHxXnmWWQYhlSFjNiTyqQe7B0lexTg0/CfsxWztf
 ksgUEMjAksAinke81TZiE8UmOpGgYdBq9vI/a4F8/FYroanH+9Jdhh05EVpI+FhMAUt9GRbs/d6pq
 P179v4QNAxDFEt1K8kcKSyXLf358gH73T7FTWI4PARlhzo7D+pRlny8jfsT4+7JHPy5qwWKrOhhF4
 NOw48s7rlh/QXMjupmgVCf7EfOqXFSkL+tzNVGq7ZOzLIINXBQxFPP5BahoNsqTctAPPYeI4Hpz6F
 LnwQs3cA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hT27A-00073p-Pg; Tue, 21 May 2019 11:35:24 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v6 2/6] staging: kpc2000: added a helper to get struct
 kp2000_device from struct device.
Date: Tue, 21 May 2019 11:35:20 +0100
Message-Id: <20190521103524.2176-3-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521103524.2176-1-jeremy@azazel.net>
References: <20190521103524.2176-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The attribute call-backs all use the same formula to get the pcard from
dev:

  struct pci_dev *pdev = to_pci_dev(dev);
  struct kp2000_device *pcard;

  if (!pdev)
    return -ENXIO;
  pcard = pci_get_drvdata(pdev);
  if (!pcard)
    return -ENXIO;

Added a function to reduce the duplicated code.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 29 ++++++++++++--------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index f1735237cfb6..e58bddec87ee 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -29,15 +29,21 @@
  * SysFS Attributes
  ******************************************************/
 
-static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
-			 char *buf)
+static struct kp2000_device *get_pcard(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
-	struct kp2000_device *pcard;
 
 	if (!pdev)
-		return -ENXIO;
-	pcard = pci_get_drvdata(pdev);
+		return NULL;
+
+	return pci_get_drvdata(pdev);
+}
+
+static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
+
 	if (!pcard)
 		return -ENXIO;
 
@@ -72,14 +78,9 @@ static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
 static ssize_t show_cpld_config_reg(struct device *dev,
 				    struct device_attribute *attr, char *buf)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct kp2000_device *pcard;
+	struct kp2000_device *pcard = get_pcard(dev);
 	u64 val;
 
-	if (!pdev)
-		return -ENXIO;
-
-	pcard = pci_get_drvdata(pdev);
 	if (!pcard)
 		return -ENXIO;
 
@@ -91,14 +92,10 @@ static ssize_t cpld_reconfigure(struct device *dev,
 				struct device_attribute *attr,
 				const char *buf, size_t count)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
+	struct kp2000_device *pcard = get_pcard(dev);
 	long wr_val;
-	struct kp2000_device *pcard;
 	int rv;
 
-	if (!pdev)
-		return -ENXIO;
-	pcard = pci_get_drvdata(pdev);
 	if (!pcard)
 		return -ENXIO;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
