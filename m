Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A591E0753
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAB5C875B7;
	Mon, 25 May 2020 06:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VMGY+VDm8lq; Mon, 25 May 2020 06:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE88286BCF;
	Mon, 25 May 2020 06:56:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49A681BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 46A4087DAF
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQvE9clpmy28 for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4FCD87E3C
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93279208DB;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=Vq4wXzHAXl+Pr5VKcaCg79cLNb8KGa1Alh8POOU+lKI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Pj5P1R3uLFR9o6MYaSNZ2AfLFcIXBxZmDDCGjOZOVwPROGvRfNyvQ0Wxr6ijKRKkM
 aDmig1Ge4vQmSBBnKrAy1ECSW4sZDKU7T+L/H/nZmBqvRuDYdxXIrNM6o7M7CQCVw1
 c6k5PhurpKIBeJgeok2xYHsrQ8+p/bWIwEWllwcs=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d7S-Hv; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 11/11] media: atomisp: fix size of delay_frames array
Date: Mon, 25 May 2020 08:56:10 +0200
Message-Id: <0357fca3c06faf1fbae5f33a3fa09420f64aad93.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Right now, the variables that define the max number of
delay frames is defined as:

	#define VIDEO_FRAME_DELAY		2
	#define MAX_NUM_VIDEO_DELAY_FRAMES	(VIDEO_FRAME_DELAY + 1)
	#define NUM_PREVIEW_DVS_FRAMES          (2)
	#define MAX_NUM_DELAY_FRAMES   MAX(MAX_NUM_VIDEO_DELAY_FRAMES, NUM_PREVIEW_DVS_FRAMES)

In other words, we have:
	MAX_NUM_VIDEO_DELAY_FRAMES = 3
	MAX_NUM_DELAY_FRAMES = 2

The MAX_NUM_DELAY_FRAMES macro is used only only when allocating
memory. On all other parts, including looping over such array,
MAX_NUM_VIDEO_DELAY_FRAMES is used instead, like:

	void sh_css_binary_args_reset(struct sh_css_binary_args *args)
	{
		unsigned int i;
	...

		for (i = 0; i < MAX_NUM_VIDEO_DELAY_FRAMES; i++)
			args->delay_frames[i] = NULL;

Which will cause buffer overflows, with may override the next array
(tnr_frames[]).

In practice, this may not be causing real issues, as the code
checks for num_delay_frames on some parts (but not everywhere).

So, get rid of the smallest value.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/ia_css_pipe.h | 2 +-
 drivers/staging/media/atomisp/pci/sh_css_defs.h | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe.h b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
index 91653952f1a7..9c9e1264feb0 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
@@ -31,7 +31,7 @@ struct ia_css_preview_settings {
 	struct ia_css_binary vf_pp_binary;
 
 	/* 2401 only for these two - do we in fact use them for anything real */
-	struct ia_css_frame *delay_frames[MAX_NUM_DELAY_FRAMES];
+	struct ia_css_frame *delay_frames[MAX_NUM_VIDEO_DELAY_FRAMES];
 	struct ia_css_frame *tnr_frames[NUM_TNR_FRAMES];
 
 	struct ia_css_pipe *copy_pipe;
diff --git a/drivers/staging/media/atomisp/pci/sh_css_defs.h b/drivers/staging/media/atomisp/pci/sh_css_defs.h
index fcd5081edf82..d444af82c309 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_defs.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_defs.h
@@ -225,8 +225,6 @@ RGB[0,8191],coef[-8192,8191] -> RGB[0,8191]
 
 #define NUM_VIDEO_TNR_FRAMES		2
 
-#define MAX_NUM_DELAY_FRAMES	MAX(MAX_NUM_VIDEO_DELAY_FRAMES, NUM_PREVIEW_DVS_FRAMES)
-
 /* Note that this is the define used to configure all data structures common for all modes */
 /* It should be equal or bigger to the max number of DVS frames for all possible modes */
 /* Rules: these implement logic shared between the host code and ISP firmware.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
