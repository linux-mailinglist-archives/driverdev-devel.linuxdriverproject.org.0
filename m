Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD22E11A6
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 07:28:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A5AF86205;
	Wed, 23 Oct 2019 05:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bO9BY30-sAu7; Wed, 23 Oct 2019 05:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FD6786237;
	Wed, 23 Oct 2019 05:28:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D89E1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AE90880E2
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 05:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPX9eoI-GWKx for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 05:28:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E376E87534
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 05:28:48 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9N5SlFe003489
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:47 -0400
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9N5Sgiw023759
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 01:28:47 -0400
Received: by mail-qk1-f197.google.com with SMTP id k67so19202376qkc.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Oct 2019 22:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=ISQDTJmGCoaQ4xeld4Mhg9Q600xoGHfVZT32mcJtg7w=;
 b=pOLFgsQDC761rib5G+2C4oR7CA62P2x5NdxFix3zhGPQ6bcmaP/D707baDTg2K752F
 WtV0P2lUUajyEPBkyKmgm+34pnbhcRrsFwATjYPj1vzehw7OHwfcuprIdjkRwcNyFZQS
 wNwzNl08bqD8vJiCiIuIHh5ehKfNIu3CTVTpYU/d8YDXAqb73NME/xAWRUB8KSNqhzH/
 w4D7W6QRNnPhtLKZNx7dbEgCZrvcdFYzH52J+8gEH2JLtPKB3aiqCvzBkJjCD7lsxZ5B
 1fXiWfPACDsfysoaLEyaPpIJOlevemwDB/t3wWlnfOBIJ4ZuPA4gGx288xg6b8mk/HRw
 Ve7w==
X-Gm-Message-State: APjAAAXD/lDz4kiHj+LOWq0XvGjr8wEhNep6ZstlGC+ZEMwUYDvq6unR
 HEjMHh0zToNrmstblJxjOTB4m1E9HZSubJ3NakLRZudtHA/j9ahRdG/5eYKM1pHPsfYZZnCMzLz
 9kEaSnL/C1xhqnMpGfVwQBXNbAFvzC7Op
X-Received: by 2002:ac8:4a03:: with SMTP id x3mr1713091qtq.117.1571808522466; 
 Tue, 22 Oct 2019 22:28:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5nRxuWdRuBTyicKO9kNgnNeEtVqZyh2Z4Ty5Wd3Rj/224bq/k+ZD4kmE2tsjBWrP+H4/Kvg==
X-Received: by 2002:ac8:4a03:: with SMTP id x3mr1713074qtq.117.1571808522200; 
 Tue, 22 Oct 2019 22:28:42 -0700 (PDT)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id 14sm10397445qtb.54.2019.10.22.22.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 22:28:41 -0700 (PDT)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
X-Google-Original-From: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Valdis.Kletnieks@vt.edu
Subject: [PATCH 8/8] staging: exfat: Update TODO
Date: Wed, 23 Oct 2019 01:27:51 -0400
Message-Id: <20191023052752.693689-9-Valdis.Kletnieks@vt.edu>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
References: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
---
 drivers/staging/exfat/TODO | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/exfat/TODO b/drivers/staging/exfat/TODO
index b60e50b9cf4e..110c30834bd2 100644
--- a/drivers/staging/exfat/TODO
+++ b/drivers/staging/exfat/TODO
@@ -1,21 +1,17 @@
 exfat_core.c - ffsReadFile - the goto err_out seem to leak a brelse().
 same for ffsWriteFile.
 
-exfat_core.c - fs_sync(sb,0) all over the place looks fishy as hell.
-There's only one place that calls it with a non-zero argument.
-Randomly removing fs_sync() calls is *not* the right answer, especially
-if the removal then leaves a call to fs_set_vol_flags(VOL_CLEAN), as that
-says the file system is clean and synced when we *know* it isn't.
-The proper fix here is to go through and actually analyze how DELAYED_SYNC
-should work, and any time we're setting VOL_CLEAN, ensure the file system
-has in fact been synced to disk.  In other words, changing the 'false' to
-'true' is probably more correct. Also, it's likely that the one current
-place where it actually does an bdev_sync isn't sufficient in the DELAYED_SYNC
-case.
-
 ffsTruncateFile -  if (old_size <= new_size) {
 That doesn't look right. How did it ever work? Are they relying on lazy
 block allocation when actual writes happen? If nothing else, it never
 does the 'fid->size = new_size' and do the inode update....
 
 ffsSetAttr() is just dangling in the breeze, not wired up at all...
+
+exfat_core.c - The original code called fs_sync(sb,0) all over the place,
+with only one place that calls it with a non-zero argument. That's now been
+reversed, but a proper audit of sync and flush-to-disk is certainly needed.
+
+buf_sync(), sync_alloc_bitmap(), and FAT_sync() aren't actually used
+anyplace.  This is probably related to the borked original implementatin
+of fs_sync() that didn't actually do anything either.
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
