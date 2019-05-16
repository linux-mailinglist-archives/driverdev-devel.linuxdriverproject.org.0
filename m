Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D68E21016
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4213D8742D;
	Thu, 16 May 2019 21:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DyWkcz8Z4EvT; Thu, 16 May 2019 21:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE1788733E;
	Thu, 16 May 2019 21:38:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54E701BF29A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52CD121553
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPWryUopFgBY
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E96B226F5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sszPXR+SzYElwamTQnz6dltenwpjYH+wI9F8w66ZpQg=; b=SGSIPGJys0b+VSalB8inpM7yf2
 AlL2Abi1FNYcrT7TYYWcXWaxjua71dC4SZ0lUClOPIY3sSFpHIFkot/kSn8EbAFGHWu0cBK/wEHG5
 D8EGdQLd/Pm4ZRkaUIsfW5fkbj6IKzjW0Vuq4A9zHDajoLRGM0tPtrvt2KoJ/llByHGq/7DVHQgHP
 UbStQs8NFZdv3zkGfBJUYnwOFeobmsy7hF9m3Dz/2e51hyGMhDgGbEALYdBQcv52mpSdiojN85bZM
 uBv2V8OZiELhmTE6Q0Dasr/7NILsF2n2Io8dSkEshnG3lgzm7uP5oAJ0xvO48lNh0xW8CZTsJvme6
 UUi/T5UQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4s-0000d7-T8; Thu, 16 May 2019 22:38:14 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 4/9] staging: kpc2000: removed two kpc_uio_class device
 attributes.
Date: Thu, 16 May 2019 22:38:09 +0100
Message-Id: <20190516213814.22232-5-jeremy@azazel.net>
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

The show functions of two attributes output nothing and they are unused.
Removed them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 3073b4813b7a..c93156ba5c31 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -169,18 +169,6 @@ static ssize_t type_show(struct device *dev, struct device_attribute *attr,
 	return sprintf(buf, "%u\n", kudev->cte.type);
 }
 
-static ssize_t s2c_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-
-static ssize_t c2s_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-
 static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
 			    char *buf)
 {
@@ -230,8 +218,6 @@ static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
 static DEVICE_ATTR_RO(offset);
 static DEVICE_ATTR_RO(size);
 static DEVICE_ATTR_RO(type);
-static DEVICE_ATTR_RO(s2c_dma_ch);
-static DEVICE_ATTR_RO(c2s_dma_ch);
 static DEVICE_ATTR_RO(s2c_dma);
 static DEVICE_ATTR_RO(c2s_dma);
 static DEVICE_ATTR_RO(irq_count);
@@ -242,8 +228,6 @@ struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
 	&dev_attr_size.attr,
 	&dev_attr_type.attr,
-	&dev_attr_s2c_dma_ch.attr,
-	&dev_attr_c2s_dma_ch.attr,
 	&dev_attr_s2c_dma.attr,
 	&dev_attr_c2s_dma.attr,
 	&dev_attr_irq_count.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
