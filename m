Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C216620F76
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1317882D3;
	Thu, 16 May 2019 20:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X9WikmFikl0B; Thu, 16 May 2019 20:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44C8588288;
	Thu, 16 May 2019 20:04:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 255411BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 229CE83775
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zinKDGteOiLT
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9B5383970
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=smpwGWSHJTP/C4HcHG1SDYIv1HfrWSg9YIjLaEP8NQo=; b=BVryW8g7rSM0RVI7xXXAAmHeTK
 g4cbT3K//oolmVfrK2hj6Yg+i3c7dqi13HibhTNRGARsEVjCdyPEQm+fkqjUON/Q4ac8+N8bPpAFG
 wErnZUf7wvaJ6YUmmDXwJxDWpEmktQCZT8r1FzpFZr6u8CeTkxzNeBpI4g6aCls92vxxMT6qfMKdI
 5I90gMqRxsrQHLPXvolGp+eldAzv0VztRrqPMwWubVCMQPBuCYVUG4vLZ3GJ+zkWN3VTaUzZH3CmT
 8np/U4ejLDcLIEJJSDr3mE/+FpqUmOTaITJ0zYBbhakWjmY3ULc85AGpjGQ3SApAYymVtQHTzPetP
 vTLddUlw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbt-0007Ec-0y; Thu, 16 May 2019 21:04:13 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 09/11] staging: kpc2000: formatting fixes for kp device
 attributes.
Date: Thu, 16 May 2019 21:04:09 +0100
Message-Id: <20190516200411.17715-10-jeremy@azazel.net>
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

Fixed indentation of cpld_reconfigure store call-back and definition of
attribute list.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 51 ++++++++++++++------------
 1 file changed, 27 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index e7e0d188ff73..7a5dd5f2300b 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -91,20 +91,24 @@ static ssize_t cpld_reg_show(struct device *dev, struct device_attribute *attr,
 	return scnprintf(buf, PAGE_SIZE, "%016llx\n", val);
 }
 
-static ssize_t cpld_reconfigure(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
+static ssize_t cpld_reconfigure(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t count)
 {
-    struct kp2000_device *pcard = dev_get_drvdata(dev);
-    long wr_val;
-    int rv;
-
-    rv = kstrtol(buf, 0, &wr_val);
-    if (rv < 0)  return rv;
-    if (wr_val > 7)  return -EINVAL;
-
-    wr_val = wr_val << 8;
-    wr_val |= 0x1; // Set the "Configure Go" bit
-    writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-    return count;
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
 
 DEVICE_ATTR(ssid,             0444, ssid_show,       NULL);
@@ -118,19 +122,18 @@ DEVICE_ATTR(cpld_reg,         0444, cpld_reg_show,   NULL);
 DEVICE_ATTR(cpld_reconfigure, 0220, NULL,            cpld_reconfigure);
 
 static const struct attribute *kp_attr_list[] = {
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
