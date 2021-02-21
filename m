Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC7F320928
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 09:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D55183794
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 08:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gi0lC0NhFMpG for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 08:17:01 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 41660832DB; Sun, 21 Feb 2021 08:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50B0383638;
	Sun, 21 Feb 2021 08:15:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EFB51BF2BA
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E52E6F494
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 08:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3tQ9Edv6ardR for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 08:14:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9CF6D6F49F; Sun, 21 Feb 2021 08:14:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34E4A6F494
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 08:14:46 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id c8so45876901ljd.12
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 00:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=omSK3Wv8CLTzZ0RWUacCaYkDOrrrQPEaU7VS1xwPWUs=;
 b=QodoUXZZOJUaKeQBnJIMoD/+FTjXWtbQv3ac60eXy0LS3O+9JJ01yEaiFfp9VMpMoU
 hKwkWWSaF+0vtJRvWMVfjANWxLiPDpGW2UIlLxO9rcSs/zHZsICPlQhjiFT6K4CjByl+
 tX0kQc46HOMwgL2IBvTGr6/rqH5kNWZlQWi17cqcDf+mjALU+j6vjZgl8tEAOlpK1WPi
 o1bD6YaXbQ8ssm/Ivd0V2XtE1oxpMq0QZ79G/56kwZ+dM7nautXITZfqoN12yn+Hg60n
 01FqfeoZtmA7WRhKMgATiQ6GUvAbEFinPbiiQYiXbaokcHkOgIJqMErwz6ZdWIXFeqGS
 0Eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=omSK3Wv8CLTzZ0RWUacCaYkDOrrrQPEaU7VS1xwPWUs=;
 b=JDvtCt7QIqfWPfeOYhIov/yE62yvgSMnDt9I77bzM0c+5K1wUPTdzXjEHVeToOz66q
 8qm9SqJ63QDGDyB3U71Jl4G6cxcMRXal2XaZ4GnUZ+i3d02YApjZohqRcFOPMweYpuPl
 Hr5LYgrglesFxztnm7dCIc76nvN/vgYb3m9uBP9bs+n3gMeQlD3GrGMg+ZMVqVKmWfSD
 RGeOt9ffEFEpCZ850W+gEqXNFeGpd8MPvowszna60LkSQanrYuG9YFM61ewwpoCFoqPS
 5+U3QJaKgQeBsmrP5dXb/bnIx3lWjXtEhnpxoxWJO8JMiPTRMH3WMv925UxqxBtVAJ6I
 swZA==
X-Gm-Message-State: AOAM532WZ9lKdEPBa632xtVTC3BJHyzId7fT9FdZl1f1wFIFbNV9uPPb
 BWwQFb2bRWB7J6KsMjR7yQU=
X-Google-Smtp-Source: ABdhPJzhT4kDA9h0H9wCM8lqQCocXqkJ33Y+END+QndP1c1uy4/vgDR3jCBfYcMcdnm2UjWoEvBuwg==
X-Received: by 2002:ac2:5e3a:: with SMTP id o26mr2281207lfg.469.1613895283527; 
 Sun, 21 Feb 2021 00:14:43 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id x75sm1479093lff.91.2021.02.21.00.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 00:14:43 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: media: ipu3: code style fix - avoid multiple
 line dereference
Date: Sun, 21 Feb 2021 11:12:35 +0300
Message-Id: <20210221081236.9758-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
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
