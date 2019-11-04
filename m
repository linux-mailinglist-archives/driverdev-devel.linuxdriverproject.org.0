Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C48ED737
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:46:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8248895C9;
	Mon,  4 Nov 2019 01:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3fvvHc1uW97; Mon,  4 Nov 2019 01:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAC6B89573;
	Mon,  4 Nov 2019 01:46:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8649B1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8279389536
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CkNrNuGbx7_v for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:46:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 055CC89532
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:46:44 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA41kinJ010052
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:44 -0500
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA41kdia026489
 for <devel@driverdev.osuosl.org>; Sun, 3 Nov 2019 20:46:44 -0500
Received: by mail-qt1-f200.google.com with SMTP id k53so17434041qtk.0
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:46:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=qTxGEwNV+Sk0SeHWmPXlOLn4RKQVFhpEvTO0Y4n51KM=;
 b=jgKoifNs7cYKPfuy1bhMWAM9EGcMZLypdtCgwUmkwDY5vi50xqGMHRfc52pvwKJRaZ
 dDzuDXi06qv1pKwY+D4vA5ZguHg+v4YOORjFd443qTcL3Oy71ttdfB/6yHS71bjL//XH
 ytmCqpyDXHHpcE2JyZRCZqUn0aQaCiBk9SNsvkm/L46DJRVj5LejU/Zh56antG7X/Ir7
 3xiv8Xsdg2d84r+NjAIVwNUkrbJyBZzv7k7kabiXp9kSNC1AZYuUg3DhxgcxdtzpeTbI
 BWxlHrWzhls8/LdtIGg5qwRtXxScf4PWZ3h++uz6IirPgTfxgJtsFBU2WDmF175Tnd6k
 j9mg==
X-Gm-Message-State: APjAAAUejFv2YEHCaA4csYXrYv1QAjvvyu7biu3VdAuQ7SkHG743+niS
 hQwRx46m8BsUR8FbIaFNHLHU+FPLzZl42HzkuxtfdFF3LjJ/gRxNvSN4jWGOwSprHKrbio+ETrz
 fIAHiTsNu2T6lDmC1590F19zvnwSimQBz
X-Received: by 2002:a37:94e:: with SMTP id 75mr11659252qkj.49.1572831998705;
 Sun, 03 Nov 2019 17:46:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqyNOdjoS+XWcHbmgBG9GQ0EzR72CJJzmH1aqr3uutJM0tM9TeQrkLe8PfSFtpgshzvA329kuQ==
X-Received: by 2002:a37:94e:: with SMTP id 75mr11659237qkj.49.1572831998459;
 Sun, 03 Nov 2019 17:46:38 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d2sm8195354qkg.77.2019.11.03.17.46.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 17:46:37 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
Subject: [PATCH v2 09/10] staging: exfat: Correct return code
Date: Sun,  3 Nov 2019 20:45:05 -0500
Message-Id: <20191104014510.102356-10-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use -ENOTEMPTY rather than -EEXIST for attempting to remove
a directory that still has files in it.

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index a97a61a60517..e2254d45ef6e 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2167,7 +2167,7 @@ static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
 	clu_to_free.flags = fid->flags;
 
 	if (!is_dir_empty(sb, &clu_to_free)) {
-		ret = -EEXIST;
+		ret = -ENOTEMPTY;
 		goto out;
 	}
 
-- 
2.24.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
