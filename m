Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E0421018
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C1C38826C;
	Thu, 16 May 2019 21:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RFd1TbRHVg67; Thu, 16 May 2019 21:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D35F185F5D;
	Thu, 16 May 2019 21:38:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6BDE1BF9BA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0509121553
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pw2aMx0qWg2p
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D99B22650
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=638NHsBMNm1k+7tYfUf3y5DtMxvCJSAluGVz/BAfNqI=; b=mD3zUHlVgGgWIUwrstYecYS3qL
 n4ZaSSmQ7oTrAkZEcpwa3TbmVBypOPTab1Bo19Iy4wm9tHDGcv9Gb4psLwCeEOpXQgNBKE8ukehju
 C+nTrYFUpgrn57MDAA6NvVDhUBcUCC60vAZ9Zly2c/W0Y3ZI7a4qhcgylk7RMi4PIJ8B/pTXPu3aS
 uygguefELFd1kVvSRt1nydqTmGdUWCp7ZaKeDRe2TXnAoQY5PSs4WagUadCm2vwY7dse/A4Yx8vRf
 Y4OZsnhWYpBlcA4q9MVuT8+Amz51DtLa4zaDHLDeid4b29EnZlsN/DAOkbud3iDf2EKnaHgdkdKP1
 uEpOEbTw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4s-0000d7-O7; Thu, 16 May 2019 22:38:14 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 3/9] staging: kpc2000: declare all kpc_uio_class device
 attributes as static.
Date: Thu, 16 May 2019 22:38:08 +0100
Message-Id: <20190516213814.22232-4-jeremy@azazel.net>
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
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 3798f8e2e165..3073b4813b7a 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -227,16 +227,16 @@ static ssize_t core_num_show(struct device *dev, struct device_attribute *attr,
 	return sprintf(buf, "%u\n", kudev->core_num);
 }
 
-DEVICE_ATTR_RO(offset);
-DEVICE_ATTR_RO(size);
-DEVICE_ATTR_RO(type);
-DEVICE_ATTR_RO(s2c_dma_ch);
-DEVICE_ATTR_RO(c2s_dma_ch);
-DEVICE_ATTR_RO(s2c_dma);
-DEVICE_ATTR_RO(c2s_dma);
-DEVICE_ATTR_RO(irq_count);
-DEVICE_ATTR_RO(irq_base_num);
-DEVICE_ATTR_RO(core_num);
+static DEVICE_ATTR_RO(offset);
+static DEVICE_ATTR_RO(size);
+static DEVICE_ATTR_RO(type);
+static DEVICE_ATTR_RO(s2c_dma_ch);
+static DEVICE_ATTR_RO(c2s_dma_ch);
+static DEVICE_ATTR_RO(s2c_dma);
+static DEVICE_ATTR_RO(c2s_dma);
+static DEVICE_ATTR_RO(irq_count);
+static DEVICE_ATTR_RO(irq_base_num);
+static DEVICE_ATTR_RO(core_num);
 
 struct attribute *kpc_uio_class_attrs[] = {
 	&dev_attr_offset.attr,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
