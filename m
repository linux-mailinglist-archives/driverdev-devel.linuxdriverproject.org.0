Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3384A2E3412
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 06:13:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2D91870BF;
	Mon, 28 Dec 2020 05:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FukMxhgLquSZ; Mon, 28 Dec 2020 05:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18D1187079;
	Mon, 28 Dec 2020 05:13:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 69D8C1BF3C5
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 05:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5978C228EC
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 05:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tCQGhaAju3u6 for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 05:13:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by silver.osuosl.org (Postfix) with ESMTPS id 69615228EA
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 05:13:48 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id n142so8104515qkn.2
 for <devel@driverdev.osuosl.org>; Sun, 27 Dec 2020 21:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sg1rpBKeOs0Zwg0dgJvfTQqAURxAmynlKF8GOOw6tQ0=;
 b=Sg7iKYzJN4XOYobYdvR7uhLXHr6qNPc7Rqhx4S8tBZNR5wQ5iM7M9mFuys01m1upQB
 W07fsbIp5a7A0tSIsfeSUKhIvSRd1CNiUsRQ0UzI11T7Tk9B67gq7/bzktuCQpv2fN38
 iFeOnUISt+glb8MBWkD4JupvVm1suSbBJVwAA6u93/6pZrw1Rr6DuEOcmktgk0tpOZw0
 TR3d/WuUwSZOYbSJGlNNgAUyBaVBoruieBZeGNV56M4bhUMZlOanCwQSDGWtDWcEKN8d
 kc0PiNQ5376oEWocpz0SPZIER4Cmzzp9ylKMT2J4XTieczCkkNd9o2yfP8fUBhwBr1MB
 5fqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sg1rpBKeOs0Zwg0dgJvfTQqAURxAmynlKF8GOOw6tQ0=;
 b=U7vAFPGavEBDcA3c2kvWZxI4dWqtrhI3u075Vy7122xutZJXxlG2DNGV2chkrYGEqH
 9bk6a4p11XsNPTMY+E0jt1+QTSxKTCQ7A2FN2y3oY5FiA8yaKzbR+FIEwiiqAbSttWru
 W+TlJdObVDN52p4hJXctP4aI5PfGYNo4u8x8D8sJghzyFUKHXysc0LLmwnTkC90Wedkw
 y2m5837eQqx1yv2pBlonV0f4qG9H70N/v65TAzZUnjqjOqI7ybHyjvPAEnJRhsV0dvwy
 f2KjFtqb5QuXsJM9dwPMtkX9gIhLfng0CUSyS5dEAk6Jmu1CZ7m3T3p5GlrfH3i71WdG
 iRww==
X-Gm-Message-State: AOAM531ZjeIa9H04uMKkoIw47RhRAGzx2IE0Z4O/sQm9uZXklxzXbh7m
 Y9yVGIr9au5McGdbTtb+M08=
X-Google-Smtp-Source: ABdhPJw9aZrwGMGM5CvfvqnvauqztJNhH55xSXsIu5BpMfoh5zvN5dwzdo5qo39ZRMugaspmlBJPpQ==
X-Received: by 2002:a05:620a:804:: with SMTP id
 s4mr44088233qks.158.1609132427247; 
 Sun, 27 Dec 2020 21:13:47 -0800 (PST)
Received: from debian.hitronhub.home
 (cpe84948c98e773-cm84948c98e770.cpe.net.fido.ca. [72.140.62.181])
 by smtp.gmail.com with ESMTPSA id n195sm15706160qke.20.2020.12.27.21.13.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Dec 2020 21:13:46 -0800 (PST)
From: jovin555 <jovin555@gmail.com>
To: 
Subject: [PATCH] staging: android: ashmem: Declared file operation with const
 keyword
Date: Mon, 28 Dec 2020 00:13:00 -0500
Message-Id: <20201228051301.14983-1-jovin555@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, jovin555@gmail.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Warning found by checkpatch.pl script.

Signed-off-by: jovin555 <jovin555@gmail.com>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index c05a214191da..f9cfa15b785f 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
