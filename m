Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8BF1E39F3
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 09:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3A5586B1C;
	Wed, 27 May 2020 07:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBDymWjt7a6w; Wed, 27 May 2020 07:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 905A086B08;
	Wed, 27 May 2020 07:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0A7C1BF423
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABEF3811E3
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 07:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZhZdGNahRXs8 for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 07:12:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 066AD87898
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 07:12:18 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x11so8816344plv.9
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 00:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o9MqodWCLjikP8AmTG/rqhpi4jiJNC1PbUROm6v1d2Y=;
 b=cJB55FZzIe+wbZbOjO4+gkJQe15YMlmFQTxt+DZL0GpogJ10Wqsx3OHLygNdzhlD5t
 qE7H8Jj4R+LviV2dMs8V7qO5bBlsYuG68ANB7g0XTKFzNNeT0SXRE6zDFXFCxmznfA0v
 mN5KMi5gIwI48uC8b0Kcgk4k/59LITp4LV3NEwAqBrNzC7VqiBGxnIumjWCigThafMq3
 B6nQmRcMCtEBFe8j8GqQkP9nw6oMqmMpWAHy/oAYFQnqJTvKLst21e2EXIA7wlvDmudE
 U2eAYVMwlIYwiraTrd8FmigcrRtv/pRy5jFwCFoJ5eV++L8RCEmfTVmIq6A1BuASY/d+
 6ORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o9MqodWCLjikP8AmTG/rqhpi4jiJNC1PbUROm6v1d2Y=;
 b=Kxoc0Jc+qKW8XJFCHoKPlg+LJUzGs6VcQgNryWF0SXrdFzHZwjT3ueaoNbNlLeBcoq
 wMdqYc5SkDVwdzcsMaap0ov9AiwxbE8MUkS7/1mYG/Wy+mrQEqdB/7YhjAsQdcpUR/u2
 ez7cjVPVIzU2FiZccKVnhLLLKMS/R0+eahlUuNml4y3L5gIeLCuHVCLz96w4pePpW2UF
 t+UKaw0A3E0pVrHuu7hrMSH2gJcLJC0B3SR2zksjQt0QZF9+NjQs6nfrRsvD6CU+MoYG
 uFuJUty05pi/zbQ2K038vu418zWoUVYa570RWG/PuSXn/3kkTjHzI4QTIYkhLhgjq1c4
 AkAg==
X-Gm-Message-State: AOAM533LOKeEoUnHpmUjVyPL/yhA/n/kNwQroKhVjVCfkbJ5FoX7lYKC
 xRegwmqMHcvecrPz3Z6qkSc=
X-Google-Smtp-Source: ABdhPJxoHRdGCzwo58GDaHJ6G/BJrSAN4ab49i2zjyZzqDrlxy7DIG+b4ZCydP80auPUjGxfCvGnNg==
X-Received: by 2002:a17:902:8d8d:: with SMTP id
 v13mr4730527plo.67.1590563537552; 
 Wed, 27 May 2020 00:12:17 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:12:16 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 4/7] media: atomisp: Remove unnecessary NULL checks in
 ia_css_pipe_load_extension
Date: Wed, 27 May 2020 00:11:47 -0700
Message-Id: <20200527071150.3381228-5-natechancellor@gmail.com>
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

../drivers/staging/media/atomisp/pci/sh_css.c:8537:14: warning: address
of 'pipe->output_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->output_stage)
                ~~   ~~~~~~^~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/sh_css.c:8545:14: warning: address
of 'pipe->vf_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->vf_stage)
                ~~   ~~~~~~^~~~~~~~

output_stage and vf_stage are pointers in the middle of a struct, their
addresses cannot be NULL if pipe is not NULL and pipe is already checked
for NULL in this function. Simplify this if block.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index d77432254a2c..b8626cdb2436 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -8533,22 +8533,9 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 	}
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
-	{
-		if (&pipe->output_stage)
-			append_firmware(&pipe->output_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	} else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
-	{
-		if (&pipe->vf_stage)
-			append_firmware(&pipe->vf_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	}
+		append_firmware(&pipe->output_stage, firmware);
+	else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
+		append_firmware(&pipe->vf_stage, firmware);
 	err = acc_load_extension(firmware);
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
-- 
2.27.0.rc0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
