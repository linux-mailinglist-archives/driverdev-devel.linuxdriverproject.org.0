Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA6D1E8E59
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:56:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC6728758F;
	Sat, 30 May 2020 06:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nxW8K26vljff; Sat, 30 May 2020 06:56:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85862874AE;
	Sat, 30 May 2020 06:56:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9ADEB1BF2C8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9848D86933
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7FKoTxE6MDUx for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1158187587
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A595A217D9;
 Sat, 30 May 2020 06:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821763;
 bh=993dPgX4SG4DIHnZBSG0XtUGYOKUCrL34k92JltSwRQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ez+SALLfIKCxO2ABBSwEaqIW5C29r8PvJULP46huvziCGyMcWGhVJelxfwHLrMU0P
 9pleZqlsm/yWHklpbaC56jhpjeTxEe52flWJ8Ecvr9/J2bTf5F/3WPeIMa/P37sj3X
 +8f7y/0MFaONdXQnl3MvphaqJTWVXajHcaNSaDbs=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPV-001hqB-Ki; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 27/41] media: atomisp: avoid an extra memset() when alloc
 memory
Date: Sat, 30 May 2020 08:55:44 +0200
Message-Id: <ff61a66ac404db40263220f4f96eedc16157dbc8.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the variant which zeroes the memory when allocating,
instead of having an explicit memset.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c  | 3 +--
 drivers/staging/media/atomisp/pci/sh_css.c                     | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
index ebf36f7a514f..feacd8f12b14 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
@@ -593,12 +593,11 @@ static enum ia_css_err pipeline_stage_create(
 		out_frame[i] = stage_desc->out_frame[i];
 	}
 
-	stage = kvmalloc(sizeof(*stage), GFP_KERNEL);
+	stage = kvzalloc(sizeof(*stage), GFP_KERNEL);
 	if (!stage) {
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 		goto ERR;
 	}
-	memset(stage, 0, sizeof(*stage));
 
 	if (firmware) {
 		stage->binary = NULL;
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 4269c16ad4f1..90d73fd8aa1b 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -9398,7 +9398,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	}
 
 	/* allocate the stream instance */
-	curr_stream = kmalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
+	curr_stream = kzalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
 	if (!curr_stream)
 	{
 		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
@@ -9406,7 +9406,6 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		return err;
 	}
 	/* default all to 0 */
-	memset(curr_stream, 0, sizeof(struct ia_css_stream));
 	curr_stream->info.metadata_info = md_info;
 
 	/* allocate pipes */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
