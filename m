Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78AAD031
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 19:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4C9B851C2;
	Sun,  8 Sep 2019 17:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3fw1b4nKJyl2; Sun,  8 Sep 2019 17:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 772F785193;
	Sun,  8 Sep 2019 17:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9236C1BF407
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F28A851AA
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 17:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hyz5CNTxSiEW for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 17:35:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FAB285187
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 17:35:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id A3E63217; Sun,  8 Sep 2019 17:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567964146;
 bh=XRcp16eIoyi8ADWHdwIkGyJ9o2KRVxhAjMqhIsYVNgI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SEZqD8xsF4sLEsMEIJaZh5KyxgYhQq/Q/2ZOS0+29nFnqIrNqxtvFSVap7MDTEhle
 NVqT10IHhfhm7cmlGo22FiJ/1fCEiazkiZkTLfnz9Cm4HW5jI/CuKUYy4/kIQVG1Zx
 89o0iyG6yCDYqLeajDsrw9UVgdsBRYENwl3jJ/RqH7X1QlKQyVE4t8iB0fNBeM9ZxO
 z9DFrmb724t00S5eMjrQvWggtM8oHiPuHkkOqJxgxzHn9XJsWQcTm7HO5RQfCXsd/c
 1/BhOcwBqfxDNF5oHu8wiPruYheR8Zil2pD7AnyXI588oxjponOrcpZDs6ovTARUe/
 LyOOAfJz4A50w==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 3/4] staging: exfat: drop unused field access_time_ms
Date: Sun,  8 Sep 2019 17:35:38 +0000
Message-Id: <20190908173539.26963-3-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Spec defines that UtcOffset fields should start in this
position instead.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h      | 6 ++++--
 drivers/staging/exfat/exfat_core.c | 4 +++-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 58e1e889779f..9b75c5d3f072 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -444,8 +444,10 @@ struct file_dentry_t {
 	u8       access_date[2];
 	u8       create_time_ms;
 	u8       modify_time_ms;
-	u8       access_time_ms;
-	u8       reserved2[9];
+	u8       create_utc_offset;
+	u8       modify_utc_offset;
+	u8       access_utc_offset;
+	u8       reserved2[7];
 };
 
 /* MS-DOS EXFAT stream extension directory entry (32 bytes) */
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 995358cc7c79..d21f68d786b8 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1456,7 +1456,9 @@ void init_file_entry(struct file_dentry_t *ep, u32 type)
 	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
 	ep->create_time_ms = 0;
 	ep->modify_time_ms = 0;
-	ep->access_time_ms = 0;
+	ep->create_utc_offset = 0;
+	ep->modify_utc_offset = 0;
+	ep->access_utc_offset = 0;
 }
 
 void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
