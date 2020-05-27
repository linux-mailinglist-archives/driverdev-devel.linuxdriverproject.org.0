Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3C71E39ED
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D25E86B19;
	Wed, 27 May 2020 07:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0NiwJPsS_sMg; Wed, 27 May 2020 07:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C93F7863AC;
	Wed, 27 May 2020 07:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7CDE1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4BD58836C
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3dS7fZ2SljVN for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 671DC8833F
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id b190so11429874pfg.6
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lhqAHEvRLnCQw7o+jUfsPtsKFyOebABISvsPaRwN9pA=;
 b=tqxJOttPm9K91CJ00mLJnUiAm1t1uMYT9X8Uz2q1H8u9cWNxW1ufnkn62fGcdyZewN
 2+9ifHAzzHrwSgF7fZcih1x3rXo5v9q6lIJRcqUw3kMRr29v7wuE1aATEWiY0a1OsTx4
 HafOHxpmDKCCFWMX70fPy0aPqsABeWUCUuERe5uOwWo1cxhFPfYjFVW+aqSaGBcF11oN
 UT+X71CayWscpuzgUOtuN2809KmW3/BQjrcbddJGInKHdb4bsnaSKRUQj44HEvaIfOYo
 kDvygzPkh025tfoujSQyefU39dt/TUqTWQvz1LgeRmjYVAN1vJ9pYe/Qel+Aj6OPCyIm
 RjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lhqAHEvRLnCQw7o+jUfsPtsKFyOebABISvsPaRwN9pA=;
 b=ZUU+q5Y6x4BBI1NwmyIqu4yTuFJStWAdYHncDsXfGOzSRg7hlfV26uTR7MwWTPswVc
 6yKxAsk1kbffvcPP+alxElbKCovkqjn1NvvbjxQYM4M64xntqOl342gXLVqNx0SxrpEX
 DbifP9vwtNTFGj8Yt6K1X4FklKOlUXAiQ9xRtXgeSJDeYQSV2VK0/mnP5tnT66bCZHpy
 E/xZU0Ekls4ubhJIgrCcaogSGfsta97R0TFrl2r4hA8YHrxpxwMlXKY3gelm15ls0yn0
 /wMRuwtzwtcKn+VNEc872vSpDmwZUxibJpdmeH+tKKWWTy/T1yrdo3UW9Q04pGRKUzbi
 yyng==
X-Gm-Message-State: AOAM532NQGteFO9QMSlP2le0FDwvXOVKwil+HsCNAgh/+G+BgcSgk1TY
 CHTUZT0+yV7mPZD9cDBRX+E=
X-Google-Smtp-Source: ABdhPJxJ26ZoY/VgMQTRMEVnpnq9cud32xiSg/d3bcZs3eFcYav/pHsIvDXVtq4L/0Mqm9sua55Yiw==
X-Received: by 2002:a62:7c02:: with SMTP id x2mr2597592pfc.70.1590563530733;
 Wed, 27 May 2020 00:12:10 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:10 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 1/7] media: atomisp: Clean up if block in sh_css_sp_init_stage
Date: Wed, 27 May 2020 00:11:44 -0700
Message-Id: <20200527071150.3381228-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clang warns:

../drivers/staging/media/atomisp/pci/sh_css_sp.c:1039:23: warning:
address of 'binary->in_frame_info' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                } else if (&binary->in_frame_info) {
                       ~~   ~~~~~~~~^~~~~~~~~~~~~

in_frame_info is not a pointer so if binary is not NULL, in_frame_info's
address cannot be NULL. Change this to an else since it will always be
evaluated as one.

While we are here, clean up this if block. The contents of both if
blocks are the same but a check against "stage == 0" is added when
ISP2401 is defined. USE_INPUT_SYSTEM_VERSION_2401 is only defined when
isp2401_system_global.h is included, which only happens when ISP2401. In
other words, USE_INPUT_SYSTEM_VERSION_2401 always requires ISP2401 to be
defined so the '#ifndef ISP2401' makes no sense. Remove that part of the
block to simplify everything.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/sh_css_sp.c | 27 +++----------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index e574396ad0f4..e242a539d3d8 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1015,34 +1015,15 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		return err;
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
-#ifndef ISP2401
-	if (args->in_frame)
-	{
-		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-		if (!pipe)
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-	} else if (&binary->in_frame_info)
-	{
+	if (stage == 0) {
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
 			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-#else
-	if (stage == 0)
-	{
-		if (args->in_frame) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+
+		if (args->in_frame)
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-		} else if (&binary->in_frame_info) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+		else
 			ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-		}
-#endif
 	}
 #else
 	(void)pipe; /*avoid build warning*/

base-commit: 938b29db3aa9c293c7c1366b16e55e308f1a1ddd
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
