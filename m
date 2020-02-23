Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 481E2169992
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 20:16:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC422862D2;
	Sun, 23 Feb 2020 19:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsv9K6xjoiXn; Sun, 23 Feb 2020 19:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D84D38613C;
	Sun, 23 Feb 2020 19:16:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8001BF473
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:16:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 39CC6856B6
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJd-26sDyUd6 for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 19:16:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 40418854D1
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 19:16:32 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id j7so3115213plt.1
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 11:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xhCwhGQIZ68RTJVI13/7fmg0HCbgaGCnJpEMnTMshms=;
 b=ZxC8300Cu9zoGh3oDdVXtzCtCHURfQr9JHTCzwL86vXe0HQ0SrYHWEnyfEfZ0csUX9
 fK4VhEEr1igymLgFdajezB9DBrxi41pEWBms/Ujf7YNkVBpc0v09l94+L+4UjKX0A+Sg
 mlBNqyEziOTQ+j4/aHyXmwrCElNNnTWtF33U8wEYyT4y1CXVkr7BnbpHAtUGaPBGkhpE
 twEh1ASjXZjhHDdLBUs7B8jsOecVBpv7hUg1svtBu+oKQ6grCHCjefOeNHV/bplT4olQ
 PAwQDURWyJA9B1P7SfZOXghU8SaL2/4/o1LZW57qrw0NuTN2jfMZvGmWJVpp5VXoPIGG
 nstA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xhCwhGQIZ68RTJVI13/7fmg0HCbgaGCnJpEMnTMshms=;
 b=S8kZjWqw2HTD05UJ2bP9r4YiPd7m/c50PgFMYh9fKCDcUyomD5pWJOI0bRYbl7DjgO
 aJiic8jJeZtYxFe0SoQx11oKERp0j/LgJVn3oYZT8jSgBxzHfqfACW0jJGQgXJGca9FT
 tun4HG3TmZIqZS4T6SB8hefE4ocYzHwQdlRt+1CIN/fhxtdHOgdBvhk+Nrmo5DSR22Fu
 eIJK52RrSKWcM6/fhu76o4K9167Orncnkvpg3zWgNHD0LTJ4qQ5w19XwR5EW9c0blYFI
 KmK/3BIx0QIx3AlVOpY4eN8KhxQ6OqLrDMAz8d/6U04u580eoH7fBe28iQYbQrpGWbbc
 XfRQ==
X-Gm-Message-State: APjAAAVU1Zqe4pJbVn1LJg1Vug/o8xk+3i1jtjHxBFLJr3/QGI3dPBXi
 LkTb57ed1rnKzYHdwzukNQNBjg==
X-Google-Smtp-Source: APXvYqy1jlwQX9XeUc0yGutt90sXGehx0w/DGEuJ7JFIjQsAUqrnzBlCvvj6X/ZdLjfganCz7rbWRQ==
X-Received: by 2002:a17:90a:200d:: with SMTP id
 n13mr16601022pjc.16.1582485392234; 
 Sun, 23 Feb 2020 11:16:32 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
 by smtp.gmail.com with ESMTPSA id w128sm8199209pgb.55.2020.02.23.11.16.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 11:16:31 -0800 (PST)
Date: Mon, 24 Feb 2020 00:46:23 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: remove exfat_buf_sync()
Message-ID: <20200223191623.GA20122@kaaira-HP-Pavilion-Notebook>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

exfat_buf_sync() is not called anywhere, hence remove it from
exfat_cache.c and exfat.h

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/exfat/exfat.h       |  1 -
 drivers/staging/exfat/exfat_cache.c | 19 -------------------
 2 files changed, 20 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index e36d01b6fdc9..1867d47d2394 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -653,7 +653,6 @@ void exfat_buf_lock(struct super_block *sb, sector_t sec);
 void exfat_buf_unlock(struct super_block *sb, sector_t sec);
 void exfat_buf_release(struct super_block *sb, sector_t sec);
 void exfat_buf_release_all(struct super_block *sb);
-void exfat_buf_sync(struct super_block *sb);
 
 /* fs management functions */
 void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
index 790ea4df9c00..87d019972050 100644
--- a/drivers/staging/exfat/exfat_cache.c
+++ b/drivers/staging/exfat/exfat_cache.c
@@ -515,22 +515,3 @@ void exfat_buf_release_all(struct super_block *sb)
 
 	mutex_unlock(&b_mutex);
 }
-
-void exfat_buf_sync(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	mutex_lock(&b_mutex);
-
-	bp = p_fs->buf_cache_lru_list.next;
-	while (bp != &p_fs->buf_cache_lru_list) {
-		if ((bp->drv == p_fs->drv) && (bp->flag & DIRTYBIT)) {
-			sync_dirty_buffer(bp->buf_bh);
-			bp->flag &= ~(DIRTYBIT);
-		}
-		bp = bp->next;
-	}
-
-	mutex_unlock(&b_mutex);
-}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
