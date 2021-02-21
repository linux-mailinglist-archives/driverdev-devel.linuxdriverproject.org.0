Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B38FD320A31
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B2686F478
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 12:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jc4F3Njz3x8y for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 12:12:51 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id BD6AE6F4A8; Sun, 21 Feb 2021 12:12:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62C7A6009C;
	Sun, 21 Feb 2021 12:12:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD8571BF4DA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 12:12:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA38E85D2B
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 12:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M1pvgfxXSvZk for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 12:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F314F85CAA
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 12:12:21 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id r23so47308569ljh.1
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 04:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AFrIx7saRiKChL+GBKdte021u7jJCLE/loYJ5cq9bic=;
 b=ZWL2i2nTyP0l2+87Cd3+Y0f+F6MyhfAP/+jneHxIiV2Ncpx9ByFaZmSva4XylP6YG2
 ufL4/UKrSc4hP8ZE+BHJG4mPyLV8BUyFzlG5cyaUlDKM21SKndnSFG38HY4lrCxXpTLX
 Vn14JpB8fSEM/HDHk92Ytb/0QQwmxiGmkL8EPYOAeNe/e4qF/cG0Ae0ObtmTbEE4zLgV
 dSWhL0fbNV4GyaZjDdANI/31/o+V8eM1PHiQHbD3Nr5Wrb3Dzy/0zVk+JeyH8RQRXNce
 aA3yfAxu8cuX5QZFm94qizlR8Jy8ys78az0URuXvrObtfuhNMKb7EVYXbZQSwnQ6KxlS
 CG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AFrIx7saRiKChL+GBKdte021u7jJCLE/loYJ5cq9bic=;
 b=O8IPf3lchZPEDmeVro4mflBuxsbpeMGBKcD4z5Wkkw+C4530IhBd8oyOdViZ6KzJrc
 r2WXBgkGB4gaNspEsKVEYOlcBuYjebkzabbAa43FVbR8pAljPe1gGYlbDeVXQC3VhvcZ
 MXl2hZIK+02v6S9P3RTs9ec/J7dSNKss+tAvvidYlWyVlF88ZyGGjT1gcjq9SqP/Lwn2
 +aDZO2rh/J0G7cBBg4qb9hbLQF2//w4WLQ9luzdP5s13pxxAS9rAbz+aA6+BigCpNjK6
 YTLTDiVzqKjuJfP6FgGCVDjb8aJCSMF9epeXCS8YB5l7lrKqPyq58S1a4xiu50WeJ6Ua
 qG0w==
X-Gm-Message-State: AOAM530rJVElb8qo3QRG2dTf9JlvXrGHpOZXKwf0jHMoLx8Fw4qjhKcH
 c67ZkOOIUD16JgyFmj2gx+KJ2TOjI66DTQ==
X-Google-Smtp-Source: ABdhPJyTJpgyQhyPQfHTG4obq4iNGUrC4g3+srKXwR1EwCNqwUKC8Bf5uJayFjX93bT9OskUeLrUqg==
X-Received: by 2002:a19:3c4:: with SMTP id 187mr11444074lfd.458.1613909539918; 
 Sun, 21 Feb 2021 04:12:19 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id 12sm668214lfq.229.2021.02.21.04.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 04:12:19 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: media: ipu3: code style fix - avoid multiple line
 dereference
Date: Sun, 21 Feb 2021 15:10:20 +0300
Message-Id: <20210221121020.1501-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YDIX3Q0U8/PcVWgN@kroah.com>
References: <YDIX3Q0U8/PcVWgN@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Nikolay Kyx <knv418@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl warning:

WARNING: Avoid multiple line dereference

in file ipu3-css.c

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---

Additionally some style warnings remain valid here and could be fixed by
another patch.

v2: Removed second part of patch which fixes non-existent problem

 drivers/staging/media/ipu3/ipu3-css.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
index 608dcacf12b2..29894ee566c1 100644
--- a/drivers/staging/media/ipu3/ipu3-css.c
+++ b/drivers/staging/media/ipu3/ipu3-css.c
@@ -1206,14 +1206,14 @@ static int imgu_css_binary_preallocate(struct imgu_css *css, unsigned int pipe)
 
 	for (i = 0; i < IPU3_CSS_AUX_FRAMES; i++)
 		if (!imgu_dmamap_alloc(imgu,
-				       &css_pipe->aux_frames[IPU3_CSS_AUX_FRAME_REF].
-				       mem[i], CSS_BDS_SIZE))
+				       &css_pipe->aux_frames[IPU3_CSS_AUX_FRAME_REF].mem[i],
+				       CSS_BDS_SIZE))
 			goto out_of_memory;
 
 	for (i = 0; i < IPU3_CSS_AUX_FRAMES; i++)
 		if (!imgu_dmamap_alloc(imgu,
-				       &css_pipe->aux_frames[IPU3_CSS_AUX_FRAME_TNR].
-				       mem[i], CSS_GDC_SIZE))
+				       &css_pipe->aux_frames[IPU3_CSS_AUX_FRAME_TNR].mem[i],
+				       CSS_GDC_SIZE))
 			goto out_of_memory;
 
 	return 0;
@@ -1441,13 +1441,11 @@ static int imgu_css_map_init(struct imgu_css *css, unsigned int pipe)
 	for (p = 0; p < IPU3_CSS_PIPE_ID_NUM; p++)
 		for (i = 0; i < IMGU_ABI_MAX_STAGES; i++) {
 			if (!imgu_dmamap_alloc(imgu,
-					       &css_pipe->
-					       xmem_sp_stage_ptrs[p][i],
+					       &css_pipe->xmem_sp_stage_ptrs[p][i],
 					       sizeof(struct imgu_abi_sp_stage)))
 				return -ENOMEM;
 			if (!imgu_dmamap_alloc(imgu,
-					       &css_pipe->
-					       xmem_isp_stage_ptrs[p][i],
+					       &css_pipe->xmem_isp_stage_ptrs[p][i],
 					       sizeof(struct imgu_abi_isp_stage)))
 				return -ENOMEM;
 		}
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
