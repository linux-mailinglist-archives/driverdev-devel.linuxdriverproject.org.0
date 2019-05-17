Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A292176F
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD7253152B;
	Fri, 17 May 2019 11:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJxZgt-MypF1; Fri, 17 May 2019 11:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D07E3150F;
	Fri, 17 May 2019 11:03:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B0F51C163A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 080BA84812
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OvekwZfDRAOs
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 177EE847DD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=raEc68/LLNZm7xeHBkSoRFxf6awVXekyLjBPlXVp4eo=; b=lLwwQv2xvm8wfkReD7db7fpEn9
 0pIf9pNHI0hPZuO2BLODoYZwUS0ZlAyAL1ko+86F1XKLKkJ2dvvMvrKCv7AI9J9UKSA5ltrkQ+5GE
 XvU/9b6sfj6eustp1vd2ywdoiuuu/9Slw71oStYopWstphdWMdtOEC2wdvgpBvRepvAiGMwUQOm95
 mXLH2XruDvPaiZfh5nFv1xn79OZYuNi4kzVKwcXOL6iA4jOrsKupRUQxKfBMkVFodoAOV53OgSiBC
 Z9bXVN85avr7As+1Y4bsHtnkUCuzsXBjxGIH+JWqgkiIac0qGirSVSJi8suz1/iIniCmeyni2ip0u
 bq7jZyiA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadv-00045l-Fk; Fri, 17 May 2019 12:03:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 1/6] staging: kpc2000: add separate show functions for
 kpc_uio_class device attributes,
 defined them as read-only and declared them static.
Date: Fri, 17 May 2019 12:03:10 +0100
Message-Id: <20190517110315.10646-2-jeremy@azazel.net>
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

Replaced scnprintf calls with sprintf since all the outputs are short
bounded strings or single integers.

All of the device attributes are read-only, so use DEVICE_ATTR_RO to
define them.

The definitions are only used to populate the kpc_uio_class_attrs
attribute array, so declare them as static.

Fixes the following sparse warnings:

  drivers/staging/kpc2000/kpc2000/cell_probe.c:220:1: warning: symbol 'dev_attr_offset' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:221:1: warning: symbol 'dev_attr_size' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:222:1: warning: symbol 'dev_attr_type' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:223:1: warning: symbol 'dev_attr_s2c_dma' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:224:1: warning: symbol 'dev_attr_c2s_dma' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:225:1: warning: symbol 'dev_attr_irq_count' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:226:1: warning: symbol 'dev_attr_irq_base_num' was not declared. Should it be static?
  drivers/staging/kpc2000/kpc2000/cell_probe.c:227:1: warning: symbol 'dev_attr_core_num' was not declared. Should it be static?

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 135 ++++++++++++-------
 1 file changed, 89 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 6a2ebdf20113..3339b84b8666 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -145,55 +145,99 @@ struct kpc_uio_device {
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
+	return sprintf(buf, "%u\n", kudev->cte.offset);
+}
+static DEVICE_ATTR_RO(offset);
+
+static ssize_t size_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", kudev->cte.length);
 }
+static DEVICE_ATTR_RO(size);
 
+static ssize_t type_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", kudev->cte.type);
+}
+static DEVICE_ATTR_RO(type);
+
+static ssize_t s2c_dma_ch_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	return 0;
+}
+static DEVICE_ATTR_RO(s2c_dma_ch);
+
+static ssize_t c2s_dma_ch_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	return 0;
+}
+static DEVICE_ATTR_RO(c2s_dma_ch);
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
+		return sprintf(buf, "%s", "not present\n");
+
+	return sprintf(buf, "%u\n", kudev->cte.s2c_dma_channel_num);
+}
+static DEVICE_ATTR_RO(s2c_dma);
+
+static ssize_t c2s_dma_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	if (!kudev->cte.c2s_dma_present)
+		return sprintf(buf, "%s", "not present\n");
+
+	return sprintf(buf, "%u\n", kudev->cte.c2s_dma_channel_num);
+}
+static DEVICE_ATTR_RO(c2s_dma);
+
+static ssize_t irq_count_show(struct device *dev, struct device_attribute *attr,
+			      char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", kudev->cte.irq_count);
+}
+static DEVICE_ATTR_RO(irq_count);
+
+static ssize_t irq_base_num_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", kudev->cte.irq_base_num);
+}
+static DEVICE_ATTR_RO(irq_base_num);
+
+static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct kpc_uio_device *kudev = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", kudev->core_num);
+}
+static DEVICE_ATTR_RO(core_num);
+
+struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
 	&dev_attr_size.attr,
 	&dev_attr_type.attr,
@@ -207,7 +251,6 @@ struct attribute * kpc_uio_class_attrs[] = {
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
