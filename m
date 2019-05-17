Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C21D21772
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF73431522;
	Fri, 17 May 2019 11:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2657B+OLGvpQ; Fri, 17 May 2019 11:03:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1D9531525;
	Fri, 17 May 2019 11:03:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 466381BF5B4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 435C587113
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kAZwFXWU0uN9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF4038714F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YNb+QuF40wzOkGq4shAcJIo6ug0lzzU0SCK3lzMs/uE=; b=pA7y6Zgp/EHPzPJxuZgkunkum4
 sN2YrDUvEYX+8nS6QrqKRBrPjwpzbGg8GwHAxAhYMnJ4jmT6yz2V+MUuCTSBHelYOh+IGF94CWJ0A
 KZXRR4zGDdxIFQlurKVwu24odqfz3c9d/mTalm7j/K4e6ACVkf+CHL9/xDzPTwgbTL5IydKWWNYTV
 hs348DGEbeHbhFELjZMV7TTPQuDEbukEqnG4OWU132jhCRrzRmPuF5/SKI7RznbLHNg7aXogm31vS
 N0pg2ryG6dXc2VULJ3lmf0cKG690PpyDX2N4yQIDwDBwkh7hwz68BWn/Wz0bJ96trFbmKw0NYSzGF
 QNFMffbA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadv-00045l-NG; Fri, 17 May 2019 12:03:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 2/6] staging: kpc2000: removed two kpc_uio_class device
 attributes.
Date: Fri, 17 May 2019 12:03:11 +0100
Message-Id: <20190517110315.10646-3-jeremy@azazel.net>
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
