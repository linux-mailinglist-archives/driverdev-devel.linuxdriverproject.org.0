Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6EF4160E2
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 16:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A283040208;
	Thu, 23 Sep 2021 14:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JS8ukzfEy058; Thu, 23 Sep 2021 14:18:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF2CD401FA;
	Thu, 23 Sep 2021 14:18:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C36651BF35E
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B313884349
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtp37uV5Z538 for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 14:18:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EACD84347
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 14:18:27 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id l6so4092220plh.9
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 07:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VExg1EODe5DfifVwuEvAEptFxn36+63FCOR3WUKgddg=;
 b=YTuEpIKa9E8ynxsx9kAB+5/HiPMZ6RVaoCPG3dYqdFZb5s+ONQCKO+9dsBv6CAzeTr
 fv2VpOzcxQG1nckBzEbbc0NskRRH1lXk9PL163Q9RWyd9Xe9MCjTaFPg0CgG4WWsvNUR
 jR0HbecP/Y7C7NQPoeifTqazRiP9p3uKERYMwvRoghbr6vf9m5+1A+P5PIMmbfvx16Ju
 Uj+bjkjR4sS7vy/GCJqZln5mY3iPyE/O+kWYG/7y2Ni41mWBK2pFcMthMdLcg6hGARCB
 +ykaFz+ky5QDOON7rNye45goRrxSIaK7NjHx/Xhs6R5prZWxOpiHWk3p7j3Pb+5IuS5+
 Ni7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VExg1EODe5DfifVwuEvAEptFxn36+63FCOR3WUKgddg=;
 b=wMu/FyOUet69fe+DA8EOYnYM6Z4t/n8pYo7TkbrGuZQTBbVkVWoDlpMeGGxIKZhgc1
 n1doPMEOIbWrjahIhJdGG25N/BpO3SqTVAeIJ2U/cWorP4A3Gj5htX2jR8EW+nwi+XcZ
 rx0gB6tMsSY2M9jAuSU1jpkwITxZyXr5McPToDA9W9IlW55qTvwvOv9IGTzSqI0mwnmY
 gxR+fvdy/pf2Szsa3kwxBcmL/6a9Sf41hk9HjAL/subHRuPe+OeWpVVhCyq61Mg7hl9G
 jfsPtw3Ktn8UVMnS9VLjMOFYGevO6WUK+myC1ZYCw5lARurevZyZicnx8/RsCo5sXN4p
 Xd1w==
X-Gm-Message-State: AOAM530Fs0sb6tj10venxkXgEnZAEQzfssNCgeG94LX6Z0n7sBZu2qRQ
 pClsGkRn41FHt0bFIHf3LlU=
X-Google-Smtp-Source: ABdhPJwdJujmyznkOO+y4cirFEV6foiVr7vGf0b4KjMpSUfKOxcdpM3ea8FuJ/MmO37j3Ok1pIGoZA==
X-Received: by 2002:a17:902:c784:b0:13c:a5e1:caf0 with SMTP id
 w4-20020a170902c78400b0013ca5e1caf0mr3995123pla.67.1632406706501; 
 Thu, 23 Sep 2021 07:18:26 -0700 (PDT)
Received: from localhost.localdomain ([119.8.124.150])
 by smtp.gmail.com with ESMTPSA id o2sm9497307pja.7.2021.09.23.07.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 07:18:25 -0700 (PDT)
From: Cheng Chao <cs.os.kernel@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
 arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org
Subject: [PATCH 4.9] staging: android: ion: fix page is NULL
Date: Thu, 23 Sep 2021 22:18:14 +0800
Message-Id: <20210923141814.1109472-1-cs.os.kernel@gmail.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
References: <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
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

Fixes: commit e7f63771b60e ("ION: Sys_heap: Add cached pool to spead up cached buffer alloc")
the commit e7f63771b60e introduced the bug which didn't test page which maybe NULL.
and previous logic was right.

the e7f63771b60e has been merged in v4.8-rc3, only longterm 4.9.x has this bug,
and other longterm/stable version have not.

kernel panic is here when page is NULL:

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
