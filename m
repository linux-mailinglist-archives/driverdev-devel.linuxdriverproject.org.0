Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5724CACF9B
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E1B8855D3;
	Sun,  8 Sep 2019 16:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jtri50WqMs-X; Sun,  8 Sep 2019 16:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E19D085040;
	Sun,  8 Sep 2019 16:10:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1F011BF3D0
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA34B86F13
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9OqKX+EIZwi for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 111A786DC6
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:10:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 50569216; Sun,  8 Sep 2019 16:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567959019;
 bh=1MjEh5GX4AmKOIbspwOJIzlsp3OjQFimOJ8snyEnEd0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QWHNxgX05BBsQ9msph7aos3/JbpEadD4z5D61uvc+wGAkIX10ZihK/AMEi+j1kWqt
 jbTytgA2R/B5ANgUUix6uMVDJ6jgqxs/9hIqG9X+MPim09U6PfRw6R/TvlZBBp03M6
 ebUsfUyEl1CM9IoIDZFa3tkxETRRvtV2+8uyF2aE7drZQEnHiQ6qcKMz8fO7RwMq6i
 l91mQutX4qr62x1QENYZaOM/lB0yQrez3ddXrBaZuARhFzOPi4dKwTgyCXbU0Kgezu
 eTpgjq/NhnB92tjoXAnimRZ5dBfAhKG/QURl1XJQFzfn5iSH5lpIEy/8T/rKY1FzeY
 yRSqsEQh2saKA==
From: Valentin Vidic <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] staging: exfat: drop unused field access_time_ms
Date: Sun,  8 Sep 2019 16:10:14 +0000
Message-Id: <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
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

Not used in the exfat-fuse implementation and spec defines
this position should hold the value for CreateUtcOffset.

Signed-off-by: Valentin Vidic <vvidic@valentin-vidic.from.hr>
---
 drivers/staging/exfat/exfat.h      | 3 +--
 drivers/staging/exfat/exfat_core.c | 1 -
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 58e1e889779f..6491ea034928 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -444,8 +444,7 @@ struct file_dentry_t {
 	u8       access_date[2];
 	u8       create_time_ms;
 	u8       modify_time_ms;
-	u8       access_time_ms;
-	u8       reserved2[9];
+	u8       reserved2[10];
 };
 
 /* MS-DOS EXFAT stream extension directory entry (32 bytes) */
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 995358cc7c79..8476eeedba83 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1456,7 +1456,6 @@ void init_file_entry(struct file_dentry_t *ep, u32 type)
 	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
 	ep->create_time_ms = 0;
 	ep->modify_time_ms = 0;
-	ep->access_time_ms = 0;
 }
 
 void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
