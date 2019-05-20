Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FB241CC
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 22:10:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABAB1855BD;
	Mon, 20 May 2019 20:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cu0PnsixvF4n; Mon, 20 May 2019 20:10:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4734A8506F;
	Mon, 20 May 2019 20:10:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE3041BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF93386DF1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id btpf4OFnzHHj
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 738A886C1D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ARZvufcgPRnk1e2UrYLz/2sQVoeUJyv5uKCneWvctHg=; b=SN51AIpm2tf82fz1aZJgKcMGUc
 OVxhH+4lPXhPecY27lG3Io+wt/OKuKTiLQ/drCfAqDSUCnOyAosiV0x/DZSKLrXh7c5NMB1Rp2qnH
 inn+BRgEiSBzWhzT8ocV6PlF8cad4FxToVDGC6/t33KoVveZZWhfjYy4IAn/AXDxe0vjBmhiOjT9B
 5gXYeAeqeb4us0ibeHM4SIdA0NJ7W+0Ou0/cOLXRKS9Hz+uCm3+La/kNsBic9fOx0hK8lmMJPh90D
 N+TNwi0q9t5kJuDCvTPqPfAskZpbrv7FOQnr4wWwthRSpxzRWJUaNXQwE6p2XFPxHVAx9FZ6Icdiz
 d524JAYg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoL1-0004Ol-HT; Mon, 20 May 2019 20:52:47 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v4 5/8] staging: kpc2000: added separate show functions for
 readable kp device attributes, defined them as read-only,
 and declared them static.
Date: Mon, 20 May 2019 20:52:40 +0100
Message-Id: <20190520195243.917-14-jeremy@azazel.net>
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

Defineed separate simple show functions for each attribute instead of
having a one big one containing a chain of conditionals.

Replaced calls to scnprintf with sprintf since all the outputs are
single integers.

All the readable device attributes are read-only, so used DEVICE_ATTR_RO
to define them.

The definitions are only used to populate the kp_attr_list attribute
array, so declared them as static.

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
 drivers/staging/kpc2000/kpc2000/core.c | 106 +++++++++++++++++--------
 1 file changed, 73 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index c33595cc1332..38de7e7a824d 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -32,7 +32,7 @@ static struct kp2000_device *get_pcard(struct device *dev)
 	return pci_get_drvdata(pdev);
 }
 
-static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
+static ssize_t ssid_show(struct device *dev, struct device_attribute *attr,
 			 char *buf)
 {
 	struct kp2000_device *pcard = get_pcard(dev);
@@ -40,36 +40,84 @@ static ssize_t show_attr(struct device *dev, struct device_attribute *attr,
 	if (!pcard)
 		return -ENXIO;
 
-	if (strcmp("ssid", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ssid);
+	return sprintf(buf, "%016llx\n", pcard->ssid);
+}
+static DEVICE_ATTR_RO(ssid);
 
-	if (strcmp("ddna", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%016llx\n", pcard->ddna);
+static ssize_t ddna_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
 
-	if (strcmp("card_id", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%08x\n", pcard->card_id);
+	if (!pcard)
+		return -ENXIO;
+
+	return sprintf(buf, "%016llx\n", pcard->ddna);
+}
+static DEVICE_ATTR_RO(ddna);
+
+static ssize_t card_id_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
 
-	if (strcmp("hw_rev", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%08x\n",
-				 pcard->hardware_revision);
+	if (!pcard)
+		return -ENXIO;
 
-	if (strcmp("build", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%08x\n",
-				 pcard->build_version);
+	return sprintf(buf, "%08x\n", pcard->card_id);
+}
+static DEVICE_ATTR_RO(card_id);
 
-	if (strcmp("build_date", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%08x\n",
-				 pcard->build_datestamp);
+static ssize_t hw_rev_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
 
-	if (strcmp("build_time", attr->attr.name) == 0)
-		return scnprintf(buf, PAGE_SIZE, "%08x\n",
-				 pcard->build_timestamp);
+	if (!pcard)
+		return -ENXIO;
 
-	return -ENXIO;
+	return sprintf(buf, "%08x\n", pcard->hardware_revision);
 }
+static DEVICE_ATTR_RO(hw_rev);
 
-static ssize_t show_cpld_config_reg(struct device *dev,
-				    struct device_attribute *attr, char *buf)
+static ssize_t build_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
+
+	if (!pcard)
+		return -ENXIO;
+
+	return sprintf(buf, "%08x\n", pcard->build_version);
+}
+static DEVICE_ATTR_RO(build);
+
+static ssize_t build_date_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
+
+	if (!pcard)
+		return -ENXIO;
+
+	return sprintf(buf, "%08x\n", pcard->build_datestamp);
+}
+static DEVICE_ATTR_RO(build_date);
+
+static ssize_t build_time_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = get_pcard(dev);
+
+	if (!pcard)
+		return -ENXIO;
+
+	return sprintf(buf, "%08x\n", pcard->build_timestamp);
+}
+static DEVICE_ATTR_RO(build_time);
+
+static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
 {
 	struct kp2000_device *pcard = get_pcard(dev);
 	u64 val;
@@ -78,8 +126,9 @@ static ssize_t show_cpld_config_reg(struct device *dev,
 		return -ENXIO;
 
 	val = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
+	return sprintf(buf, "%016llx\n", val);
 }
+static DEVICE_ATTR_RO(cpld_reg);
 
 static ssize_t cpld_reconfigure(struct device *dev,
 				struct device_attribute *attr,
@@ -103,16 +152,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
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
