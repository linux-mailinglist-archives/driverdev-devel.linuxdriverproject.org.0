Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A012176D
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 264CE883B5;
	Fri, 17 May 2019 11:03:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GLcouyTOD55m; Fri, 17 May 2019 11:03:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CBF088364;
	Fri, 17 May 2019 11:03:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5264E1C1639
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4DA0D87220
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9WdaRCm4JYm
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 244A687113
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZhQIpKtChVRzHK0uv+7s1tGGE1qnr2RLOlNl5ePOCpQ=; b=YossHBCJ6zWlgzJQtRUJudFnvT
 JqKSdTGvhsyP45AFixOcGczf8srb0HXSuauBNRTtdvq0r99I3SXyR30lEgJfmhbXCKGO0gppL/Y99
 UCP+4sejxbS7OMkrAb3n0MdXNdXot/isrrlGoIKJHx5PmUOYPupV5dZRhbY3zsQ3FmllZQXBi0zMN
 IfdhXl+Wa9i+jclkTYdbmEzI/P1luInig+zvetrYm1sdSqISq2cu//M6Qjc/KqMsk/XPRxm5J3kd5
 Y16UpP8CxlW8c/6zuOP+As8WsRlCw8WV7uAyKmmWLWvc1yFhx3K7iUScqpKyU4j22MVYGlMqzzmM0
 OnqUhC0Q==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadw-00045l-6q; Fri, 17 May 2019 12:03:16 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 5/6] staging: kpc2000: add separate show functions for
 readable kp device attributes, defined them as read-only,
 and declared them static.
Date: Fri, 17 May 2019 12:03:14 +0100
Message-Id: <20190517110315.10646-6-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517110315.10646-1-jeremy@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
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

The definitions are only used to populate the kp_attr_list attribute
array, so declare them as static.

Fixes the following sparse warnings:

  drivers/staging/kpc2000/kpc2000/core.c:152:1: warning: symbol 'dev_attr_ssid' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:153:1: warning: symbol 'dev_attr_ddna' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:154:1: warning: symbol 'dev_attr_card_id' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:155:1: warning: symbol 'dev_attr_hw_rev' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:156:1: warning: symbol 'dev_attr_build' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:157:1: warning: symbol 'dev_attr_build_date' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:158:1: warning: symbol 'dev_attr_build_time' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:159:1: warning: symbol 'dev_attr_cpld_reg' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/core.c:161:1: warning: symbol 'dev_attr_cpld_reconfigure' was not declared. Should it be static?

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 89 +++++++++++++++++++-------
 1 file changed, 66 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index cbd634caeade..80141514f7d1 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -22,28 +22,80 @@
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
+static DEVICE_ATTR_RO(ssid);
+
+static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%016llx\n", pcard->ddna);
+}
+static DEVICE_ATTR_RO(ddna);
+
+static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->card_id);
+}
+static DEVICE_ATTR_RO(card_id);
+
+static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->hardware_revision);
+}
+static DEVICE_ATTR_RO(hw_rev);
+
+static ssize_t build_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
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
+	return sprintf(buf, "%08x\n", pcard->build_version);
 }
+static DEVICE_ATTR_RO(build);
 
-static ssize_t  show_cpld_config_reg(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t build_date_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->build_datestamp);
+}
+static DEVICE_ATTR_RO(build_date);
+
+static ssize_t build_time_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->build_timestamp);
+}
+static DEVICE_ATTR_RO(build_time);
+
+static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
 {
 	struct kp2000_device *pcard = dev_get_drvdata(dev);
 	u64 val;
 
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
+	return sprintf(buf, "%016llx\n", val);
 }
+static DEVICE_ATTR_RO(cpld_reg);
 
 static ssize_t cpld_reconfigure(struct device *dev,
 				struct device_attribute *attr,
@@ -64,16 +116,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
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
+static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static const struct attribute *kp_attr_list[] = {
 	&dev_attr_ssid.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
