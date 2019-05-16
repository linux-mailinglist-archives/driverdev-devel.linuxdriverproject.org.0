Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C60282101A
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 141618606C;
	Thu, 16 May 2019 21:38:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfoiQIm-8FUD; Thu, 16 May 2019 21:38:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D44084E7C;
	Thu, 16 May 2019 21:38:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B796D1C162E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3145387ECC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x46-yBiu5lwO
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A55A85F5D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wgJhIUKiqDVXDFPFIFqsqBBt8VdcA8q0Tv2osg3juQQ=; b=FzxyP++HYIAFYREr8C1ccjrqxr
 dQzI1q7Yz+mICT9czW8ThqiFBNn/4fmouI1R3eGI9lphw5/owP/qu2dg115A8m5iM2qfqBnrKyo5p
 q3XzlPoA8QZVMsKZJ42lInvm4uhPB4w5eVaEopVjVjhM4aiAPYOpxGJvmUlP7tgUgih9iO4rAWPxs
 z4qpHHUavDOkeGFCh8+DAR9Cbsdfke4u+HkXOYIO1B+nlX4qLN7vW8eSmUYiNuB1JNwQCqLy1CAdf
 jYtYdzsfvC/dWjuCxT8Yu3hM8x14ypCSud8Uzaavm7RPMdOESqIa7mLWEeVkTXqAAZaBQhRXgD53z
 Fl4jnkZA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4t-0000d7-Af; Thu, 16 May 2019 22:38:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 7/9] staging: kpc2000: formatting fixes for kp device
 attributes.
Date: Thu, 16 May 2019 22:38:12 +0100
Message-Id: <20190516213814.22232-8-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516213814.22232-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
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

Fixed indentation of cpld_reconfigure store call-back and definition of
attribute list.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 55 ++++++++++++++------------
 1 file changed, 29 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index c05864cf33ce..6147c47c44ab 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -47,23 +47,27 @@ static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
 }
-static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
-{
-    struct kp2000_device *pcard = dev_get_drvdata(dev);
-    long wr_val;
-    int rv;
-
-    rv = kstrtol(buf, 0, &wr_val);
-    if (rv < 0)  return rv;
-    if (wr_val > 7)  return -EINVAL;
 
-    wr_val = wr_val << 8;
-    wr_val |= 0x1; // Set the "Configure Go" bit
-    writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-    return count;
+static ssize_t cpld_reconfigure(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t count)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+	long wr_val;
+	int rv;
+
+	rv = kstrtol(buf, 0, &wr_val);
+	if (rv < 0)
+		return rv;
+	if (wr_val > 7)
+		return -EINVAL;
+
+	wr_val = wr_val << 8;
+	wr_val |= 0x1; // Set the "Configure Go" bit
+	writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
+	return count;
 }
 
-
 DEVICE_ATTR(ssid,       0444, show_attr, NULL);
 DEVICE_ATTR(ddna,       0444, show_attr, NULL);
 DEVICE_ATTR(card_id,    0444, show_attr, NULL);
@@ -74,20 +78,19 @@ DEVICE_ATTR(build_time, 0444, show_attr, NULL);
 DEVICE_ATTR(cpld_reg,   0444, show_cpld_config_reg, NULL);
 DEVICE_ATTR(cpld_reconfigure,   0220, NULL, cpld_reconfigure);
 
-static const struct attribute *  kp_attr_list[] = {
-    &dev_attr_ssid.attr,
-    &dev_attr_ddna.attr,
-    &dev_attr_card_id.attr,
-    &dev_attr_hw_rev.attr,
-    &dev_attr_build.attr,
-    &dev_attr_build_date.attr,
-    &dev_attr_build_time.attr,
-    &dev_attr_cpld_reg.attr,
-    &dev_attr_cpld_reconfigure.attr,
-    NULL,
+static const struct attribute *kp_attr_list[] = {
+	&dev_attr_ssid.attr,
+	&dev_attr_ddna.attr,
+	&dev_attr_card_id.attr,
+	&dev_attr_hw_rev.attr,
+	&dev_attr_build.attr,
+	&dev_attr_build_date.attr,
+	&dev_attr_build_time.attr,
+	&dev_attr_cpld_reg.attr,
+	&dev_attr_cpld_reconfigure.attr,
+	NULL,
 };
 
-
 /*******************************************************
   * Functions
   ******************************************************/
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
