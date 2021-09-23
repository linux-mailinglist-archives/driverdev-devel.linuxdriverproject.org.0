Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6170E4160ED
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 16:21:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 366B160BE8;
	Thu, 23 Sep 2021 14:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMWeCZQclUG0; Thu, 23 Sep 2021 14:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90DAC60777;
	Thu, 23 Sep 2021 14:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 007B41BF35E
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E34FE84351
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wS25-NO9_HGq for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 14:21:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62C4F84273
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 14:21:26 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id m21so6440981pgu.13
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 07:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VExg1EODe5DfifVwuEvAEptFxn36+63FCOR3WUKgddg=;
 b=ADAeN04mnFiF90H9qjHP2RG2V6ThRuwFZgQV9+7SD74/p/IOL5PCwJK3n8M4fi0afp
 VxckZF8jfdW2Wfj4WRxqLIZ2OVX8wmdYVHvmv5m806kgl3QwxQOutlHPmfb6BmXD3ida
 CKTrv/mfITr21Nr3FSVVjyVW7r/Z5+T0bvjVKhj7SD+iU2bfpLAbnvQwaP3cx1EsQpxF
 qMcKmctYk4f7H4KDhO4EpNREMOjRHVzIVWR3Q4bCvfNBKPo6mpctY0/VZybpKIaivQvw
 od6sequzVdy3+HkBJOypsPAle4XjJVUiUWiCaI/dCXYKtyYH2lD8L7swARiUtpjU1tXf
 iyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VExg1EODe5DfifVwuEvAEptFxn36+63FCOR3WUKgddg=;
 b=zeV6wPtYM7ylXo5IBFTRhLqyDGnJeVihIK82qwjN99bhQWMeUzS6r5yCikPyCI6MUI
 nmuBGzEImlbyGv0KeyrI12BxuPo8UbyZiTE6KD/9fGtSTpdodS/NwvNQd9N3nSSHAR9I
 wOfIS2VzeL9dFtPPAHevw4E3lCguLELttydYx+GHOZ1I9+yqMROoyN1/W8EOQZSVDow0
 68OcLsDiSu6jbBd8y0jKBw3I/o/JCobs861vsezd7oeeSDaC8sHQv+KFd+Ao1P25wGRY
 IjUrxFe4SoZ7Gn+POKSJ6D2Lu6tHF7NAsPs2zZQ1v2QUNOugj5XbraoNudHTjRxyxhvj
 2Y8g==
X-Gm-Message-State: AOAM5324UYKHpux1l0kjwwDr/MLtX1bhqEjifxqIXkzgshKhUYFaB+Tv
 u4zD9ZHWrqb92hmlJ6N/tgg=
X-Google-Smtp-Source: ABdhPJz9lTZwbt5EZtD0Z1Lyt+P1Rb0EtPeY+/UFV0In9Qiwulm9FnPDnemMvS6eSTt49Txh8rorjw==
X-Received: by 2002:a05:6a00:2ba:b0:444:bcbb:c915 with SMTP id
 q26-20020a056a0002ba00b00444bcbbc915mr4538373pfs.66.1632406885859; 
 Thu, 23 Sep 2021 07:21:25 -0700 (PDT)
Received: from localhost.localdomain ([119.8.124.150])
 by smtp.gmail.com with ESMTPSA id z24sm6799249pgu.54.2021.09.23.07.21.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 07:21:25 -0700 (PDT)
From: Cheng Chao <cs.os.kernel@gmail.com>
To: labbott@redhat.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org,
 arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org
Subject: [PATCH 4.9] staging: android: ion: fix page is NULL
Date: Thu, 23 Sep 2021 22:21:17 +0800
Message-Id: <20210923142117.1110386-1-cs.os.kernel@gmail.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <CA+1SViDzyAsbQu7S+qKgLR7vS3wmA+MbQWZhV2rzdbLiFnxvsg@mail.gmail.com>
References: <CA+1SViDzyAsbQu7S+qKgLR7vS3wmA+MbQWZhV2rzdbLiFnxvsg@mail.gmail.com>
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
