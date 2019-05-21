Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4054924CCD
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 12:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 578F585F2D;
	Tue, 21 May 2019 10:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfWYqzlPHKPL; Tue, 21 May 2019 10:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3F1485E69;
	Tue, 21 May 2019 10:35:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3531BF8B4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 558CF865FC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JGZvDm6Gywt1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1C13866BD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PvZawpFXyC5kMN6pBovwv599eAyo+gFWdIn7T0HjwrE=; b=HzMSjWeW9KAWU6LDPlkn96RJId
 ttIlkeGVyZ+ZqBkizZpRKGrQEua7M8D5BZgHW4lcH7W4ezHpdpUiRMlXPZH9UK0Kv8to0ZD6JFgNU
 96ZRVolrJ+bNh0mkWYHlOK+wmlGzxONjbAUSBzkHfWZDoQ4iYP1flnnDrBK8b6MzZxTvN6JV80QE+
 yrPagkbeDnr/nXrhsmKd2HEKjUM/MnmZ2/AmER6W+4Fx5Z4TsqD9RBgElLUhvKtXBFzDedU0EDMfS
 9DZTYCDeKxxPTWuqbtLDu3wWMLWFIj1+rGIsvWpZm6+ZF8P0zeg9BOHbBwydSUvoNeeRexoa4oZmX
 tEvXsocQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hT27B-00073p-Fm; Tue, 21 May 2019 11:35:25 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v6 6/6] staging: kpc2000: removed superfluous NULL checks from
 device attribute call-backs.
Date: Tue, 21 May 2019 11:35:24 +0100
Message-Id: <20190521103524.2176-7-jeremy@azazel.net>
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

All the attribute show call-backs check whether pcard is NULL.  However,
pci_set_drvdata(pdev, pcard) is called before the sysfs files are
created during probe, and pci_set_drvdata(pdev, NULL) is not called
until after they are destroyed during remove; therefore, pcard will not
be NULL, and we can drop the checks.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 27 --------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 2af4170a0d68..4110032d0cbb 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -37,9 +37,6 @@ static ssize_t ssid_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%016llx\n", pcard->ssid);
 }
 static DEVICE_ATTR_RO(ssid);
@@ -49,9 +46,6 @@ static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%016llx\n", pcard->ddna);
 }
 static DEVICE_ATTR_RO(ddna);
@@ -61,9 +55,6 @@ static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->card_id);
 }
 static DEVICE_ATTR_RO(card_id);
@@ -73,9 +64,6 @@ static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->hardware_revision);
 }
 static DEVICE_ATTR_RO(hw_rev);
@@ -85,9 +73,6 @@ static ssize_t build_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_version);
 }
 static DEVICE_ATTR_RO(build);
@@ -97,9 +82,6 @@ static ssize_t build_date_show(struct device *dev,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_datestamp);
 }
 static DEVICE_ATTR_RO(build_date);
@@ -109,9 +91,6 @@ static ssize_t build_time_show(struct device *dev,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_timestamp);
 }
 static DEVICE_ATTR_RO(build_time);
@@ -122,9 +101,6 @@ static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
-	if (!pcard)
-		return -ENXIO;
-
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return sprintf(buf, "%016llx\n", val);
 }
@@ -138,9 +114,6 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	long wr_val;
 	int rv;
 
-	if (!pcard)
-		return -ENXIO;
-
 	rv = kstrtol(buf, 0, &wr_val);
 	if (rv < 0)
 		return rv;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
