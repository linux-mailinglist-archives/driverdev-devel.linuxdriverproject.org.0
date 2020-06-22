Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC9203262
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97CCC86938;
	Mon, 22 Jun 2020 08:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sdmjxCabuVcj; Mon, 22 Jun 2020 08:48:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0B4186AE2;
	Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1A1F1BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DBE95203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SMwHvpVK7iws
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BE8421551
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815702; x=1624351702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=y4Vdh3zh6IO3gxm0YXlbXzDo3jBfOF7cx3lfU0AxhJc=;
 b=sBnUxftDPs5SNfJ+tAPjL+bXh8HkLnxhINWqSPDzs7LD9GLoIaRlRjNF
 pdEHuHZnQNdozuygk3Icr229ZAuYPk/cAu9u5qDgfPy887Cw+k+xrU9wg
 +xo6MJF1FWpzTBO5CTTYO+qmyxg4TZAn0GVHLyC0DfP068E4x2XZLGnQd
 qcR3/QamcR7RjGYdCESQcJ2NWfA4fwQfyo22JwU6zFADkA90XV4HOzTGI
 rh4uH6zNPPIZnKRGbquOVTgaZmEobIDiX+qiDhRTMB6xLRxGp3AXkz2Vx
 Kg7z3Ecmid1+mj+lXwRtTep1PqY6cWojKIcTo2vNqXgZJ0ycZ8J12n0/A w==;
IronPort-SDR: tLJimnbdi6b/xfNOrG1djqvjxlGF9DZXVKjy9yQgbACYedE2W+08yJejRN5lFz35fh5T1tUseL
 ki6Ro9IJpHJKVCTdIg822lrF7W81PHuVbkkMhh/b4KMwGL/btzVkGkqr0SwyFx1GTT8L0q2lhN
 QVU2Sie9834ROfPloEVYO6pvYRMrdAyCE3lepdxvUkTQh6kz/UIqyHcJnPwwXtw3LEsoXIm5Mi
 JQ/ZiFeUyZPi7oCABic1/dt4kZao2EVYPxbVuDrZ9RUwiXINN87AvS/s+IwP6Uy+l3TRcvFQG+
 ieI=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="84541914"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:21 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:21 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 3/6] staging: most: cdev: remove overcautious parameter
 checking
Date: Mon, 22 Jun 2020 10:48:12 +0200
Message-ID: <1592815695-19305-4-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
References: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The interface pointer passed to a component API function cannot be NULL.
This patch removes unnecessary sanity checks of the pointer.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 394c762..9fc84fa 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -324,9 +324,6 @@ static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
 {
 	struct comp_channel *c;
 
-	if (!iface)
-		return -EINVAL;
-
 	c = get_channel(iface, channel_id);
 	if (!c)
 		return -ENXIO;
@@ -391,9 +388,6 @@ static int comp_tx_completion(struct most_interface *iface, int channel_id)
 {
 	struct comp_channel *c;
 
-	if (!iface)
-		return -EINVAL;
-
 	c = get_channel(iface, channel_id);
 	if (!c)
 		return -ENXIO;
@@ -426,7 +420,7 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	int retval;
 	int current_minor;
 
-	if ((!iface) || (!cfg) || (!name))
+	if ((!cfg) || (!name))
 		return -EINVAL;
 
 	c = get_channel(iface, channel_id);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
