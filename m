Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDFA1691F6
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Feb 2020 22:51:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5224586C53;
	Sat, 22 Feb 2020 21:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxkFPgJrQtxi; Sat, 22 Feb 2020 21:51:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDA9086B68;
	Sat, 22 Feb 2020 21:51:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2E471BF302
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 21:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9E8C987B4A
 for <devel@linuxdriverproject.org>; Sat, 22 Feb 2020 21:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHJu7yMYlRPc for <devel@linuxdriverproject.org>;
 Sat, 22 Feb 2020 21:51:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9084D87B3C
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 21:51:17 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y1so2379104plp.7
 for <devel@driverdev.osuosl.org>; Sat, 22 Feb 2020 13:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=HBCqjg0a+bhil4nBIBy5bJmpduFEbhGT3Aouisb2vJA=;
 b=lMUystimAw6OmezUONtF3S/Asq3N5V4IfXfMbTiTTOHzas3ksvIBM+MpZNJM5D9JF7
 74eDu8fC9jCAlBLpsUZODamJ5JRFAp7hSz8uZXzc5N3logQGnFRr2fFjtkdbzDpNezW5
 Cuj36DdAOEfpYeklXAJZEq93ks8JMbwTjTpMcEYiPYNnvN507bag4Xc0Ey/08+uF2kzM
 xZoawnbhTv+AP3wPizcMp+YIh2GuuSWsg3OcAlnsB4xYw7Ye05cizQWymJeIr3pCQ027
 65/M3m9cotB7cTGXxVDlHVfx+ZyOM2JgRBirjDs0SpEYjH16RTRPISvdKexmaBZxdrJS
 G/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HBCqjg0a+bhil4nBIBy5bJmpduFEbhGT3Aouisb2vJA=;
 b=Sy8LQZWp4AOiDqgQPAFaA8GjBJOVBkIbLnB/PzqTGzJAqHbsjMTLsa9qxZjofmP26u
 6Ho24Qr5pxXPmHPvt7q9eZbO9/MkPQZdYuyVuJdFuaiD9uzmS7xTDRPcb6LgzLmzjVU/
 SYMjbvy1GQppU5ZA+YgU2D+u1cPIxi9mXZNNHzWsPYyI8Iwhl1290Uw+wLsle5rt8VtY
 8c1BWKihM6zXNusgxOLK3oYeka2OwnWTyXzKyg9AUC6SU9/ab1sDxaIgApkuMCj5vxeY
 fIVlvhY3VIKat05703KaTXug3LaPF9I9f93g4moUW9/uxGM2/i7juIPMjNQLq6KxrMkH
 Mp8A==
X-Gm-Message-State: APjAAAWYLIEMXNPCoNCZB39YjfkVqsfoMtr0quK7XQl4IFLhOOtwRgVh
 vu/tEzpwZwHKABBctyrXU5btcQ==
X-Google-Smtp-Source: APXvYqzEs91Ql9UUx7rtBSIQ+QLy850ElKz8CsOBfYyqFaA2Jjc3JnMQqsgpkfrU1HGw11ilZP0vkQ==
X-Received: by 2002:a17:90a:a617:: with SMTP id
 c23mr11647984pjq.32.1582408277086; 
 Sat, 22 Feb 2020 13:51:17 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.177])
 by smtp.gmail.com with ESMTPSA id f3sm7384821pfg.115.2020.02.22.13.51.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Feb 2020 13:51:16 -0800 (PST)
Date: Sun, 23 Feb 2020 03:21:09 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: qlge: emit debug and dump at same level
Message-ID: <20200222215109.GA18727@kaaira-HP-Pavilion-Notebook>
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

Write a macro QLGE_DUMP_DBG having a function print_hex_dump so that
the debug and dump are emitted at the same KERN_<LEVEL> and code becomes
simpler. Write a macro instead of calling the function directly in
ql_mpi_core_to_log() to go according to the coding practices followed in
other drivers such as nvec and vc04_services.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---

changes since v1: make code of ql_mpi_core_to_log() simpler.

----
---
 drivers/staging/qlge/qlge_dbg.c | 25 +++++--------------------
 1 file changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index c7af2548d119..f4440670bc46 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1,5 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#define QLGE_DUMP_DBG(str, buf, len)			    \
+	print_hex_dump(KERN_DEBUG, str, DUMP_PREFIX_OFFSET, \
+			32, 4, buf, len, false)
 
 #include <linux/slab.h>
 
@@ -1324,27 +1327,9 @@ void ql_mpi_core_to_log(struct work_struct *work)
 {
 	struct ql_adapter *qdev =
 		container_of(work, struct ql_adapter, mpi_core_to_log.work);
-	u32 *tmp, count;
-	int i;
 
-	count = sizeof(struct ql_mpi_coredump) / sizeof(u32);
-	tmp = (u32 *)qdev->mpi_coredump;
-	netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
-		     "Core is dumping to log file!\n");
-
-	for (i = 0; i < count; i += 8) {
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
-		msleep(5);
-	}
+	QLGE_DUMP_DBG("Core is dumping to log file!\n", qdev->mpi_coredump,
+		      sizeof(*qdev->mpi_coredump));
 }
 
 #ifdef QL_REG_DUMP
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
