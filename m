Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E665C1757C5
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 10:57:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7426D8464A;
	Mon,  2 Mar 2020 09:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pufqCoz1nzgm; Mon,  2 Mar 2020 09:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 540DB81CA3;
	Mon,  2 Mar 2020 09:57:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4EEA1BF28A
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 09:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A13C42001E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 09:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-KaXSNu-bC2 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 09:57:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx06.melco.co.jp (mx06.melco.co.jp [192.218.140.146])
 by silver.osuosl.org (Postfix) with ESMTPS id C35711FEAB
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 09:57:20 +0000 (UTC)
Received: from mr06.melco.co.jp (mr06 [133.141.98.164])
 by mx06.melco.co.jp (Postfix) with ESMTP id 55A923A3F52;
 Mon,  2 Mar 2020 18:57:19 +0900 (JST)
Received: from mr06.melco.co.jp (unknown [127.0.0.1])
 by mr06.imss (Postfix) with ESMTP id 48WFtR1lThzRk8J;
 Mon,  2 Mar 2020 18:57:19 +0900 (JST)
Received: from mf04_second.melco.co.jp (unknown [192.168.20.184])
 by mr06.melco.co.jp (Postfix) with ESMTP id 48WFtR1RmzzRjyb;
 Mon,  2 Mar 2020 18:57:19 +0900 (JST)
Received: from mf04.melco.co.jp (unknown [133.141.98.184])
 by mf04_second.melco.co.jp (Postfix) with ESMTP id 48WFtR1hPjzRkCp;
 Mon,  2 Mar 2020 18:57:19 +0900 (JST)
Received: from tux532.tad.melco.co.jp (unknown [133.141.243.226])
 by mf04.melco.co.jp (Postfix) with ESMTP id 48WFtR1DyWzRkBl;
 Mon,  2 Mar 2020 18:57:19 +0900 (JST)
Received: from tux532.tad.melco.co.jp
 by tux532.tad.melco.co.jp (unknown) with ESMTP id 0229vJZN027658;
 Mon, 2 Mar 2020 18:57:19 +0900
Received: from tux390.tad.melco.co.jp (tux390.tad.melco.co.jp [127.0.0.1])
 by postfix.imss70 (Postfix) with ESMTP id E655C17E075;
 Mon,  2 Mar 2020 18:57:18 +0900 (JST)
Received: from tux554.tad.melco.co.jp (mailgw1.tad.melco.co.jp [10.168.7.223])
 by tux390.tad.melco.co.jp (Postfix) with ESMTP id D982D17E073;
 Mon,  2 Mar 2020 18:57:18 +0900 (JST)
Received: from tux554.tad.melco.co.jp
 by tux554.tad.melco.co.jp (unknown) with ESMTP id 0229vH0t007040;
 Mon, 2 Mar 2020 18:57:18 +0900
From: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
To: Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
Subject: [PATCH 2/2] staging: exfat: remove redundant if statements
Date: Mon,  2 Mar 2020 18:57:16 +0900
Message-Id: <20200302095716.64155-2-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200302095716.64155-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If statement does not affect results when updating directory entry in
ffsMapCluster().

Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
---
 drivers/staging/exfat/exfat_super.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 708398265828..75813d0fe7a7 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1361,11 +1361,8 @@ static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
 
 		/* (3) update directory entry */
 		if (modified) {
-			if (exfat_get_entry_flag(ep) != fid->flags)
-				exfat_set_entry_flag(ep, fid->flags);
-
-			if (exfat_get_entry_clu0(ep) != fid->start_clu)
-				exfat_set_entry_clu0(ep, fid->start_clu);
+			exfat_set_entry_flag(ep, fid->flags);
+			exfat_set_entry_clu0(ep, fid->start_clu);
 		}
 
 		update_dir_checksum_with_entry_set(sb, es);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
