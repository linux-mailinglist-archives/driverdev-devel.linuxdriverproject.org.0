Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EECB33D868
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:57:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8F083E31;
	Tue, 16 Mar 2021 15:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UP2HgGueh11U; Tue, 16 Mar 2021 15:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C02783DED;
	Tue, 16 Mar 2021 15:56:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50A951BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 404206F635
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jgcGTMR6ApJC for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:56:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87C3B6F60D
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:56:46 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id p186so37375992ybg.2
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gj0mikrLZmWTiWANlej8ah5+G+uOw7wqH4StZRro6uM=;
 b=VH12ZdGfTi9p8W2BDp9E2Cl/hd06N5/fFLrRsw5RKEaXK4SWQkkfb9k27Pt25BFmIG
 Cj9B0cGPjrPE2sLXdDIgr6Kh6eSeW4EimEByQO6BKni9SzrAgtWcsAEvqnFEhmoicX4A
 d1MbnRBkF7MYSeOCu/3hLE1hx2rZJ/NpuG6qJ8ZsRGybXbi4L3CkC+WsQyEBNehl5plo
 yCU4FtVU0wr3fSWjHVX3g0rhdPVeDXMdPgVjGIr/dpSkqPo39PAxqY9QD1FXPaSRs9ZH
 4mxZHWPphJ2vDjUcXPVllnA3RSPhNbRwkl0sI4OZ2LVnbTOhqk1+NvdT9bPGphDYXUzb
 Gj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gj0mikrLZmWTiWANlej8ah5+G+uOw7wqH4StZRro6uM=;
 b=ZbBx0oPdws99OltpolqUK9cUSSNL5Gy1AhXPiaw3T2rJMG/EM7IqdqM9f14eatNXrc
 fJzXUZF0DxfwVNRFITjUjuut2P/qCXyQfhek8g6W8uiqKjClLU1lslGPg81Y8qwlZgLo
 2IqLnJg6ApAKOYKjIwf5QTsPWBb7QSEshJLDDMk0ZWsOKWdVzq2hfg0yhesoEZXYYdvx
 puxe5jXeKOqFYGAie7h+EVFfpfci+ugXxAPbgErV+4h9PhTdyacSqIofK+sdRa6dWTJr
 uCp+9dlTDoDBcAL9t6nJqCP5PF+WJpGTwdZUWyWtRGK8EIRrCLNcvWA7kctje0Ll4WdG
 lcIQ==
X-Gm-Message-State: AOAM533U/F5upf+gJlEEvwyke2ShAeEEI5S2t1DJpqmrmpL2NcH9t1v6
 cbqEmrhPNUdpv7Mzj3KD2m9Aoo9SZgfpJz160Ho=
X-Google-Smtp-Source: ABdhPJyhDSvvhWGBvqyaYl9vR9nKh/92wVzyMLuqOOqYHEgI6MvjBAz8Ik0zwx4gkvN36heRJFT3ixNSqt7kDBxcd30=
X-Received: by 2002:a25:6c85:: with SMTP id h127mr7359838ybc.341.1615910205513; 
 Tue, 16 Mar 2021 08:56:45 -0700 (PDT)
MIME-Version: 1.0
From: Anish Udupa <udupa.anish@gmail.com>
Date: Tue, 16 Mar 2021 21:26:34 +0530
Message-ID: <CAPDGunMo-ORwDme4ckui5kxxW6-Ho1J_MjcTkxdDdKLMDrCFdg@mail.gmail.com>
Subject: [PATCH] drivers: staging: qlge: Fixed an alignment issue.
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
 gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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

The * of the comment was not aligned properly. Ran checkpatch and
found the warning. Resolved it in this patch.

Signed-off-by: Anish Udupa <udupa.anish@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 5516be3af898..bfd7217f3953 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3816,7 +3816,7 @@ static int qlge_adapter_down(struct qlge_adapter *qdev)
  qlge_tx_ring_clean(qdev);

  /* Call netif_napi_del() from common point.
- */
+ */
  for (i = 0; i < qdev->rss_ring_count; i++)
  netif_napi_del(&qdev->rx_ring[i].napi);

-- 
2.17.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
