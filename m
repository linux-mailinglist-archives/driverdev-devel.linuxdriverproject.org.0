Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B88203269
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 258E1215DF;
	Mon, 22 Jun 2020 08:48:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBTYKE7xvXgc; Mon, 22 Jun 2020 08:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E79EE2154E;
	Mon, 22 Jun 2020 08:48:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F00191BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC39F21539
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ql2OMHWPIe9E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C362203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815705; x=1624351705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=4y4zOs9Jn9Db7bTxZUXiANWY5j7HdRIw1UoZx7b1E3Y=;
 b=DH/I+Dy58XH0scslhru6EzMg/X37PaB8WxfSDlNLVZMV2Qg512eggNrB
 wwyDvUPNXlh/iYjWDq/Ol+moAFVW7YyTdOMqRJHdL5JrehpkOwVqRiiVM
 XLz3FftQQN+Ji4eU8ZKVv6kk8KI8LVe3sYkMkRFepSE+l433KugIGcClb
 6iwiCTb0WtY1QLHvnPE0XXrpKMwXEAsAkyXhra/4J5He8a4kjV7U78cKS
 plVUeuDtjrFGfI+pI2fLVkOUN34ZfmuY9PEqGp0hdxG7uvRBspQYHy1BS
 nElNTD8CgMYDxpI56IBu137YjJPJbiqQ8YyLQuFn6M1K8QZ2m0jZ3q74R g==;
IronPort-SDR: Elp+G/9e8GUz3P95AnCA52Y5jeewCTcYp+trj5+/Jd04wuaM52FXJ3NStVWuUTD/OUZEVhD9Cz
 0t1yiD36hnFTb+UR9u5HSCnbswDGgFgk3eEg0DNqHLHbnZs9ejVbT6X5iWoYrVYYkz9EQgPRqZ
 RpwAbPH5QUg0ONlDSzw+PfLRD+7D+0RUjz1zb1e+PVXX6rbmj8kMQUUjK4xayOmSR/pGSXPyT4
 sGZkXpRs3K54p6/c06E0UeK64onN24nw7nfjw1K+5uiFuC2JPV4ubzWQGtKjT3VWHQdzBP37vD
 QcA=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="79291321"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:25 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:24 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 6/6] staging: most: cdev: simplify list iteration
Date: Mon, 22 Jun 2020 10:48:15 +0200
Message-ID: <1592815695-19305-7-git-send-email-christian.gromm@microchip.com>
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

This patch uses a less confusing list traversing structure to
either return an item of the list that meets the prerequisites
or NULL otherwise.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index aa7d7af..0448807 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -66,19 +66,16 @@ static struct comp_channel *get_channel(struct most_interface *iface, int id)
 {
 	struct comp_channel *c, *tmp;
 	unsigned long flags;
-	int found_channel = 0;
 
 	spin_lock_irqsave(&ch_list_lock, flags);
 	list_for_each_entry_safe(c, tmp, &channel_list, list) {
 		if ((c->iface == iface) && (c->channel_id == id)) {
-			found_channel = 1;
-			break;
+			spin_unlock_irqrestore(&ch_list_lock, flags);
+			return c;
 		}
 	}
 	spin_unlock_irqrestore(&ch_list_lock, flags);
-	if (!found_channel)
-		return NULL;
-	return c;
+	return NULL;
 }
 
 static void stop_channel(struct comp_channel *c)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
