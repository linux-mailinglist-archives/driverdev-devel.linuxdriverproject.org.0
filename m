Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A0203268
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F65E86C8E;
	Mon, 22 Jun 2020 08:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXsZeY2sCQDs; Mon, 22 Jun 2020 08:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C951E86BC9;
	Mon, 22 Jun 2020 08:48:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68F521BF95A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 642AF21539
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZMU6PhWsGNqF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 3614B203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815704; x=1624351704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=zEeIF0gLsuOQqGUxASBteXiI/Uzcc3VyNPG98uKzZDk=;
 b=Coht1B+1EhZzdYY2sc1dnQYspe0HPNvpslBYbmYt3CCRvUzzGp/vRUQ9
 jfM67tGtmf13xY5rab0jZxE6HLFTFHZVMPFmrmwXWqrEq8J+RTgkgG0Lp
 2vt0vU8fjWap62Yk5kvx4MtACP7rPg//65wQBfTWGkQeUUOpScINLoamT
 bZYmOhSwwwNjPqHONKQjrkg3ZBJgKxpUdu4sn+avlOU8cJN3WGv+2Qicp
 NwXuA1w3AXe9LKkY8FX9z79jxDK3oUa+VD6VgR4bxMzfPy4L6W9sCZHUn
 dCary19669QCaVK+iNdzUwM8ErxELBFvfXw9zXYLBVt22wMtIQMF+lra0 w==;
IronPort-SDR: CbMayUzc/og/GObiz2Zl2bH2OiCx+Ejn4GKJJYuHr8q7Rn6wT4sLy7lSHcYXq9G1zv2B7zo2G5
 3Y2eMEcWxyZs14vf+xUTK2XkLAQtcHob6F5dOo0aokEXZngDAx1oWTZ5xj1E2Hi8KuOIzvthlh
 47H4ewi7FqmtLrAIb9DVYZkJmD2l8LEZecW0Qzjx+hFGc9+cHjCFq5UQqN4o5nbRkFpMkAA8U1
 Ks0Oqa1agHj2UyJOPSSXxJnelyuKAntqKGXQ3mWkLf/tUjZCq0y5Kx21C3wT3W48ZF8MGiuT8Z
 HCI=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="79291314"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:22 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:22 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 4/6] staging: most: cdev: fix up parenthesizing
Date: Mon, 22 Jun 2020 10:48:13 +0200
Message-ID: <1592815695-19305-5-git-send-email-christian.gromm@microchip.com>
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

This patch removes unnecessary parnthesis.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 9fc84fa..d374cc0 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -420,7 +420,7 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 	int retval;
 	int current_minor;
 
-	if ((!cfg) || (!name))
+	if (!cfg || !name)
 		return -EINVAL;
 
 	c = get_channel(iface, channel_id);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
