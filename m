Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFB320F72
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 22:04:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7313C86722;
	Thu, 16 May 2019 20:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEsh_5R1GwFG; Thu, 16 May 2019 20:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1555C86741;
	Thu, 16 May 2019 20:04:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFA401BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD00286722
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qbl-e3rItrC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7109C86702
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 20:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vfi2/egEfK12hZrBhw5hqwH5PjWpfMbFb/VG6kdCPEE=; b=n1rm2fGL6I0kVxGeVmNuYd4aD8
 A41iqfC/ayhALQqStgap3VonW5mni712ps78YY7Vz/rTG7/v2FgQHUeLllrEzwCfV/GTGtpORWqYx
 V5i7HPjk5jSauCzTlppX4iqE8jLFs8tTx7HUKgyQgbrcCO09y0BBYInTCo6YCmvKTAjbKsvmpOPbO
 ZsjtP+se3WUVJ+UnVaRACRNIOXYrLPPab4Un9q/AMHXzKgamWVnjhsIfm52W+M8TbJ8XvJm0wecOM
 OBUdEpAcWhvyXIIZpUtD6AbpNej1dmF/Nzv2eonaZB4wWTpIIhJxH1PJ3bpFysVog70x5uncYvDAf
 dxK2GZZw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRMbs-0007Ec-4C; Thu, 16 May 2019 21:04:12 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 03/11] staging: kpc2000: define all kpc_uio_class device
 attributes as read-only.
Date: Thu, 16 May 2019 21:04:03 +0100
Message-Id: <20190516200411.17715-4-jeremy@azazel.net>
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

All of the device attributes are read-only, so use DEVICE_ATTR_RO to
define them.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 101eb23caaac..da15ae5b5a3d 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -229,16 +229,16 @@ static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
 	return scnprintf(buf, PAGE_SIZE, "%u\n", kudev->core_num);
 }
 
-DEVICE_ATTR(offset,       0444, offset_show,       NULL);
-DEVICE_ATTR(size,         0444, size_show,         NULL);
-DEVICE_ATTR(type,         0444, type_show,         NULL);
-DEVICE_ATTR(s2c_dma_ch,   0444, s2c_dma_ch_show,   NULL);
-DEVICE_ATTR(c2s_dma_ch,   0444, c2s_dma_ch_show,   NULL);
-DEVICE_ATTR(s2c_dma,      0444, s2c_dma_show,      NULL);
-DEVICE_ATTR(c2s_dma,      0444, c2s_dma_show,      NULL);
-DEVICE_ATTR(irq_count,    0444, irq_count_show,    NULL);
-DEVICE_ATTR(irq_base_num, 0444, irq_base_num_show, NULL);
-DEVICE_ATTR(core_num,     0444, core_num_show,     NULL);
+DEVICE_ATTR_RO(offset);
+DEVICE_ATTR_RO(size);
+DEVICE_ATTR_RO(type);
+DEVICE_ATTR_RO(s2c_dma_ch);
+DEVICE_ATTR_RO(c2s_dma_ch);
+DEVICE_ATTR_RO(s2c_dma);
+DEVICE_ATTR_RO(c2s_dma);
+DEVICE_ATTR_RO(irq_count);
+DEVICE_ATTR_RO(irq_base_num);
+DEVICE_ATTR_RO(core_num);
 
 struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
