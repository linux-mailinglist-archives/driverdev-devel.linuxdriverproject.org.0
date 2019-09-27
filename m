Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 541A4C0348
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01080862FC;
	Fri, 27 Sep 2019 10:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hVDyc1b0syJr; Fri, 27 Sep 2019 10:16:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EB81858B6;
	Fri, 27 Sep 2019 10:16:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C9F21BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9063722795
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naYb4s6+i64s for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:16:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id F1EA7227AA
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:15:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 83A38AF92;
 Fri, 27 Sep 2019 10:15:31 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 13/17] staging: qlge: Remove useless memset
Date: Fri, 27 Sep 2019 19:12:07 +0900
Message-Id: <20190927101210.23856-14-bpoirier@suse.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927101210.23856-1-bpoirier@suse.com>
References: <20190927101210.23856-1-bpoirier@suse.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This just repeats what the other memset a few lines above did.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index ef33db118aa1..8da596922582 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -2812,7 +2812,6 @@ static int qlge_init_bq(struct qlge_bq *bq)
 	buf_ptr = bq->base;
 	bq_desc = &bq->queue[0];
 	for (i = 0; i < QLGE_BQ_LEN; i++, buf_ptr++, bq_desc++) {
-		memset(bq_desc, 0, sizeof(*bq_desc));
 		bq_desc->index = i;
 		bq_desc->buf_ptr = buf_ptr;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
