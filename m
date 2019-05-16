Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1345720F75
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AC2485784;
	Thu, 16 May 2019 20:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SB+MKGLPfFPn; Thu, 16 May 2019 20:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F5BA8401E;
	Thu, 16 May 2019 20:04:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486691BF964
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 468143137A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qdbVayBCmcdT
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 673252202C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C510kjwk8qlIstG3e7jmx2FnusSJlDr3+RdRnIog3J0=; b=Ycrfk4n+T9XwhoA7w/junHeBbN
 0gufVT9c+jiUzANp7Fdfsc0UYT6xBZqfIpeq12zRNLSV0KQyotZpgIrEOVd4V9ZqHZHw4QBAsAep8
 0vxIT9hE+DQDLUmWoAnud72durdkziRbOG8u3MmnF+Hm9I+svSF+OGPwhpGZzx8bxpbJWl6TOaJQT
 cMyrUIonUpxyPdHJ/t1GF2R+HexwDrhYZ8b+fBGM268MVecbArNmDOnqPsSH1kGMPwKQXxumsqvKc
 4f/vJrAaxkn/9+yqRMCa4m71jaq9zRTo/erc6vO4G9H6t/ZICmXvM62uuE6QRl5aR3eDM77IxbSfS
 xs3Q8AEw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbr-0007Ec-Um; Thu, 16 May 2019 21:04:12 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 02/11] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes.
Date: Thu, 16 May 2019 21:04:02 +0100
Message-Id: <20190516200411.17715-3-jeremy@azazel.net>
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
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 138 ++++++++++++-------
 1 file changed, 92 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 6a2ebdf20113..101eb23caaac 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -145,55 +145,102 @@ struct kpc_uio_device {
     u16 core_num;
 };
 
-static ssize_t  show_attr(struct device *dev, struct device_attribute *attr, char *buf)
+static ssize_t offset_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
 {
-    struct kpc_uio_device *kudev = dev_get_drvdata(dev);
-
-    #define ATTR_NAME_CMP(v)  (strcmp(v, attr->attr.name) == 0)
-    if ATTR_NAME_CMP("offset"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
-    } else if ATTR_NAME_CMP("size"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.length);
-    } else if ATTR_NAME_CMP("type"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
-    }
-    else if ATTR_NAME_CMP("s2c_dma"){
-        if (kudev->cte.s2c_dma_present){
-            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.s2c_dma_channel_num);
-        } else {
-            return scnprintf(buf, PAGE_SIZE, "not present\n");
-        }
-    } else if ATTR_NAME_CMP("c2s_dma"){
-        if (kudev->cte.c2s_dma_present){
-            return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.c2s_dma_channel_num);
-        } else {
-            return scnprintf(buf, PAGE_SIZE, "not present\n");
-        }
-    }
-    else if ATTR_NAME_CMP("irq_count"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_count);
-    } else if ATTR_NAME_CMP("irq_base_num"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_base_num);
-    } else if ATTR_NAME_CMP("core_num"){
-        return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
-    } else {
-        return 0;
-    }
-    #undef ATTR_NAME_CMP
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.offset);
+}
+
+static ssize_t size_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.length);
 }
 
+static ssize_t type_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.type);
+}
+
+static ssize_t s2c_dma_ch_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	return 0;
+}
+
+static ssize_t c2s_dma_ch_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	return 0;
+}
+
+static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
 
-DEVICE_ATTR(offset,  0444, show_attr, NULL);
-DEVICE_ATTR(size,    0444, show_attr, NULL);
-DEVICE_ATTR(type,    0444, show_attr, NULL);
-DEVICE_ATTR(s2c_dma_ch, 0444, show_attr, NULL);
-DEVICE_ATTR(c2s_dma_ch, 0444, show_attr, NULL);
-DEVICE_ATTR(s2c_dma, 0444, show_attr, NULL);
-DEVICE_ATTR(c2s_dma, 0444, show_attr, NULL);
-DEVICE_ATTR(irq_count, 0444, show_attr, NULL);
-DEVICE_ATTR(irq_base_num, 0444, show_attr, NULL);
-DEVICE_ATTR(core_num, 0444, show_attr, NULL);
-struct attribute * kpc_uio_class_attrs[] = {
+	if (!kudev->cte.s2c_dma_present)
+		return scnprintf(buf, PAGE_SIZE, "not present\n");
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n",
+			 kudev->cte.s2c_dma_channel_num);
+}
+
+static ssize_t c2s_dma_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	if (!kudev->cte.c2s_dma_present)
+		return scnprintf(buf, PAGE_SIZE, "not present\n");
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n",
+			 kudev->cte.c2s_dma_channel_num);
+}
+
+static ssize_t irq_count_show(struct device *dev, struct device_attribute *attr,
+			      char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_count);
+}
+
+static ssize_t irq_base_num_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->cte.irq_base_num);
+}
+
+static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
+}
+
+DEVICE_ATTR(offset,       0444, offset_show,       NULL);
+DEVICE_ATTR(size,         0444, size_show,         NULL);
+DEVICE_ATTR(type,         0444, type_show,         NULL);
+DEVICE_ATTR(s2c_dma_ch,   0444, s2c_dma_ch_show,   NULL);
+DEVICE_ATTR(c2s_dma_ch,   0444, c2s_dma_ch_show,   NULL);
+DEVICE_ATTR(s2c_dma,      0444, s2c_dma_show,      NULL);
+DEVICE_ATTR(c2s_dma,      0444, c2s_dma_show,      NULL);
+DEVICE_ATTR(irq_count,    0444, irq_count_show,    NULL);
+DEVICE_ATTR(irq_base_num, 0444, irq_base_num_show, NULL);
+DEVICE_ATTR(core_num,     0444, core_num_show,     NULL);
+
+struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
 	&dev_attr_size.attr,
 	&dev_attr_type.attr,
@@ -207,7 +254,6 @@ struct attribute * kpc_uio_class_attrs[] = {
 	NULL,
 };
 
-
 static
 int  kp2000_check_uio_irq(struct kp2000_device *pcard, u32 irq_num)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
