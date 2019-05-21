Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F7E24982
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 09:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13542233ED;
	Tue, 21 May 2019 07:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMg4dN-oyWoQ; Tue, 21 May 2019 07:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A8E4230A1;
	Tue, 21 May 2019 07:56:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8367D1BF310
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C8E9231CB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5tX2qoBDgF6P
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B1A723077
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f1J3qBZD0dVa2IRBlC559wTNxuSLCfqDCGe5B6Sno48=; b=GSGNdzi9pxm66EDHCQpC2lU7bq
 DyO+/KnlspHaSb1Vy0yaGvapWis3+5ZYSmBWltTGJMyad+yR/2t0saohJ34HHF+u1TX3Z8eSSraBw
 muHVSDq89f++oLUrUxFPF5iHWb9YdjDNFafOVgmSb+Ii7Eu1K0RY+/iBtPsfCYwxe1KPdYEui8D86
 9dVGSOQFANsul1dvRVw4JFBjoEtvHfUOBNV8DsMdlvppu+OC5OFD9SwzmBItqHoeXXKrIL4nLbUkK
 atUUumin1htZTnsRZLD6xY1SCknZm8qjrA1459LVgPLUQHQc54SUfGeUfiujBm+T4RD0YGyT6WkVe
 dcLTS0Gg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSzdU-0003vc-CB; Tue, 21 May 2019 08:56:36 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v5 8/8] staging: kpc2000: removed superfluous NULL checks from
 device attribute call-backs.
Date: Tue, 21 May 2019 08:56:35 +0100
Message-Id: <20190521075635.30458-9-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521075635.30458-1-jeremy@azazel.net>
References: <20190521075635.30458-1-jeremy@azazel.net>
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
index f5ad90b17959..3a4773183cab 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -30,9 +30,6 @@ static ssize_t ssid_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%016llx\n", pcard->ssid);
 }
 static DEVICE_ATTR_RO(ssid);
@@ -42,9 +39,6 @@ static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%016llx\n", pcard->ddna);
 }
 static DEVICE_ATTR_RO(ddna);
@@ -54,9 +48,6 @@ static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->card_id);
 }
 static DEVICE_ATTR_RO(card_id);
@@ -66,9 +57,6 @@ static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->hardware_revision);
 }
 static DEVICE_ATTR_RO(hw_rev);
@@ -78,9 +66,6 @@ static ssize_t build_show(struct device *dev, struct device_attribute *attr,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_version);
 }
 static DEVICE_ATTR_RO(build);
@@ -90,9 +75,6 @@ static ssize_t build_date_show(struct device *dev,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_datestamp);
 }
 static DEVICE_ATTR_RO(build_date);
@@ -102,9 +84,6 @@ static ssize_t build_time_show(struct device *dev,
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-	if (!pcard)
-		return -ENXIO;
-
 	return sprintf(buf, "%08x\n", pcard->build_timestamp);
 }
 static DEVICE_ATTR_RO(build_time);
@@ -115,9 +94,6 @@ static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
-	if (!pcard)
-		return -ENXIO;
-
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return sprintf(buf, "%016llx\n", val);
 }
@@ -131,9 +107,6 @@ static ssize_t cpld_reconfigure(struct device *dev,
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
