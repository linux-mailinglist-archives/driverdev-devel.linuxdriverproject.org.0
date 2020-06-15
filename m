Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA911FA3D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 01:02:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EF4B88542;
	Mon, 15 Jun 2020 23:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5cf9rh2ySgKo; Mon, 15 Jun 2020 23:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 281138847A;
	Mon, 15 Jun 2020 23:02:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1BC1BF3A7
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 23:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9792D8847A
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 23:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yy1MmRhBsBHS for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 23:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D7BA88293
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 23:02:52 +0000 (UTC)
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 833EB206B7;
 Mon, 15 Jun 2020 23:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592262171;
 bh=2fY6x6btMBGUWDGltZvwP9IaFu4qoglTHiwDo9vpb/U=;
 h=Date:From:To:Cc:Subject:From;
 b=g5cHDt68M/meaEKU1f97f0CLzvuXsjJiY9mlxth+B3JPAZBgVHwzM60WynMnhxZ9X
 AYuNd6fYNYGF5keGR4oS9VQ2aWlHckv308xgCuU+IKhAjiO2KQP9EzWOW/kD590LMW
 8iVHjeFZ3CiDbYdVhIinFkL1GvlQ2zpVMwpE3xJQ=
Date: Mon, 15 Jun 2020 18:08:11 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH][next] staging: rts5208: Use array_size() helper in vmalloc()
Message-ID: <20200615230811.GA18818@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

and memset()

The vmalloc() function has no 2-factor argument form, so multiplication
factors need to be wrapped in array_size(). Also, while there, use
array_size() in memset().

This issue was found with the help of Coccinelle and, audited and fixed
manually.

Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/rts5208/ms.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index d53dd138a356..9001570a8c94 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2306,14 +2306,14 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 		if (!segment->l2p_table)
 			goto BUILD_FAIL;
 	}
-	memset((u8 *)(segment->l2p_table), 0xff, table_size * 2);
+	memset((u8 *)(segment->l2p_table), 0xff, array_size(table_size, 2));
 
 	if (!segment->free_table) {
-		segment->free_table = vmalloc(MS_FREE_TABLE_CNT * 2);
+		segment->free_table = vmalloc(array_size(MS_FREE_TABLE_CNT, 2));
 		if (!segment->free_table)
 			goto BUILD_FAIL;
 	}
-	memset((u8 *)(segment->free_table), 0xff, MS_FREE_TABLE_CNT * 2);
+	memset((u8 *)(segment->free_table), 0xff, array_size(MS_FREE_TABLE_CNT, 2));
 
 	start = (u16)seg_no << 9;
 	end = (u16)(seg_no + 1) << 9;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
