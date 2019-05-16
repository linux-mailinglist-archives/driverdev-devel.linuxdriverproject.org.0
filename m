Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 928D52101C
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 389568733E;
	Thu, 16 May 2019 21:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9YcMOnGPbtJ; Thu, 16 May 2019 21:38:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09353873B1;
	Thu, 16 May 2019 21:38:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6CC01C1639
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3A7B85F5D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fTPSeKGGq2n7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F3E287EC5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=js2uYh/1ERsbM4bJglANHnSa95hjUx8olbjQascjRBE=; b=lSq2CpJRgBJSJPcw6HErOUYpB+
 jVTGQkQm+tt+LoquIX4+iscb11PW6A+cUVWYsl3tshugCRKWtZmbe4wHPiZdmvPV5mIfK9qpmVh39
 AIyL7ynCZ5nmFfxRAzp7aXD6Y1R318WO3X3D7oKVEWuqTliad1cGuYao5hsrLaMcHAHlzkl5cCWVi
 Nm80pxWb7Gx60Y21CmdKYlGH3ANAO/1h7fWSLfelQ5YjDHlY93hq+D5o3Z9N+jzqVhipei5iJ8evJ
 7tTKBRwAU6iuGtJhOqeN9v6Yfjv95ZPOJ2aIafUySCwkgQvXByQz1pDD7Nx/eEFqX8oN3gGj91Xri
 XNdtjERw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4t-0000d7-JH; Thu, 16 May 2019 22:38:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 8/9] staging: kpc2000: add separate show functions for
 readable kp device attributes, and defined them as read-only.
Date: Thu, 16 May 2019 22:38:13 +0100
Message-Id: <20190516213814.22232-9-jeremy@azazel.net>
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

Define separate simple show functions for each attribute instead of
having a one big one containing a chain of conditionals.

Replaced calls to scnprintf with sprintf since all the outputs are
single integers.

All the readable device attributes are read-only, so use DEVICE_ATTR_RO
to define them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 89 +++++++++++++++++++-------
 1 file changed, 66 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 6147c47c44ab..6fa3dd6531ef 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -19,33 +19,76 @@
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
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%016llx\n", pcard->ssid);
+}
+
+static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%016llx\n", pcard->ddna);
+}
+
+static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->card_id);
+}
+
+static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
 {
-    struct kp2000_device *pcard = dev_get_drvdata(dev);
-
-    if (strcmp("ssid", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);  } else
-    if (strcmp("ddna", attr->attr.name) == 0){         return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);  } else
-    if (strcmp("card_id", attr->attr.name) == 0){      return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->card_id);  } else
-    if (strcmp("hw_rev", attr->attr.name) == 0){       return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->hardware_revision);  } else
-    if (strcmp("build", attr->attr.name) == 0){        return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_version);  } else
-    if (strcmp("build_date", attr->attr.name) == 0){   return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_datestamp);  } else
-    if (strcmp("build_time", attr->attr.name) == 0){   return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->build_timestamp);  } else
-    { return -ENXIO; }
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->hardware_revision);
+}
+
+static ssize_t build_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->build_version);
+}
+
+static ssize_t build_date_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->build_datestamp);
+}
+
+static ssize_t build_time_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->build_timestamp);
 }
 
-static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
+	return sprintf(buf, "%016llx\n", val);
 }
 
 static ssize_t cpld_reconfigure(struct device *dev,
@@ -68,15 +111,15 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	return count;
 }
 
-DEVICE_ATTR(ssid,       0444, show_attr, NULL);
-DEVICE_ATTR(ddna,       0444, show_attr, NULL);
-DEVICE_ATTR(card_id,    0444, show_attr, NULL);
-DEVICE_ATTR(hw_rev,     0444, show_attr, NULL);
-DEVICE_ATTR(build,      0444, show_attr, NULL);
-DEVICE_ATTR(build_date, 0444, show_attr, NULL);
-DEVICE_ATTR(build_time, 0444, show_attr, NULL);
-DEVICE_ATTR(cpld_reg,   0444, show_cpld_config_reg, NULL);
-DEVICE_ATTR(cpld_reconfigure,   0220, NULL, cpld_reconfigure);
+DEVICE_ATTR_RO(ssid);
+DEVICE_ATTR_RO(ddna);
+DEVICE_ATTR_RO(card_id);
+DEVICE_ATTR_RO(hw_rev);
+DEVICE_ATTR_RO(build);
+DEVICE_ATTR_RO(build_date);
+DEVICE_ATTR_RO(build_time);
+DEVICE_ATTR_RO(cpld_reg);
+DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static const struct attribute *kp_attr_list[] = {
 	&dev_attr_ssid.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
