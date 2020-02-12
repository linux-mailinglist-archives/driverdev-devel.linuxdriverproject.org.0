Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2488315A911
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 13:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8D8A8671F;
	Wed, 12 Feb 2020 12:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VoBcDgBRmQ3D; Wed, 12 Feb 2020 12:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42359862F4;
	Wed, 12 Feb 2020 12:24:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 888F81BF3CC
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 852F983F0F
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 12:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9AzEl_QIWds for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 12:24:44 +0000 (UTC)
X-Greylist: delayed 00:33:54 by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2A8C836A9
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 12:24:43 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d6so1147795pgn.5
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 04:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=x/nxEaTTP4mdZANLaqJuiHgW2OIpQlw3HGG1GiDrG8k=;
 b=ITMK8LOAm4w9qmTRfMOeA37gwDDOLpQQ/8a2Z3SRrSpfdlsQ0/vxwhtmYgNTGgR1Cz
 tlws5/87h5rm8Z6PQJxpFd3ov2vMJxFSM6bJG79plkbEjDjDO+E3/CHiUJ+n6tI/QUhI
 FUTwdI6r/grSgrkn7EX0gxaQ9scjqFcMdX++7fjMNzPIZ6jPcAGLq2Uiwy7OC8o+nUzE
 FCNvivZNq57PWuE1TFEhD1sbp0hJSUSxcwXUIfRKVayNitJ5/uS5XbA9EDDaXizHEcWo
 3lQukAIR08TiHoHzX4cy9Y1tBOHDl6ebDOCZ0NwN0duE2dhdG4LMiV1x2EO+aVhdgR5q
 c4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=x/nxEaTTP4mdZANLaqJuiHgW2OIpQlw3HGG1GiDrG8k=;
 b=LF3F8S12ByW5Yl3BLGkZcRyfFKLEgXVGzUo8fqbVeUEqyOGbRBAv40oLHI1VzEbUgF
 dLZR9piA9VNqbw+2Pn7fni3U0pfn45JvRji/HtUvp3TUY/xuiQIvJ+/L/tWq0uTaQk4K
 mhNuQu88wKYCutAKPQ6agKKn3Tb32xXgUZ9Ak07HAntiWGimLn0CqA3sSs2ANhyvgp0H
 8DC1EPFL9rQ01NQakH9n7K+zgu2RdRfr+qq3mAHeVGTjPnwRvKeJEd+8oRlIFcl1iZSL
 r4RvCVMzsVAIedFSD/xoD8JbfbBVlOVE1/mmG2UG2xQzwHJWumFtWop8DtNdV9I9nwWB
 npNQ==
X-Gm-Message-State: APjAAAVUKzI1Qpxwqid+XcGc1fY0Q5icpNJQY7hH7+SPZr9z+Lps0czX
 eoyJcNJWyCtNVJxejL6RsDafXQ==
X-Google-Smtp-Source: APXvYqysE1YVsfpW0EEtBngwXNN8YrDBSGQFG6DRR+1GbiUVSMIP4hN73LTI1LYnKzhSGHsq4BtxZg==
X-Received: by 2002:a63:8f49:: with SMTP id r9mr12333824pgn.190.1581510283487; 
 Wed, 12 Feb 2020 04:24:43 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.171])
 by smtp.gmail.com with ESMTPSA id l69sm313535pgd.1.2020.02.12.04.24.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 04:24:42 -0800 (PST)
Date: Wed, 12 Feb 2020 17:54:36 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging:gasket:gasket_core.c:unified quoted string split
 across lines in one line
Message-ID: <20200212122436.GA25104@kaaira-HP-Pavilion-Notebook>
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

When the driver tries to map a region, but the region has certain
permissions, or when it attempts to open gasket with tgid, or when it
realeases device node; the logs are displayed in one line only while the
code has the strings split in two lines which makes it difficult for
developers to search for code based on the log messages. So, this patch
fixes three warnings of 'quoted string split across lines' in
gasket_core.c by merging the strings in one line.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/gasket/gasket_core.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index cd8be80d2076..411aaf248b37 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -692,8 +692,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
 		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
 	if (requested_permissions & ~(bar_permissions)) {
 		dev_dbg(gasket_dev->dev,
-			"Attempting to map a region with requested permissions "
-			"0x%x, but region has permissions 0x%x.\n",
+			"Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
 			requested_permissions, bar_permissions);
 		return false;
 	}
@@ -1180,8 +1179,7 @@ static int gasket_open(struct inode *inode, struct file *filp)
 	inode->i_size = 0;
 
 	dev_dbg(gasket_dev->dev,
-		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, "
-		"fmode_write: %d is_root: %u)\n",
+		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
 		current->tgid, task_name, filp->f_mode,
 		(filp->f_mode & FMODE_WRITE), is_root);
 
@@ -1258,8 +1256,7 @@ static int gasket_release(struct inode *inode, struct file *file)
 	mutex_lock(&gasket_dev->mutex);
 
 	dev_dbg(gasket_dev->dev,
-		"Releasing device node. Call origin: tgid %u (%s) "
-		"(f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
+		"Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
 		current->tgid, task_name, file->f_mode,
 		(file->f_mode & FMODE_WRITE), is_root);
 	dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
