Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E3B40763F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Sep 2021 13:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78A664069B;
	Sat, 11 Sep 2021 11:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1ms6UXaGWG8; Sat, 11 Sep 2021 11:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA3BD4035E;
	Sat, 11 Sep 2021 11:21:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18A551BF393
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 11:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07B3180DE3
 for <devel@linuxdriverproject.org>; Sat, 11 Sep 2021 11:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7L8Z7Isvjkf for <devel@linuxdriverproject.org>;
 Sat, 11 Sep 2021 11:21:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BB3780DE1
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 11:21:25 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id n18so2798618plp.7
 for <devel@driverdev.osuosl.org>; Sat, 11 Sep 2021 04:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJJwtO9lB/Xezb44Hovfs3VS8ns8msbsl33JR663TRw=;
 b=kFt+rNpsHh6vcDhYnI5L0HfAVrfZNNXVYNwKzBkga2NIwZBltLslp1Q8ZRUxh5Tn3D
 Dz8MruNhp5KGpwwYwIsBQB/OKZ8GS6d99d2U9D0Ke5PUMkhmzMd+gm1aOwaNGBbe8HHI
 q8d0Iou94kajVTq/N8DGYGT37jYpRHvQ9YezpX6GINO1v9MzHLoFmeetZ7r/YKaxQgVQ
 3rqJiQYde6GLSSL+TZriypz7s0Q0OTczKOdIkZH3Etzt7TfgLRm8pPbVarjFZV5/UAgq
 B593h9aKOzWaF3U4xWxAmiucD3WwAXPIhwcLA119qWUiJflE+roHUyitjzu6NmSqAdkr
 s/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJJwtO9lB/Xezb44Hovfs3VS8ns8msbsl33JR663TRw=;
 b=Q8g3OffLBqN7ZgHKUEnKcyoXxzuijXL7qM4H7vt4NDQQOHHnLCdqYagSmWqxyqWOyS
 ts4MtHv6tdCTNoPx1DKv3fQ2DWsBIapzmAdUzdvdFqc/BYu+SFs76lT4qD22eVSJ73Ds
 ricPhBcYQDmHjdAxlprWNYH0/SeKfqKnp0gvx6ByyqglDMbNPJbd2PyJsk9mgFacdEg2
 Z720wGnh1NrTUA9jMjOm5YJojCEp0uIpYLIE3U2kFmpjFSLwKHtCnt5JtzLn0pTXqq+o
 q2OyTnM8cpcpedymHwhbvn3UqYLMJ4qtntcEdC6V+sxGo1XL/aIaDWs5q36zvA/2/a1v
 S/Dw==
X-Gm-Message-State: AOAM530vm4yHJx/HSUTEDDMAkTWCyxKYCtYlvFWxbFJnxue9LklZLStA
 4OBPZaNIvprIj2YEtGTCqKA=
X-Google-Smtp-Source: ABdhPJzVIFoi2nSdhCT/vFkJAyOitLLkhq9MHE9JCUc572licN0EMOMfUa0KbyChkJ4Gtt/IfqLpIA==
X-Received: by 2002:a17:90a:1282:: with SMTP id
 g2mr2490917pja.230.1631359284923; 
 Sat, 11 Sep 2021 04:21:24 -0700 (PDT)
Received: from localhost.localdomain ([119.8.124.150])
 by smtp.gmail.com with ESMTPSA id g13sm1702101pfi.176.2021.09.11.04.21.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Sep 2021 04:21:24 -0700 (PDT)
From: Cheng Chao <cs.os.kernel@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
 arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org
Subject: [PATCH] [PATCH 4.9] staging: android: ion: fix page is NULL
Date: Sat, 11 Sep 2021 19:21:15 +0800
Message-Id: <20210911112115.47202-1-cs.os.kernel@gmail.com>
X-Mailer: git-send-email 2.26.3
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
Cc: Cheng Chao <cs.os.kernel@gmail.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kernel panic is here:

Unable to handle kernel paging request at virtual address b0380000
pgd = d9d94000
[b0380000] *pgd=00000000
Internal error: Oops: 2805 [#1] PREEMPT SMP ARM
...
task: daa2dd00 task.stack: da194000
PC is at v7_dma_clean_range+0x1c/0x34
LR is at arm_dma_sync_single_for_device+0x44/0x58
pc : [<c011aa0c>]    lr : [<c011645c>]    psr: 200f0013
sp : da195da0  ip : dc1f9000  fp : c1043dc4
r10: 00000000  r9 : c16f1f58  r8 : 00000001
r7 : c1621f94  r6 : c0116418  r5 : 00000000  r4 : c011aa58
r3 : 0000003f  r2 : 00000040  r1 : b0480000  r0 : b0380000
Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 10c5383d  Table: 19d9406a  DAC: 00000051
...
[<c011aa0c>] (v7_dma_clean_range) from [<c011645c>] (arm_dma_sync_single_for_device+0x44/0x58)
[<c011645c>] (arm_dma_sync_single_for_device) from [<c0117088>] (arm_dma_sync_sg_for_device+0x50/0x7c)
[<c0117088>] (arm_dma_sync_sg_for_device) from [<c0c033c4>] (ion_pages_sync_for_device+0xb0/0xec)
[<c0c033c4>] (ion_pages_sync_for_device) from [<c0c054ac>] (ion_system_heap_allocate+0x2a0/0x2e0)
[<c0c054ac>] (ion_system_heap_allocate) from [<c0c02c78>] (ion_alloc+0x12c/0x494)
[<c0c02c78>] (ion_alloc) from [<c0c03eac>] (ion_ioctl+0x510/0x63c)
[<c0c03eac>] (ion_ioctl) from [<c027c4b0>] (do_vfs_ioctl+0xa8/0x9b4)
[<c027c4b0>] (do_vfs_ioctl) from [<c027ce28>] (SyS_ioctl+0x6c/0x7c)
[<c027ce28>] (SyS_ioctl) from [<c0108a40>] (ret_fast_syscall+0x0/0x48)
Code: e3a02004 e1a02312 e2423001 e1c00003 (ee070f3a)
---[ end trace 89278304932c0e87 ]---
Kernel panic - not syncing: Fatal exception

Signed-off-by: Cheng Chao <cs.os.kernel@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index 22c481f2ae4f..2a35b99cf628 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -75,7 +75,7 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
 
 	page = ion_page_pool_alloc(pool);
 
-	if (cached)
+	if (page && cached)
 		ion_pages_sync_for_device(NULL, page, PAGE_SIZE << order,
 					  DMA_BIDIRECTIONAL);
 	return page;
-- 
2.26.3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
