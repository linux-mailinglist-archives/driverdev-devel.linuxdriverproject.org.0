Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D779215B
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 12:35:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 567C185E28;
	Mon, 19 Aug 2019 10:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8ngOjmTJJ8n; Mon, 19 Aug 2019 10:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A732F85DE1;
	Mon, 19 Aug 2019 10:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5B6C1BF36D
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A26CD86193
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 10:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTHaEmo-KsFJ for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 10:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1DF3984E97
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 10:35:20 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 64C2A6BD296137F55081;
 Mon, 19 Aug 2019 18:35:17 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.201) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 19 Aug
 2019 18:35:06 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>,
 <linux-fsdevel@vger.kernel.org>
Subject: [PATCH 2/6] staging: erofs: cannot set EROFS_V_Z_INITED_BIT if
 fill_inode_lazy fails
Date: Mon, 19 Aug 2019 18:34:22 +0800
Message-ID: <20190819103426.87579-3-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819103426.87579-1-gaoxiang25@huawei.com>
References: <20190819080218.GA42231@138>
 <20190819103426.87579-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As reported by erofs-utils fuzzer, unsupported compressed
clustersize will make fill_inode_lazy fail, for such case
we cannot set EROFS_V_Z_INITED_BIT since we need return
failure for each z_erofs_map_blocks_iter().

Fixes: 152a333a5895 ("staging: erofs: add compacted compression indexes support")
Cc: <stable@vger.kernel.org> # 5.3+
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/zmap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index b61b9b5950ac..7408e86823a4 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -85,12 +85,11 @@ static int fill_inode_lazy(struct inode *inode)
 
 	vi->z_physical_clusterbits[1] = vi->z_logical_clusterbits +
 					((h->h_clusterbits >> 5) & 7);
+	set_bit(EROFS_V_Z_INITED_BIT, &vi->flags);
 unmap_done:
 	kunmap_atomic(kaddr);
 	unlock_page(page);
 	put_page(page);
-
-	set_bit(EROFS_V_Z_INITED_BIT, &vi->flags);
 out_unlock:
 	clear_and_wake_up_bit(EROFS_V_BL_Z_BIT, &vi->flags);
 	return err;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
