Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 078DA281F15
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Oct 2020 01:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9330E86958;
	Fri,  2 Oct 2020 23:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cL2vqyMabNY8; Fri,  2 Oct 2020 23:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63FE5868A8;
	Fri,  2 Oct 2020 23:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBA811BF59E
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD45C203DF
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9gTSN3ow5P9Z for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 23:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C218620363
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 23:31:10 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z19so2423471pfn.8
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 16:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0QRLbEJdGZQDTrvNnzz/vd1A9XIJGgSIja/bYa4Qi8I=;
 b=I9eSjLtFYW0xyA8OksbjBEp/gD+qxmzF/I7xANj86pIOK+zHGY1MBdFNXFf1WlrLZ/
 PV1Ih0AFJY7TLavkLhgofFPqGkhe98vrydUVgTh9cZ0aEu/R9wjsuA4GhjLcNcrclFbU
 UliWPRHaQsu9UPHZuRwyzVspffzZZi3Mc8fOPWYpPPrY9gzy2HtzKWrMAEHT7veoRJcK
 7Jdf+ufWykmdYxw6hfrSDbRcX7fIi4S15Ktd465xZQQw9+b/4zWhwF5K9AtwrL38cQ8h
 z+5g7eoeQIlh1wogWRBZbA5w4d2lRewj0PK+TOUepfVoEjCi/z/s2FUB+VvbnvumIH6C
 YCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0QRLbEJdGZQDTrvNnzz/vd1A9XIJGgSIja/bYa4Qi8I=;
 b=qcOJweYnUzJmt/KdxFruP4V5iTqMb+wHVcMOiJNRSClC6aFkogwET1ZU+wLZeEag1l
 Adg+VtjkJhOw1b654x+Av20fCj+kc1njTJEys6h0tRpTh6/walT1Jklkgvsx431fuzM7
 OOejf4LM8hAL3xqQmhm1+W1dH+rLSf6hEm1gktg7I+RDAL03Xm0Tt85kMWd7/bDUmdXl
 ydUKK59H0SUxtPttpf8JvJw+sRTsKRHPGKp8NVnf2cBaW/NE8Hj8n9PpVYBQ4fP11Yg4
 NKNbOLPQWYywP43mYgiuKdKZHppVPu9wgD1Tfo2ND6wJSnHaHG/rFjwvmkWFWzaOtdV0
 4+Cg==
X-Gm-Message-State: AOAM532mjSBQvuqLz+GhBY6y81J77Xw8WNcn5QEarzTMOx6JbvJNlPXt
 pGsIWv5C0jFJkrarFzzijuQ6LmTa1QrYTijy
X-Google-Smtp-Source: ABdhPJw73LPDi16JTCtCO5zXNZyiqmqhLHjswVaUqoKuYBEoW58r2/ceig7gm7PEEc5WeSZGmal/AQ==
X-Received: by 2002:a62:1b86:0:b029:13e:d13d:a05b with SMTP id
 b128-20020a621b860000b029013ed13da05bmr5067399pfb.33.1601681470073; 
 Fri, 02 Oct 2020 16:31:10 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id f9sm2643706pju.8.2020.10.02.16.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 16:31:09 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 3/3] staging: greybus: use __force when assigning __u8
 value to snd_ctl_elem_type_t
Date: Sat,  3 Oct 2020 07:30:56 +0800
Message-Id: <20201002233057.74462-3-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002233057.74462-1-coiby.xu@gmail.com>
References: <20201002233057.74462-1-coiby.xu@gmail.com>
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
Cc: Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Alex Elder <elder@linaro.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

(struct gb_audio_ctl_elem_info*)->type has the type of __u8 so there is no
concern about the byte order. __force is safe to use.

Found by sparse,

$ make C=2 drivers/staging/greybus/
drivers/staging/greybus/audio_topology.c:185:24: warning: cast to restricted snd_ctl_elem_type_t

Suggested-by: Alex Elder <elder@linaro.org>
Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 2091031659de..662e3e8b4b63 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -182,7 +182,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 	/* update uinfo */
 	uinfo->access = data->access;
 	uinfo->count = data->vcount;
-	uinfo->type = (snd_ctl_elem_type_t)info->type;
+	uinfo->type = (__force snd_ctl_elem_type_t)info->type;
 
 	switch (info->type) {
 	case GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN:
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
