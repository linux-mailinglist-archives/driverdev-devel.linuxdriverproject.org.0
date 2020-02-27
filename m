Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC611729EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 22:11:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34E3788081;
	Thu, 27 Feb 2020 21:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Un9Pr0Xsy1ap; Thu, 27 Feb 2020 21:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B5BF8803E;
	Thu, 27 Feb 2020 21:11:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D72EA1BF3AE
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 21:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D1B0F87825
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 21:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xdqEJKmIKV1 for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 21:11:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CDC38781D
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 21:11:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y1so303605plp.7
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 13:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Vn2qdMNVtzmTptemarLkmeAQtuC77a4d836dzPxB5VY=;
 b=AONhiIW3W0Ge7r2OROQVTEDOY/Muz6N+l/AJQzVAQTeiymt7Ls7JttstYeqYGLjLJV
 fBU+97SrxyDB4jStEuufV+ZiGmMQtDNJCi44m9c7hMoIuwCMlAG0XKKRutTKxKKvKC0F
 9xx6fj8RxOTY+aglMrEMhXQMEjazSVjBQlMsxW0WhZz4InOzRiIYlDU/4WjJ8kJl7ty+
 LUVvi4vatINRq5BdBV9V+4TxtA8bhrtFbR2xoy0B0/z/hXlh8xRnrNr8xwKYrE99RRwz
 +zFFtYFwiUx5r61wlNGeu8d9d/Dbtptyr4uTKSwdidYvSykkZ5Io6GYj7XlGUleud57H
 N1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vn2qdMNVtzmTptemarLkmeAQtuC77a4d836dzPxB5VY=;
 b=otDEQTDD8LTpA8yNCVOqA6UzqN87w0mx/qYX7uH/IziyNmUk32YGZwXx8iP//2bMp+
 ctdzX4YPdFir/85p8E0O+43Dh95tq7ZYN/yvxBJPyoHASHPm/fV55kH/3V5ul5ylesCd
 9VBy8ZQLAqEkz4Y2zAhNDVuH65MHnREQfAqJ9CWTfx5qI9ycvLJ09/wyOoxJQb+XlcGe
 mp48keMCS1MubVAkmgKYV4Q70DcCqP/zpKDzv50c7p/SeJ/HKKrH6gv48nobHE25I4v0
 gJJ5JVv99Bv+dfWTSfDPR3mQEbPPCeUilOkWZkIvKdrkAmvCX590eJ9WJSynQFc3RWxR
 jZDQ==
X-Gm-Message-State: APjAAAWLa+7gUxkvUMq47v77H2YQCK21seBIrrWea1Db9hM5Ta+SNaUS
 QodR7d8ySHI02jXbXyOLlQ==
X-Google-Smtp-Source: APXvYqxoQQj1fnYLsu6+7XFbap7bfIOGjDd5lJFw8GC9SapC3mUGkSf3sK+q2+ztL0Gc2aOZBbTGMw==
X-Received: by 2002:a17:90b:3590:: with SMTP id
 mm16mr878870pjb.112.1582837873689; 
 Thu, 27 Feb 2020 13:11:13 -0800 (PST)
Received: from localhost.localdomain ([157.41.21.90])
 by smtp.gmail.com with ESMTPSA id z27sm8548016pfj.107.2020.02.27.13.11.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 27 Feb 2020 13:11:13 -0800 (PST)
From: vivek m <bitu.kv@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH] Staging: exfat: fixed a long line coding style issue
Date: Thu, 27 Feb 2020 21:11:05 +0000
Message-Id: <1582837865-2219-1-git-send-email-bitu.kv@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: linux-fsdevel@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 vivek m <bitu.kv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue

Signed-off-by: Vivek M <bitu.kv@gmail.com>
---
 drivers/staging/exfat/exfat_blkdev.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
index 0a3dc35..ddff019 100644
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ b/drivers/staging/exfat/exfat_blkdev.c
@@ -30,8 +30,9 @@ void exfat_bdev_close(struct super_block *sb)
 	p_bd->opened = false;
 }
 
-int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
-		    u32 num_secs, bool read)
+int exfat_bdev_read(struct super_block *sb, sector_t secno,
+		    struct buffer_head **bh, u32 num_secs,
+		    bool read)
 {
 	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
 	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
@@ -65,7 +66,8 @@ int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head *
 	return -EIO;
 }
 
-int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
+int exfat_bdev_write(struct super_block *sb, sector_t secno,
+		     struct buffer_head *bh,
 		     u32 num_secs, bool sync)
 {
 	s32 count;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
