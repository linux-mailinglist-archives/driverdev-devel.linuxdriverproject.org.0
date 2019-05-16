Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40820F78
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83506882E0;
	Thu, 16 May 2019 20:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZeT42lOF5YT; Thu, 16 May 2019 20:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4A2C882C2;
	Thu, 16 May 2019 20:04:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90C8A1BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C9FE2202C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J4W-kPaUpjea
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 93ECD3137E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qa3H7T8ot7tThFvVB5k8E0FvEio+mhNKrQXbKuXSUDY=; b=IHP5A6/wnrVm7N8/hpLzwnbs/k
 f575NVRuH7zB0v9tlv9IBZRJWpO2JB5GPR3Ef47DIizF2N5y7o5K0edgkcSzz3s/ZgeqkCajkoKSm
 k98+5c2Kn3BicYHIM1tpN2TtQTmxCm9hNC1JcZy6tKTXHnQs2PFEr5WBzYck0Xm9gB7ITOaY5Rpvb
 6VVCX9h1A1UqCvYNJkHo7XW1GRBabe2jBAu9K61UVG1dI8H6OgFMHGv/X8HysblPA3J6Ddo1FK9GD
 Zo0RlR9SHeiQnKtWvGcyL7QovoIhZiMMzKCwa9o3bvYlBxbN9LzPRHsTWOMELhSvrPbGa0VPyOMbp
 Rqv6dhfQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbs-0007Ec-Ro; Thu, 16 May 2019 21:04:12 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 08/11] staging: kpc2000: add separate show functions for
 readable kp device attributes.
Date: Thu, 16 May 2019 21:04:08 +0100
Message-Id: <20190516200411.17715-9-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516200411.17715-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
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

Define separate simple show functions for each attribute instead of
having a one big one containing a chain of conditionals.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 91 +++++++++++++++++++-------
 1 file changed, 67 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index c05864cf33ce..e7e0d188ff73 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -19,27 +19,70 @@
 #include <linux/jiffies.h>
 #include "pcie.h"
 
-
 static atomic_t next_card_num = ATOMIC_INIT(1);
 
 /*******************************************************
   * SysFS Attributes
   ******************************************************/
-static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
+
+static ssize_t ssid_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
 {
-    struct kp2000_device *pcard = dev_get_drvdata(dev);
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);
+}
+
+static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);
+}
+
+static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->card_id);
+}
+
+static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
 
-    if (strcmp("ssid", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);  } else
-    if (strcmp("ddna", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);  } else
-    if (strcmp("card_id", attr->attr.name) == 0){      return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->card_id);  } else
-    if (strcmp("hw_rev", attr->attr.name) == 0){       return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->hardware_revision);  } else
-    if (strcmp("build", attr->attr.name) == 0){        return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_version);  } else
-    if (strcmp("build_date", attr->attr.name) == 0){   return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_datestamp);  } else
-    if (strcmp("build_time", attr->attr.name) == 0){   return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_timestamp);  } else
-    { return -ENXIO; }
+	return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->hardware_revision);
 }
 
-static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t build_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_version);
+}
+
+static ssize_t build_date_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_datestamp);
+}
+
+static ssize_t build_time_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_timestamp);
+}
+
+static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
@@ -47,6 +90,7 @@ static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
 }
+
 static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
 {
     struct kp2000_device *pcard = dev_get_drvdata(dev);
@@ -63,18 +107,17 @@ static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *att
     return count;
 }
 
-
-DEVICE_ATTR(ssid,       0444, show_attr, NULL);
-DEVICE_ATTR(ddna,       0444, show_attr, NULL);
-DEVICE_ATTR(card_id,    0444, show_attr, NULL);
-DEVICE_ATTR(hw_rev,     0444, show_attr, NULL);
-DEVICE_ATTR(build,      0444, show_attr, NULL);
-DEVICE_ATTR(build_date, 0444, show_attr, NULL);
-DEVICE_ATTR(build_time, 0444, show_attr, NULL);
-DEVICE_ATTR(cpld_reg,   0444, show_cpld_config_reg, NULL);
-DEVICE_ATTR(cpld_reconfigure,   0220, NULL, cpld_reconfigure);
-
-static const struct attribute *  kp_attr_list[] = {
+DEVICE_ATTR(ssid,             0444, ssid_show,       NULL);
+DEVICE_ATTR(ddna,             0444, ddna_show,       NULL);
+DEVICE_ATTR(card_id,          0444, card_id_show,    NULL);
+DEVICE_ATTR(hw_rev,           0444, hw_rev_show,     NULL);
+DEVICE_ATTR(build,            0444, build_show,      NULL);
+DEVICE_ATTR(build_date,       0444, build_date_show, NULL);
+DEVICE_ATTR(build_time,       0444, build_time_show, NULL);
+DEVICE_ATTR(cpld_reg,         0444, cpld_reg_show,   NULL);
+DEVICE_ATTR(cpld_reconfigure, 0220, NULL,            cpld_reconfigure);
+
+static const struct attribute *kp_attr_list[] = {
     &dev_attr_ssid.attr,
     &dev_attr_ddna.attr,
     &dev_attr_card_id.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
