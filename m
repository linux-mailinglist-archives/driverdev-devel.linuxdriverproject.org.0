Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384C616999A
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 20:24:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA72186FAF;
	Sun, 23 Feb 2020 19:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9UhUAJ8KuFQJ; Sun, 23 Feb 2020 19:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C662686EC0;
	Sun, 23 Feb 2020 19:24:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 521FF1BF473
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4EDD685BC9
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 19:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeNvS6dEE2iU for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 19:23:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 945AD816F2
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 19:23:55 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j4so3928785pgi.1
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 11:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=p/oWPc6dicg9Lm6g0PcQb0lWtpA8WNgqP72+bZZmonY=;
 b=VKzw8uUlmATaByLcG+SITEL5VM6hw6I/svwNEwCUy4G4KX5oOTqcsYrpP1nnbi/RKH
 kHhs+2sYN+A1KSVBIIpA8kLQHBlE1eaRb9zpcrAdCHAmS0ad26ca6mMxI/TVn7uP2sik
 7O1kAJA79hJUQETsCBUZ4KjwKBb0K+GzyDDues4afVo2wu3E75It1rDX5IaxbH1ECORd
 ifk5NRz5tbx2u6w9LTE/sphogeKnOEse+M9lKvffmar3aZiAffxGz30Qm3PUHXJCKMlQ
 aVK7tm7dSyS6Gev4pKRK32Y0tpZprTsLDPKfdlhRw+xSWZvvrGqGxkBm7X/53YGPJU86
 0c5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=p/oWPc6dicg9Lm6g0PcQb0lWtpA8WNgqP72+bZZmonY=;
 b=EjOwFw0wfdy0FSTMAGKQ+vzMHQQw00IbV/+6Yx21LyQFOMZkI10lNSvUp9ArbCI/D2
 j1tPWQW8k4yYeF6WBFOov9Qxka9MAytlc4iOC1wlFAwzioKvzczImnthrO+6g4nZQW9m
 wpNhTyBI0uz4HvQAQXUajgQRol4Gy6/T0t3plO++p41D8I02SvnSPPhL/hBqoI6HADCa
 XjScQEu82DM7JN8Dj4UbFWOi1ybLRXWzZX5SxddTKNafuITDsv48+FWxGeCUuBjpzr80
 9Z9gidotsfbcRf8jTGLCsWdjLReyAPk9CB8atNp3tSYEQXLtf3cEqTLq/VT9ALUI9C3Z
 MF1w==
X-Gm-Message-State: APjAAAUucGb6PsN3Ktw4n/38hJWil1pU/ef5nNdnhm1zo+fztSjMv4tn
 cdMxW3D4uSNhmFrzG2lApPzzEQ==
X-Google-Smtp-Source: APXvYqzxuAgacRkNNWJYsDpRQyDXBIH0scB/6/cfNf3UgciFb96UiJWOm0qx1Wgod3g/nR3VG8hc6A==
X-Received: by 2002:a63:291:: with SMTP id 139mr42809093pgc.342.1582485835006; 
 Sun, 23 Feb 2020 11:23:55 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
 by smtp.gmail.com with ESMTPSA id f43sm9614614pje.23.2020.02.23.11.23.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 11:23:54 -0800 (PST)
Date: Mon, 24 Feb 2020 00:53:47 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: remove sync_alloc_bitmap()
Message-ID: <20200223192347.GA20286@kaaira-HP-Pavilion-Notebook>
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

sync_alloc_bitmap() is not called anywhere, hence remove it from
exfat_core.c and exfat.h

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/exfat/exfat.h      |  1 -
 drivers/staging/exfat/exfat_core.c | 12 ------------
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 1867d47d2394..4a0a481fe010 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -665,7 +665,6 @@ void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
 /* allocation bitmap management functions */
 s32 load_alloc_bitmap(struct super_block *sb);
 void free_alloc_bitmap(struct super_block *sb);
-void sync_alloc_bitmap(struct super_block *sb);
 
 /* upcase table management functions */
 s32 load_upcase_table(struct super_block *sb);
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 7308e50c0aaf..d30dc050411e 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -561,18 +561,6 @@ void free_alloc_bitmap(struct super_block *sb)
 	p_fs->vol_amap = NULL;
 }
 
-void sync_alloc_bitmap(struct super_block *sb)
-{
-	int i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (!p_fs->vol_amap)
-		return;
-
-	for (i = 0; i < p_fs->map_sectors; i++)
-		sync_dirty_buffer(p_fs->vol_amap[i]);
-}
-
 /*
  *  Upcase table Management Functions
  */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
