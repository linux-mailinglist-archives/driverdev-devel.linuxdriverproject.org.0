Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC7D30389
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:47:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82E4A86A1D;
	Thu, 30 May 2019 20:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PY1k0ETUmaKF; Thu, 30 May 2019 20:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B1C186A10;
	Thu, 30 May 2019 20:47:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0C741BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AE2C988416
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zjw1jJPNg59q for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B64388411
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:47:34 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id s24so2898917plr.8
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 13:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nFIRytH7aMnjv5Dd67Kdi8+HL3lJPCu+7kfNtuSjMTo=;
 b=JCOp93MZ2r6mhkO3ypr7kco81GNewMSF8KrRjgKm9SQ7DIf66Ulc3OI8dtkId6ZV1/
 KYxb/ywJq/HXBc4p/0iEI9OT+zuXphmmdtAzwBQQcCUYOCUZ52JauiK8WvDuB6ji/+ed
 DUXf8YhD7xF+FPeOEkp7CMmr6QsqH7N7a3r7R7JnfEmO7HD65NwFDB33mRvDgZwmpfxq
 iU8/6Cb3uj7+QAgV/qbxEztmI/yTxS2FaKsGdlS3bP0vtdsP4oh6DlKMv7ZL8epOI7gA
 RuweFgwaz4jZs6WfPXWApOttmovw6AXN6OLnfTF8Q20cckzRy9tOHLqMWuy8D8RlRjxb
 M2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nFIRytH7aMnjv5Dd67Kdi8+HL3lJPCu+7kfNtuSjMTo=;
 b=smEQ20Y8FDVa16K+FKXgtR04tkUpsu/LKFXe+NHEgxTKQcQmBLLjw4Wuab7NzEGxdB
 M+uVfvV8iq9YMbeWEzor9RVhAt4boSWKyWn0vUhld3HLmINIGRHxZGSngOIX2Ek4OUNm
 LXQX6G3nhYfWc6PbCJcpLTfRN+ifQXYPaAfafqrH1HrZFHOfM4cMycT+qoZwtASumdE/
 1b4Fw2hw4khRlWiWFr1/ArPEzg5QdVPXsd23eW/UsMtr/GxPqUE3Mlacp/FvMyMwVmSx
 lpBDeptu1FLTyvWwIDfLbx3/lK6cgOHIABxjmXnXDHBA1e0AfWFY8db4GVLZ7YGUgBTS
 yzsQ==
X-Gm-Message-State: APjAAAWcHan1YF9LIlspzZa8OOIiy1ewUHVqv4U6cBnfJXP28+UIYoZ4
 klzyuO9ij9VxrlBPGthHmvU=
X-Google-Smtp-Source: APXvYqyHkfDtsyYv8qocg4EROD6AMYRWQSKfYTK6Q/00RxRI16g3FJcKy7i4RETHuFOR3KhyoGjccg==
X-Received: by 2002:a17:902:6ac4:: with SMTP id
 i4mr5137585plt.75.1559249253937; 
 Thu, 30 May 2019 13:47:33 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id f4sm3672409pfn.118.2019.05.30.13.47.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 13:47:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: hans.verkuil@cisco.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
 code@wizofe.uk, ezequiel@collabora.com, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: davinci_vpfe: Remove variable vpfe_dev
Date: Fri, 31 May 2019 02:17:18 +0530
Message-Id: <20190530204718.29892-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variable vpfe_dev and replace it with its value (since the
function otherwise uses values directly instead of local variables).
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_video.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 510202a3b091..8927b744b13e 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -448,7 +448,6 @@ vpfe_video_get_next_buffer(struct vpfe_video_device *video)
 /* schedule the next buffer which is available on dma queue */
 void vpfe_video_schedule_next_buffer(struct vpfe_video_device *video)
 {
-	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	unsigned long addr;
 
 	if (list_empty(&video->dma_queue))
@@ -463,19 +462,18 @@ void vpfe_video_schedule_next_buffer(struct vpfe_video_device *video)
 	list_del(&video->next_frm->list);
 	video->next_frm->vb.vb2_buf.state = VB2_BUF_STATE_ACTIVE;
 	addr = vb2_dma_contig_plane_dma_addr(&video->next_frm->vb.vb2_buf, 0);
-	video->ops->queue(vpfe_dev, addr);
+	video->ops->queue(video->vpfe_dev, addr);
 	video->state = VPFE_VIDEO_BUFFER_QUEUED;
 }
 
 /* schedule the buffer for capturing bottom field */
 void vpfe_video_schedule_bottom_field(struct vpfe_video_device *video)
 {
-	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	unsigned long addr;
 
 	addr = vb2_dma_contig_plane_dma_addr(&video->cur_frm->vb.vb2_buf, 0);
 	addr += video->field_off;
-	video->ops->queue(vpfe_dev, addr);
+	video->ops->queue(video->vpfe_dev, addr);
 }
 
 /* make buffer available for dequeue */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
