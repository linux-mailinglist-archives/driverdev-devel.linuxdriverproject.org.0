Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9D30CDE
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 12:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2F3520419;
	Fri, 31 May 2019 10:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqaNXGY+EOgK; Fri, 31 May 2019 10:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF68A20404;
	Fri, 31 May 2019 10:52:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F26BF1BF386
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF7F6883E1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPCP41ToO7U7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D437882B5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cLbJXl9YeJeQaV7Us5iPT2o6tSp/wxuu1GPXGFK0wv8=; b=NQ4hwAsJSe3KuHyA6zpvSt2N4t
 bkWR93NDkhQ/L9cFiGU5udBw0BSWcuCdrCYNkW4zwh0srztnkEG3Jut729ax5ChI6GB+8p5S4gxVw
 BsHSyAqK2aXNkS3K39fOALAA144MSs8lGwI9MDAnEmc8u/8wC6z9kZ9oh33On+uYvZzJwzf+SEiej
 qAl094bQmdR2wkbAtAxlMAEjekkBK+X0/JDEtuFI78VtY7VAyqqbFhHHi9Ha/8kHcNeoZcj6afvpM
 YjzetDEOeNEgjP4JntTCfl3Z65zZS4sliaZ3Q8/mKA8U92ftEbc33qb1WkpxNYJ6V+AAW+4ZXDpdK
 vMzjIaRg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hWf9D-0006f6-Vn; Fri, 31 May 2019 11:52:32 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 1/2] staging: kpc2000: export more device attributes via sysfs.
Date: Fri, 31 May 2019 11:52:30 +0100
Message-Id: <20190531105231.26380-2-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531105231.26380-1-jeremy@azazel.net>
References: <20190531001156.GA25210@kroah.com>
 <20190531105231.26380-1-jeremy@azazel.net>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added more read-only device attributes in order to expose all the
information about the hardware which is available by calling read() or
ioct() on the misc device associated with it.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 57 ++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index a84cf8297917..4d6a443d7301 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -127,6 +127,58 @@ static ssize_t cpld_reconfigure(struct device *dev,
 }
 static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
+static ssize_t irq_mask_reg_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+	u64 val;
+
+	val = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
+	return sprintf(buf, "%016llx\n", val);
+}
+static DEVICE_ATTR_RO(irq_mask_reg);
+
+static ssize_t irq_active_reg_show(struct device *dev,
+				   struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+	u64 val;
+
+	val = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE);
+	return sprintf(buf, "%016llx\n", val);
+}
+static DEVICE_ATTR_RO(irq_active_reg);
+
+static ssize_t pcie_error_count_reg_show(struct device *dev,
+					 struct device_attribute *attr,
+					 char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+	u64 val;
+
+	val = readq(pcard->sysinfo_regs_base + REG_PCIE_ERROR_COUNT);
+	return sprintf(buf, "%016llx\n", val);
+}
+static DEVICE_ATTR_RO(pcie_error_count_reg);
+
+static ssize_t core_table_offset_show(struct device *dev,
+				      struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->core_table_offset);
+}
+static DEVICE_ATTR_RO(core_table_offset);
+
+static ssize_t core_table_length_show(struct device *dev,
+				      struct device_attribute *attr, char *buf)
+{
+	struct kp2000_device *pcard = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", pcard->core_table_length);
+}
+static DEVICE_ATTR_RO(core_table_length);
+
 static const struct attribute *kp_attr_list[] = {
 	&dev_attr_ssid.attr,
 	&dev_attr_ddna.attr,
@@ -137,6 +189,11 @@ static const struct attribute *kp_attr_list[] = {
 	&dev_attr_build_time.attr,
 	&dev_attr_cpld_reg.attr,
 	&dev_attr_cpld_reconfigure.attr,
+	&dev_attr_irq_mask_reg.attr,
+	&dev_attr_irq_active_reg.attr,
+	&dev_attr_pcie_error_count_reg.attr,
+	&dev_attr_core_table_offset.attr,
+	&dev_attr_core_table_length.attr,
 	NULL,
 };
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
