Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC241241D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 22:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 828B085700;
	Mon, 20 May 2019 20:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zrbUqyqNRzdC; Mon, 20 May 2019 20:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5576485721;
	Mon, 20 May 2019 20:10:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8CCD1BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C250185D61
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7_pa6FKT4_VP
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E9B5857FB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nxk/4XL6YN0YCgA1T+6BZCvdcMTy9weL1t1+3ju9S2s=; b=LhhxLPxAJHM6OWrl/C01fWOdnO
 TFpimrmnTUy+bGkSUEAIC/LWvIe8JmyocZ4kr15qXtOgkZFCRUil8D6OlU/gmr5Awrg/NggDZ7zuz
 UhrIpUTgoS2sSacx2q2pqo8+4FFp9nMSGIdyCeOq/slht0PRrdc8uZ50+9F+QYSjh1BbdXLN0MK1w
 9zoHeqoR4nLWpad4Obrt/pQp+cU2kmb45bTUvHlriW6Q32hD+rYbCRgabDE9kv88mWJHrYIdH5cpT
 seav08e8fqzcIQFhCfquBaNdgeJBMot0clA79LJ4Xiog62NRndE/NJDMRxfh8Dk4HQ6HSr4CsQdNl
 1U/xm8+Q==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoL1-0004Ol-78; Mon, 20 May 2019 20:52:47 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v4 4/8] staging: kpc2000: added a helper to get struct
 kp2000_device from struct device.
Date: Mon, 20 May 2019 20:52:39 +0100
Message-Id: <20190520195243.917-13-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520195243.917-1-jeremy@azazel.net>
References: <20190517110315.10646-1-jeremy@azazel.net>
 <20190520195243.917-1-jeremy@azazel.net>
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

The attribute call-backs all use the same code to get the pcard from dev:

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
index d4af5a643a7b..c33595cc1332 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -22,15 +22,21 @@
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
 
@@ -65,14 +71,9 @@ static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
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
 
@@ -84,14 +85,10 @@ static ssize_t cpld_reconfigure(struct device *dev,
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
