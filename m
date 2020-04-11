Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A6A1A5388
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 21:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19D1422785;
	Sat, 11 Apr 2020 19:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTS2gHLZkyTA; Sat, 11 Apr 2020 19:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06BA12012D;
	Sat, 11 Apr 2020 19:30:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85EB91BF33D
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 19:30:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 828BE85C97
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 19:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sw7Z8-mXEhv4 for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 19:30:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8175983456
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 19:30:06 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r14so2586219pfl.12
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QDpChQMFaEygseW2gBl70FlwjpWjwYMaBg2WFKZnoBw=;
 b=maFVxC7qLrgqHuS2/OBvUZJNtEEkncZSM4gkNy8vnwkHnFBhi2QVDpgDB5q7RItFDb
 EzYuPj6ER//eFys0qNxwapFCGz1GEg7feOm+nUJYE6uFpLyQsCCQlMZNoSMnomPSvbHg
 uALW/Aa+kPEED57qqTHPeDW4zKdQR2hzgM7DCDiNphqDGznKDMohQXbpY+5DnUs4Nx80
 5LwIsLEL6BIFm9AzgC479GGFR+VuWWps+4WZEBvfIqj6Nbea0+xy39MHlvARt+hPDMc1
 iVNGh6F7uPO7C6+17xOydsTKePyc45KMPUeG17jFmWz4id4dUwLnLnk0N6VU8YtWVrqE
 /Q4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QDpChQMFaEygseW2gBl70FlwjpWjwYMaBg2WFKZnoBw=;
 b=S82GbSbMWX9J55mapHJIaIKxEibEojzil5zBriOpUEG2nZ5eH6rcP5bjL8j0QJlt+X
 NrjeJ+HgqopwR4ntM2if8S8MKbDnKdYfPyXXU2Dr0ohDmtMB9ofLKWcne3n7F6XG6/7s
 kOySpl2Rne5u15oy877mYKO+n2kSrqlbeeY0Nygp26ByQEsXBIFmsjG/xLQNUJMK2LV0
 yHLGgBKSqd1JEUP4GgEq8f0OlbGAICa+L4CfsvDKju5E3kQUQ18n9rdq1U1f9atHtZen
 SOGJFwoekJFjJVyngj/eumFnm2kcKr8f2qHXFlt0Cft/3FTrJFolw855VORs6EAJVZvC
 9SWg==
X-Gm-Message-State: AGi0PubdA2GKjzX5hq/VG6S4YYFekTcwvCd52DYaWo/OglTDrCLbGxmv
 AJKGkTJ9kQzsee81vqXdZLY=
X-Google-Smtp-Source: APiQypL1Gn2bGyYpiTnqYvge55K/ou17khYaehhIz0j4zPcHVeXztorOBCk3NdBmqPT1C6QhCkFsJA==
X-Received: by 2002:a63:da47:: with SMTP id l7mr10574849pgj.315.1586633406062; 
 Sat, 11 Apr 2020 12:30:06 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:804:5c5d:c8b1:1b25:412c:13f9])
 by smtp.gmail.com with ESMTPSA id t85sm4262791pgb.1.2020.04.11.12.30.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 Apr 2020 12:30:05 -0700 (PDT)
From: MugilRaj <dmugil2000@gmail.com>
To: 
Subject: [PATCH] taging: android: ashmem: Declared const key
Date: Sun, 12 Apr 2020 00:59:56 +0530
Message-Id: <1586633396-24237-1-git-send-email-dmugil2000@gmail.com>
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
Cc: mugil2301 <110117057@nitt.edu>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 dmugil2000@gmail.com, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: mugil2301 <110117057@nitt.edu>

Signed-off-by: mugil2301 <110117057@nitt.edu>
---
 drivers/staging/android/ashmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 8044510..50f882a 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
 
 static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
 {
-	static struct file_operations vmfile_fops;
+	static const  struct file_operations vmfile_fops;
 	struct ashmem_area *asma = file->private_data;
 	int ret = 0;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
