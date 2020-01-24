Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1D149191
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 00:04:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D31E22FD5;
	Fri, 24 Jan 2020 23:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8EKJD9dm9W8; Fri, 24 Jan 2020 23:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FBA1228EF;
	Fri, 24 Jan 2020 23:04:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF9771BF47E
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 23:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AC4C687A1A
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 23:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mUybdiukU7kG for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 23:04:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6CF4F87A05
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 23:04:30 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id q15so3755842qke.9
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 15:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ubrJtKrXAfrxvZ08H06Ea3Xp2Ekj7ZN05GOIFs9kJRI=;
 b=myq2gH5xFk/8utUnTyRgrcte68aWmT6DcWDKlEX498UDnkZ+uM0/BjS1N+bf7BPLjw
 QK/qlMmgIUnOiM78LNCnBdppMLe3F3ttUnKWYkDNIlC//2YU6SOn3dnSE2wVVAGnKXBd
 GQ3SrcFsIjAPVs5C3BZtgNqiQoTz7pVvXzAiVbh/WFPswBgx3DVtJD1o5e9rgfoIWXUc
 GZs+zfXoHA5tDWg2SdDRpFvTsfkO8FepN6cgR7XhPYChhxbpSQbn4PuFvbBtxuwnW8uo
 sskngt+GjhzZKCGg7NCCBtM/xmzJKjis+BTFCsvFhPNUqoKQpcaNxeg/nwGG5ZPjp0Fy
 3wrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ubrJtKrXAfrxvZ08H06Ea3Xp2Ekj7ZN05GOIFs9kJRI=;
 b=kI7A96X1wSwehb8kF+234dxGQhfIeY9lmZnlCDPukEIhLtbdBxWNWaxq2Wn0BQtLuI
 qjKyCFY8Tz63qv9Zejvo0AWt/nPsSE1XqPCfOlLWfhcdHOqI2xWw5plvbEP8BG+1Oqci
 X14DMNWNwAM+8JnznyzVIApUU3hVUwL8sbABIafNXyLSst/hmuGpBzJDTLQlS/v1OI5j
 upyXHFHmItm1oG5mDk/FJXZIfgv8m8DDmAUe9cGJ078ayi1O/gku1DSsPST1cZNQo/Z7
 z3fwt0Kxoqxq+qukUmnQa9i4bMZLop1xsrxbf3igqgdD7opx6ErR0XxaXK1G29I2dQwC
 XVGQ==
X-Gm-Message-State: APjAAAXCvQfoMcSsxtFFo60kDnuhWRP5mA60DDBG+s0g9k8O1bdq7iE/
 S3cpaeIaz1INPZWHoC1HGD8=
X-Google-Smtp-Source: APXvYqyUuBzzM1L18dGYumE+q+z0NgxDBVjZzTrZKhSobhk72S9Tl9UH0zbYQMEUSK3ZDXK4LbyI/w==
X-Received: by 2002:a37:905:: with SMTP id 5mr5038603qkj.404.1579907069533;
 Fri, 24 Jan 2020 15:04:29 -0800 (PST)
Received: from Bender ([216.197.220.143])
 by smtp.gmail.com with ESMTPSA id s20sm4075191qkg.131.2020.01.24.15.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 15:04:28 -0800 (PST)
Date: Fri, 24 Jan 2020 17:04:26 -0600
From: Jean-Baptiste Jouband <jj.jouband@gmail.com>
To: sakari.ailus@linux.intel.com, mchehab@kernel.org
Subject: [PATCH] staging: media: ipu3: Change 'unsigned long int' to
 'unsigned long'
Message-ID: <20200124230426.GA4528@Bender>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:

WARNING: Prefer 'unsigned long' over 'unsigned long int' as the int is unnecessary

Signed-off-by: Jean-Baptiste Jouband <jj.jouband@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-mmu.c b/drivers/staging/media/ipu3/ipu3-mmu.c
index 3d969b0522ab..5f3ff964f3e7 100644
--- a/drivers/staging/media/ipu3/ipu3-mmu.c
+++ b/drivers/staging/media/ipu3/ipu3-mmu.c
@@ -130,7 +130,7 @@ static u32 *imgu_mmu_alloc_page_table(u32 pteval)
 	for (pte = 0; pte < IPU3_PT_PTES; pte++)
 		pt[pte] = pteval;
 
-	set_memory_uc((unsigned long int)pt, IPU3_PT_ORDER);
+	set_memory_uc((unsigned long)pt, IPU3_PT_ORDER);
 
 	return pt;
 }
@@ -141,7 +141,7 @@ static u32 *imgu_mmu_alloc_page_table(u32 pteval)
  */
 static void imgu_mmu_free_page_table(u32 *pt)
 {
-	set_memory_wb((unsigned long int)pt, IPU3_PT_ORDER);
+	set_memory_wb((unsigned long)pt, IPU3_PT_ORDER);
 	free_page((unsigned long)pt);
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
