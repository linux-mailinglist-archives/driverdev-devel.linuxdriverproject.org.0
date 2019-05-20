Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21192241D1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 22:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 798F085D94;
	Mon, 20 May 2019 20:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhWt3l-8Jv4A; Mon, 20 May 2019 20:10:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9A70857FB;
	Mon, 20 May 2019 20:10:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB9671BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92CF786DF1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2f9++PzljZ4Y
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1407E86C1D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YNb+QuF40wzOkGq4shAcJIo6ug0lzzU0SCK3lzMs/uE=; b=YRRfrLY8E/MOydUoFl/CENJX9u
 dhv8qfuyEkqpCpOckqIkE0tOSN3Sk6OARM6/2CZsEl/SrXPlb/CMKQtidligXiqwmBRygrZ8WhRtH
 SeDY4OkFGPa6VbtX4gMAXZWp4xU0mEIMiUZfhy0o8C80Peppp4kkIB9+PvbH7iLq2F7W3G5YbSFBH
 HG4pQgCfQxLXOOUzgOPUTssRPUTP1zjyL0rrimi8XWwRp2bbAReRvWHu9Mjxr3CqZXTwB/sTs9SjA
 c2jdxKX347X1EpEKrQg8yHIX4tpTQWZAd/6HMUYqFPH6qZzobF946i1ZQz5gI9z2wEocDfHCFMNgy
 0GVJnBPA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoL0-0004Ol-Md; Mon, 20 May 2019 20:52:46 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v4 2/8] staging: kpc2000: removed two kpc_uio_class device
 attributes.
Date: Mon, 20 May 2019 20:52:37 +0100
Message-Id: <20190520195243.917-11-jeremy@azazel.net>
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

The show functions of two attributes output nothing and they are unused.
Removed them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
Reported-by: Matt Sickler <matt.sickler@daktronics.com>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 3339b84b8666..68d03f1d60f2 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -172,20 +172,6 @@ static ssize_t type_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RO(type);
 
-static ssize_t s2c_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-static DEVICE_ATTR_RO(s2c_dma_ch);
-
-static ssize_t c2s_dma_ch_show(struct device *dev,
-			       struct device_attribute *attr, char *buf)
-{
-	return 0;
-}
-static DEVICE_ATTR_RO(c2s_dma_ch);
-
 static ssize_t s2c_dma_show(struct device *dev, struct device_attribute *attr,
 			    char *buf)
 {
@@ -241,8 +227,6 @@ struct attribute *kpc_uio_class_attrs[] = {
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
