Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C7E276E8B
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 12:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3A6E2E0F9;
	Thu, 24 Sep 2020 10:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cyQwy3176Dz7; Thu, 24 Sep 2020 10:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA68F228B3;
	Thu, 24 Sep 2020 10:21:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58F371BF2C0
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 10:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4963A228BD
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 10:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZDuChqVkXwM for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 10:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 36DEE228B3
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 10:21:01 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o25so1650740pgm.0
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 03:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UnX/s8dZ825hFV3NINASU3thAKHqLnvKzLvNJDhsTxw=;
 b=nH3eZDk35EHcCWXWaKQIMkR+yP2F/bGhle8z+L+nODfmh49vfcG+D/AlVlDcNwF93h
 7Fa3DZyfzvLB2U5j7+Xjsa5/jBMi0ROHZCDnB4SoKEBoGbrPipDk+jFISQNbL4AGwCuy
 Om6S0Lwy7DhMMeb7B6X+UUluQOdKRvNTfcr1aiB/kVWRYwec26OpvHPbBBMM5M98Zemf
 5tpIzf6p8z2ouj7VU93SiovfoQvUiSpgIDFDiLSbDd949AzNO9OH44VfgxZHr7sImXgA
 z0OzZjfgKEWmVn8+zbHWU93BWyHGvCslNmiw74IzdzBFgrY9dYo415wMQ/BWvE62o7Gp
 5rQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UnX/s8dZ825hFV3NINASU3thAKHqLnvKzLvNJDhsTxw=;
 b=sN17/cxeFqwO1aRNzYCB6VJiQU5QCDeThXgxWR/5bLTGv2XWamk0QeZPzY9YBYNf9i
 G79qTfhczgHfGgKragp4b0IjAZM05MyViDMtK7p2ZBX4arTI6gpRMVC4KgZEqgr921Wl
 mSo6Dl4eM5UgW3PxMm7xMvT4Et5Di6aopUQ5qYbA8qNTBE7pxLj4sTa8s4b998mGcEgW
 nwZdjm17eo4bQbaLv8ofT8rNOhkUlDE4BF37K2GLpMYDronwolMg+EEhFzZy3TgaOI3z
 Tm/8B5QeRs+XGecATPQdyFDaOtn4CGvGmx7o9q1F/yS748iAAsj51+Mx4kaATR74ZEtZ
 LavA==
X-Gm-Message-State: AOAM532bScpGQUQmb/pC4cuX7BZCWmGABhFIxJDeCjnV1g6q3CDDZsF0
 VL/FrVwqEQ/Dgmn/hkolYhZl3DXb8D1/B3Ui
X-Google-Smtp-Source: ABdhPJxT9eCCvF0ZzSCxtrU4pmvcGxqZZRohK+ny2zGL4Vs2ipJgBjlDxeOkt33NdOvh5FEuwFwlPQ==
X-Received: by 2002:a63:2f07:: with SMTP id v7mr3297305pgv.67.1600942860497;
 Thu, 24 Sep 2020 03:21:00 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id fz23sm1922444pjb.36.2020.09.24.03.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Sep 2020 03:21:00 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Date: Thu, 24 Sep 2020 18:20:39 +0800
Message-Id: <20200924102039.43895-3-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924102039.43895-1-coiby.xu@gmail.com>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
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
Cc: "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Johan Hovold <johan@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use __8 to replace int and remove the unnecessary __bitwise type attribute.

Found by sparse,

$ make C=2 drivers/staging/greybus/
drivers/staging/greybus/audio_topology.c:185:24: warning: cast to restricted snd_ctl_elem_type_t
drivers/staging/greybus/audio_topology.c:679:14: warning: restricted snd_ctl_elem_iface_t degrades to integer
drivers/staging/greybus/audio_topology.c:906:14: warning: restricted snd_ctl_elem_iface_t degrades to integer

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 2 +-
 include/uapi/sound/asound.h              | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 56bf1a4f95ad..f6023ff390c2 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -182,7 +182,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 	/* update uinfo */
 	uinfo->access = data->access;
 	uinfo->count = data->vcount;
-	uinfo->type = (snd_ctl_elem_type_t)info->type;
+	uinfo->type = info->type;
 
 	switch (info->type) {
 	case GB_AUDIO_CTL_ELEM_TYPE_BOOLEAN:
diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
index 535a7229e1d9..8e71a95644ab 100644
--- a/include/uapi/sound/asound.h
+++ b/include/uapi/sound/asound.h
@@ -950,7 +950,7 @@ struct snd_ctl_card_info {
 	unsigned char components[128];	/* card components / fine identification, delimited with one space (AC97 etc..) */
 };
 
-typedef int __bitwise snd_ctl_elem_type_t;
+typedef __u8 snd_ctl_elem_type_t;
 #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
 #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
 #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
@@ -960,7 +960,7 @@ typedef int __bitwise snd_ctl_elem_type_t;
 #define	SNDRV_CTL_ELEM_TYPE_INTEGER64	((__force snd_ctl_elem_type_t) 6) /* 64-bit integer type */
 #define	SNDRV_CTL_ELEM_TYPE_LAST	SNDRV_CTL_ELEM_TYPE_INTEGER64
 
-typedef int __bitwise snd_ctl_elem_iface_t;
+typedef __u8 snd_ctl_elem_iface_t;
 #define	SNDRV_CTL_ELEM_IFACE_CARD	((__force snd_ctl_elem_iface_t) 0) /* global control */
 #define	SNDRV_CTL_ELEM_IFACE_HWDEP	((__force snd_ctl_elem_iface_t) 1) /* hardware dependent device */
 #define	SNDRV_CTL_ELEM_IFACE_MIXER	((__force snd_ctl_elem_iface_t) 2) /* virtual mixer device */
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
