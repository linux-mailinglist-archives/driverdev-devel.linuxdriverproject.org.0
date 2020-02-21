Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B081686FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 19:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D9C6880C3;
	Fri, 21 Feb 2020 18:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gUMDCXKFgHKF; Fri, 21 Feb 2020 18:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A6C288091;
	Fri, 21 Feb 2020 18:51:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 086E71BF286
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 18:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0508D88084
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 18:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qnyuHMh8P3uI for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 18:51:17 +0000 (UTC)
X-Greylist: delayed 23:01:52 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B73F8807A
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 18:50:23 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g6so1230694plt.2
 for <devel@driverdev.osuosl.org>; Fri, 21 Feb 2020 10:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0k6g4uJ0ZA5B8EEB6+wWGSb0kBAwGtaPTJoeE/KO6EY=;
 b=cTgf7YYBzjjKYDeSSov8Ngrm0EB/oHuDMO3f76yGWBHxsKiJgSEqcTSMspWlwVemva
 9kEaN3vp+1YndpdsOBEEuYfcqvTxzvqvkzLbPMoxKRriQuWfsf93TY4VH0YJkyjffLys
 aU3+ZomPrvurD3bLvSTNIHn63hUwWGn3D2y3hbhvljIQoOY9wP33ADHuFKijyY7+GsT/
 rV4EroPWfgmn6Jbd40lSpjukVOkGu2aSNo0R6EG1/8cjg2EHCjyD5rViioVv9kiEvF+3
 68YgXvsBr89yaEgpd0KRHU7TAHPLwWu8YTzvwAeLFiSYrK+IqyieuE9yvXyirJJ0jTee
 tMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0k6g4uJ0ZA5B8EEB6+wWGSb0kBAwGtaPTJoeE/KO6EY=;
 b=uFm+xqa92LmODssWQMrFcGvRYwp1Ez3jX84oxrYsb4CkaBuH5T9w/EL9n3Zst+Z5sm
 8rJxqjXQ5mgdUtDnAyvDZKTnMncGM6WQrvpmu7YkRKcUVU3dDg243qZMXrnUnvt4hOnS
 pkKU//Pn57zPmjvizisIiTrHPzebkXojEjXR65whB21pMbLYGQZ3OimJY7FL5uZsH1Ly
 TTDMhU5ACfEX7KjOAhwVjB3kDGTUqg5PRXJ0hKcTfPesnynlhw5JkWZFUqZIQswir3Wd
 xO3z2GLsAESeA+52h8KomkNyHZsMi/eDv8FndPb6kiVuy5rIB0508xm+KxQy+20L8n41
 dtuQ==
X-Gm-Message-State: APjAAAWWjkXEuVp+FyK69nMFRpwVcwN03V+YZVlifQM7zQieIs2tFBkr
 MAaZgKbcdAnIz+jPZcG3dBZMSg==
X-Google-Smtp-Source: APXvYqzdOnHcE734UeoNfIg6UA7sYXb/onSusxfzPp6mfZ8rMrJD2viJqDfq0GktC3i6ug9UROadOg==
X-Received: by 2002:a17:90a:da04:: with SMTP id
 e4mr4410210pjv.26.1582311023240; 
 Fri, 21 Feb 2020 10:50:23 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id b27sm3206242pgl.77.2020.02.21.10.50.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 10:50:22 -0800 (PST)
Date: Sat, 22 Feb 2020 00:20:12 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: qlge: unify multi-line string
Message-ID: <20200221185012.GA16841@kaaira-HP-Pavilion-Notebook>
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

Fix checkpatch.pl warning of 'quoted string split across lines' in
qlge_dbg.c by merging the strings in one line. Fixing this warning is
necessary to ease grep-ing the source for printk.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/qlge/qlge_dbg.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 8cf39615c520..28d8649ab384 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1333,16 +1333,16 @@ void ql_mpi_core_to_log(struct work_struct *work)
 		     "Core is dumping to log file!\n");
 
 	for (i = 0; i < count; i += 8) {
-		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x "
-			"%.08x %.08x %.08x\n", i,
-			tmp[i + 0],
-			tmp[i + 1],
-			tmp[i + 2],
-			tmp[i + 3],
-			tmp[i + 4],
-			tmp[i + 5],
-			tmp[i + 6],
-			tmp[i + 7]);
+		pr_err("%.08x: %.08x %.08x %.08x %.08x %.08x %.08x %.08x %.08x\n",
+		       i,
+		       tmp[i + 0],
+		       tmp[i + 1],
+		       tmp[i + 2],
+		       tmp[i + 3],
+		       tmp[i + 4],
+		       tmp[i + 5],
+		       tmp[i + 6],
+		       tmp[i + 7]);
 		msleep(5);
 	}
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
