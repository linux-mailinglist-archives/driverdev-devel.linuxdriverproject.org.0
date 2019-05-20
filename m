Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D4124185
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 21:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 674C724ED5;
	Mon, 20 May 2019 19:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Own4a3NsiDGf; Mon, 20 May 2019 19:53:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F8A724804;
	Mon, 20 May 2019 19:52:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5A961BF870
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF29B231F2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5B6aBwEdLxJz
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 96C7023223
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9NcsF98g8oAb5uNTkiSSfFhSehSLdIOEbaMger4gzNc=; b=EQCzUBCQveQNJH7EYTno+pE/lU
 +vKrjnMuCQKnd2HA+GiqLDojvDli9rLD+l7eo5sclX5f5/4yj2mLdgImDSvKwVZEhEmqL3cilE7ba
 /YPAG23lkUKGGNhcc567g9jW1JoSng/d8qsS8SuW9UqCY//NGK75Ml2UcV8UoqnJQ6ksEZKun9xrG
 1bH3ElVqCZi9b9sCvJobrRvyP8qc5LgqGrLYjPNgGATbE8t8jIUFp2l+726Ev3WyY9KybNDvc5yFf
 QoAcIPt+xX2F0bGi2k0+ulaLbv6NycBvk14UCQAH9Heagm5Or20uHIRAMycbsCFcoNDx1+UlQ2p3/
 8/pa9lrA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoKz-0004Ol-OY; Mon, 20 May 2019 20:52:45 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 8/8] staging: kpc2000: removed superfluous NULL checks from
 device attribute call-backs.
Date: Mon, 20 May 2019 20:52:34 +0100
Message-Id: <20190520195243.917-8-jeremy@azazel.net>
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
index f6043ef7b55b..4a0af2645747 100644
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
