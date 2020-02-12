Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6A315AF51
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 18:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3B81869BA;
	Wed, 12 Feb 2020 17:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sLuHDy9GVZHR; Wed, 12 Feb 2020 17:58:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A761786912;
	Wed, 12 Feb 2020 17:58:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2611A1BF330
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 17:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 227B486C66
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 17:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgLWfahtWcz2 for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 17:58:36 +0000 (UTC)
X-Greylist: delayed 05:17:06 by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 417E48693C
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 17:58:33 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id n96so1191845pjc.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 09:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=H8IUcvssdhDR1K1EUyWj6oufs8d+vYOMkMY7VxxIHZM=;
 b=QRBFUXicYklwb5F8vRR8BdDvRkILMu5Hvt8UtgaBcPwVK490Owa8JbsB3DL+n1H9fX
 0Pf6mQRh8MvIi96J5YKMSk/BCVDYTq0Se0Elkd1KmPZi7Hj9Jw/VhFSyam+k3wkoHyH2
 xKjbfKQnCLkRWzilxyNZSjMEg6imwLCsrdC51YK25wF93qf4O8ARaKPF/MYc+4qOVrV0
 JU/I26UOTMrbVW+Y+33u7IlYlL2RWcz4P9Knn8W2hPQmTNS6sCtJO1Pmh4nKfrkjsD5i
 DdZZUH72dLS+AH3EDxhbPgojLi1ArTzL/fbT/bwHaJZieOmfHKxoNjLz4PBazm4QzWGU
 rd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=H8IUcvssdhDR1K1EUyWj6oufs8d+vYOMkMY7VxxIHZM=;
 b=fiybE+cko9bo4DI582g/eE6046wTurj/TKBkHKE0gLKUdlI70Z4RhAUsM4IcTY9g8l
 h84xlBixA4FToC3wVMS+N2ZWyfCOOt+K4whCWcTXfMCzb1nePlP0x21qW428qBvoW/lu
 CZIa5alyxmOCP9A2jTA7z+ZU6zRz6ZuZEdrzJBRdHqCWEgoMhE4z15gr4uYh0WwCaGHg
 xjCKfNvW+v9BsZY+cSJNDgIlJIfthAayC280sLJW/RhBaFHEVM8Yl+FLjUm8Uq9pPI3B
 A5jT5tEdCKuN5QkLdutiAUu/9MpqWQ5xubGqvecgo9xR967N6MNqkxena3frFR1ekejE
 +jyg==
X-Gm-Message-State: APjAAAXxa4K606Wp4iGlNwNemWqOnTllsszpCW9387THmayWhX7H6MSl
 PAMv+Ad5CGPLVp2eqij+UG/IwA==
X-Google-Smtp-Source: APXvYqz0PFBr0ahFdwvSeVJO82ZYpsUmIMUpWVH696GQewdig1fJ4fE2nyV/g9k8QDSMneyW8+ixqQ==
X-Received: by 2002:a17:90a:950b:: with SMTP id
 t11mr237947pjo.79.1581530313215; 
 Wed, 12 Feb 2020 09:58:33 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id d14sm1156786pjz.12.2020.02.12.09.58.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 09:58:32 -0800 (PST)
Date: Wed, 12 Feb 2020 23:28:26 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: dan.carpenter@oracle.com
Subject: [PATCH v3] staging: gasket: unify multi-line string
Message-ID: <20200212175826.GA5967@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix three checkpatch.pl warnings of 'quoted string split across lines'
in gasket_core.c by merging the strings in one line.
Though some strings
are over 80 characters long, fixing this warning is necessary to ease
grep-ing the source for printk.

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
