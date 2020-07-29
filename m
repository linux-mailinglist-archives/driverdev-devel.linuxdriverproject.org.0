Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD7B232818
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 01:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 201A424B96;
	Wed, 29 Jul 2020 23:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lluL6+dlXOdJ; Wed, 29 Jul 2020 23:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5DED124C2A;
	Wed, 29 Jul 2020 23:30:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A279B1BF86C
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 23:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F03586AE0
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 23:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xWQKLHew7CTw for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 23:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B5F586A8F
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 23:29:59 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88DEE2074B;
 Wed, 29 Jul 2020 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596065399;
 bh=soaioZgmViIAvQ3rjdV72K2mdvV/ewVmzrvk4+FNNvQ=;
 h=Date:From:To:Cc:Subject:From;
 b=wu1SMnukBBPBn8HMW/u+hp0BFMgBXRPznml6diVqbdIVBHqzrLbPyEN+dCAueapNT
 ZeEvU+pBqx387i+B/iR4/iGreTgL/KhuhKXHAAINrgvTByQjvbt/HHLoIWrBrYfXlL
 X6Hm4Z1S6OYfR202P1tL/2WgbCaPxbEFfDE/UEzE=
Date: Wed, 29 Jul 2020 18:35:57 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH][next] staging: wfx: Use flex_array_size() helper in memcpy()
Message-ID: <20200729233557.GA17693@embeddedor>
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
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make use of the flex_array_size() helper to calculate the size of a
flexible array member within an enclosing structure.

This helper offers defense-in-depth against potential integer
overflows, while at the same time makes it explicitly clear that
we are dealing with a flexible array member.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/wfx/hif_tx_mib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/hif_tx_mib.c b/drivers/staging/wfx/hif_tx_mib.c
index 1689cb42acc0..05f1e1e98af9 100644
--- a/drivers/staging/wfx/hif_tx_mib.c
+++ b/drivers/staging/wfx/hif_tx_mib.c
@@ -113,7 +113,7 @@ int hif_set_beacon_filter_table(struct wfx_vif *wvif, int tbl_len,
 	if (!val)
 		return -ENOMEM;
 	val->num_of_info_elmts = cpu_to_le32(tbl_len);
-	memcpy(val->ie_table, tbl, tbl_len * sizeof(*tbl));
+	memcpy(val->ie_table, tbl, flex_array_size(val, ie_table, tbl_len));
 	ret = hif_write_mib(wvif->wdev, wvif->id,
 			    HIF_MIB_ID_BEACON_FILTER_TABLE, val, buf_len);
 	kfree(val);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
