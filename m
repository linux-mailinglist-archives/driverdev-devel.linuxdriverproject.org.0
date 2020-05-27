Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5E21E39F5
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D13886B59;
	Wed, 27 May 2020 07:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfysGN6hBsfG; Wed, 27 May 2020 07:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B04286B2A;
	Wed, 27 May 2020 07:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 523631BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EE858845D
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pq+Ydr8CNjsH for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB7C4883CA
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:19 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id ci21so1161508pjb.3
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YnWT8s8ink/KeJFRPdHxxy0KnE9QXS2EIJkcc7O9gtk=;
 b=DM3vqxu8dRtwoGww+IORQKfTTdW1nnuAvY8aRKzh62Cx8kqBbcP5lV1qm8URdE5NwI
 c2s+2BV+jhzfiL+hWF6uvl3M3rc4SZRksRliKnmNBhwzO3LalGMUVe/pJ2seJegirKxY
 3aOolQxZqc5UnpX0y292F3vEt7C88vjlI+mWd1ad8e7/AVNK0GAZHXd/EGkAQqw/UBTH
 4FdXsSMJJ6gziYNmWfGWpUTvBl7utKor+c7qe3gR/aiDXEO/tQmdBPMArs0FI5akiEKH
 M//WCYPyz0r/qDeJbXVWbWEsEqaiuJB+R7TwqXi3Sib+9NJec9jV4Mz0yT4Sowh2E8du
 Rn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YnWT8s8ink/KeJFRPdHxxy0KnE9QXS2EIJkcc7O9gtk=;
 b=c9ift7pVOOfqIZ7tUWMIJfJG1egjSTbzgspxmMgUnQNNXa9sZaJZ9bNThEjB/A+A/t
 JXwGEHZAO588FiSOYAQsAQRcflOiIK2Mf1yrvFVCyc8HWLP3O4lwxzwZynXceJsTGuLg
 9wDErZRD0adYub80wTVG2rrqY7idEQNiuPN/rU6OhvbDKEZ3vOQJpR8oZt2kKq4Dm1wK
 jJCAV1lVzbkywvE/8QjgYrHXhYMyRM/s6/C4urccyco8baT3C3ztKW2up7npLZvJjY/N
 ON2iHyclFowjmFB7XG0x8bSn1kQfH7SYWFsoDVcuYaSL4OttwozeOk03abexdLeVRjOD
 Bi5A==
X-Gm-Message-State: AOAM5330mPQpU2MtGR+toQjxsLml8skfWs6dP3OkcIyfM6n58YaUuZji
 FayIu77TsHd0GCJ0THGscnk=
X-Google-Smtp-Source: ABdhPJyFCpOYMkAVV78W52jBC29vXxFB27ZW9sqjVDAn5HIxYxToCi4u+31xoW8h3BEW8uRCIWxYTw==
X-Received: by 2002:a17:902:fe81:: with SMTP id
 x1mr4672432plm.239.1590563539414; 
 Wed, 27 May 2020 00:12:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 5/7] media: atomisp: Remove unnecessary NULL check in
 atomisp_param
Date: Wed, 27 May 2020 00:11:48 -0700
Message-Id: <20200527071150.3381228-6-natechancellor@gmail.com>
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

drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: warning:
address of 'config->info' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (!&config->info) {
                    ~ ~~~~~~~~^~~~

config cannot be NULL because it comes from an ioctl, which ensures that
the user is not giving us an invalid pointer through copy_from_user. If
config is not NULL, info cannot be NULL. Remove this check.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5be690f876c1..105c5aeb83ac 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4264,7 +4264,6 @@ int atomisp_set_parameters(struct video_device *vdev,
 int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		  struct atomisp_parm *config)
 {
-	struct atomisp_device *isp = asd->isp;
 	struct ia_css_pipe_config *vp_cfg =
 		    &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].
 		    pipe_configs[IA_CSS_PIPE_ID_VIDEO];
@@ -4275,10 +4274,6 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
-		if (!&config->info) {
-			dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
-			return -EINVAL;
-		}
 		atomisp_curr_user_grid_info(asd, &config->info);
 
 		/* We always return the resolution and stride even if there is
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
