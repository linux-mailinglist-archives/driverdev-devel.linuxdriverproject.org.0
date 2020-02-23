Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CD016990B
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 18:32:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 504CD86483;
	Sun, 23 Feb 2020 17:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B23jrdFX9PIe; Sun, 23 Feb 2020 17:31:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BC4F8507B;
	Sun, 23 Feb 2020 17:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88CD61BF47D
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 17:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8351C2039A
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 17:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0uhNriu-3fjk for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 17:31:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A61920387
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 17:31:42 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id g6so3027454plt.2
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 09:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6dGIVo3UjYXXlVZT0JsSFZVfq9hKCePvJYVI5H5zSQo=;
 b=YFAQUHVf0zt2MyAZu8lM7gR31cJMlyX3gRQMJY4BGR4+Mswf1dI2bGkInLnMWyhcd9
 IyG0rJdifSJViR8u76TSRi0GtlHnoveVNMJ2BfpC1Mg9RwSMs0yvhUI5jJkBhvbYuZvY
 R2E6Z5xWCLNE7XB4Xn6SAF3ENAurHPn96gjVpoU+3zJJvLA8r4cb8avrIFKTAoTwVj9M
 EOGWNljgRdFdExU0MmXpGIyZ5mSPyfRccUxUvqE2nT6643BIb3++Jp/KBnqllEhmsSQ0
 ghG5XZ8q+Ly9u2d5D7dCpy+r2nMSuRO2BHFxGubYrcJCWzYI3UCSj6vxwoHrINAkqWrg
 kMBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6dGIVo3UjYXXlVZT0JsSFZVfq9hKCePvJYVI5H5zSQo=;
 b=P9uARqlJPs+FM4f+M2mBJyqNsP9eJ/r65mNqlmjfAzpTv72wTQMSkzTzNOGYQX578f
 ROtVLmp8bEZJLqZ+TAi4go3d98sM4GCGzOyZB7pWrBkS8ayZbes93jNt5oHsbJ813xWe
 phbTYbC0Q7gxdo4nylYsqsYvr/x3PujAFVUclQ48q9Y6AIh/+UQxqmBWRhrBmPlIXRM1
 K6YfdqEoc7uSK+bXtqzWzqRtbwx8+ZR/xyRh2Qw0zKev1PBvyLNdn04VmMfgxcBzQpiM
 A07mZjt6Qr903dy/0S5t9/2c2X0kxOMlM3jPFWzBSGV7JNycgUhzmyxs2cqHUifuTSpY
 /SKw==
X-Gm-Message-State: APjAAAWAI6tJYUlXcUY6XZm+AIT/Io17VctNZ5lVexiKgvReC5crWyXX
 1gutCYlPRIOPKg8tDqwR+KuPSQ==
X-Google-Smtp-Source: APXvYqyGBBa7ZW0D45+gTA7LVysPbChpy5fRDtiGdXslH4WVte23Qpr+iojvcMjWyPXg+SI34n23Cw==
X-Received: by 2002:a17:902:9308:: with SMTP id
 bc8mr48071753plb.268.1582479101749; 
 Sun, 23 Feb 2020 09:31:41 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.179])
 by smtp.gmail.com with ESMTPSA id l5sm9030480pgu.61.2020.02.23.09.31.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Feb 2020 09:31:41 -0800 (PST)
Date: Sun, 23 Feb 2020 23:01:32 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 netdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: qlge: emit debug and dump at same level
Message-ID: <20200223173132.GA13649@kaaira-HP-Pavilion-Notebook>
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

Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
instead of existing functions so that the debug and dump are
emitted at the same KERN_<LEVEL>

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---

changes since v1: make code of ql_mpi_core_to_log() simpler.
changes since v2: directly call the function instead of defining a
macro.

Also, can you please help me understand how are are numbers 32 and 4
chosen for the function print_hex_dump()?

----
---
 drivers/staging/qlge/qlge_dbg.c | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index c7af2548d119..44fb3a317b8d 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
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
+	print_hex_dump(KERN_DEBUG, "Core is dumping to log file!\n",
+		       DUMP_PREFIX_OFFSET, 32, 4, qdev->mpi_coredump,
+		       sizeof(*qdev->mpi_coredump), false);
 }
 
 #ifdef QL_REG_DUMP
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
