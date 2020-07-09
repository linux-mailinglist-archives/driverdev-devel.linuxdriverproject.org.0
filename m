Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B05219DC7
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B328F87E33;
	Thu,  9 Jul 2020 10:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfpP35LBPnpM; Thu,  9 Jul 2020 10:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8326085F0E;
	Thu,  9 Jul 2020 10:28:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E115F1BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCC2988A5F
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IlNtrt+IraAV for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:28:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E989988C4C
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:28:34 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u185so846723pfu.1
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 03:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GE6EabJkdfi5MecFWD1y4WWbwgp6Pb6ICJCDMYOyPdI=;
 b=YJQOHjqhzWy3Bqw4FCoUTeBdFRj8dGdT26NMtcdhZmOO78e1SzIEz3f8bbehdXgCiL
 QSop/wWeM375llO+5HT3WaOrvvWlopkqdylB1FJwS0ZoX1M47/uv6VlSyjKg2QNxZwCm
 9SxhgprMFzXtZMyxDJc6FgUuO3uWnLIzaMLy3x5EO/J2yFbX5kqO3PvQ5XcUMYXm9Yt7
 X3PCGeyTo4oF1Skr5v+KHfSn0CnjJoCG5LI+WKCI7G+afe0kEEzgnkVembpVTUBZAcZ1
 lHlY6Ufi8corpwQqQkhzjrubIe8BWenDcvVgVvyckTRCS2Xsk1CCEabfVRnfsknm3bKq
 SpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GE6EabJkdfi5MecFWD1y4WWbwgp6Pb6ICJCDMYOyPdI=;
 b=DO44bwes4Cf7uv7mwBZ0s1pVvjkx5VCZuSwnYWIJNX5kjUwTJJEDW5IexC5omny7DE
 ZxPQx60S+8pcaUuP6yu5rlAm+NUkwrLLdDKFStAEDbEqg6iS4GI7JusM05X2IHTWwL1r
 NCsD029ig7mWRLeEUF82tf2HAKoS5jPkxS5TLOJ7VvFQShc7Jfwp8/Ea6t9beyTMmOR8
 IUkem38rRLCFSQ45lleptvZKnr97d476JEc3jYkpw12b7Trm01gs+skqmuXMn8OyItKM
 78u3VH/35ZEX2dGTyyzFF0DqVg4rrcJtU2VkcM6YlIuS5NpbdL96tQHsnF+yBc36FdaA
 1PcA==
X-Gm-Message-State: AOAM533Giyx+kMyMRzzkX1/lgHGkr0P2sbNEGjU539FskDZ58k2MfbfF
 7Hu075qfS8wOgqmtx3UynUEJxLG4MbX3aw==
X-Google-Smtp-Source: ABdhPJy1feaXOjJ2LM06j2vDOnooBTXz9EhzkWFBL16lFF5z45AgGc9Ujpss3f/XXJats39EVIZyUA==
X-Received: by 2002:a63:8c5d:: with SMTP id q29mr52019061pgn.249.1594290514467; 
 Thu, 09 Jul 2020 03:28:34 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id y8sm2125163pju.49.2020.07.09.03.28.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 03:28:34 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v4 7/7] drivers: staging: audio: Fix the missing header file
 for helper file
Date: Thu,  9 Jul 2020 15:57:23 +0530
Message-Id: <6341df9b0b5985047af0bbbc8e136481ac515b25.1594290158.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1594290158.git.vaibhav.sr@gmail.com>
References: <cover.1594290158.git.vaibhav.sr@gmail.com>
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the warning reported for missing prototypes due to
missing header file. Also, it includes changes to remove
unused_but_set_variables.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
 drivers/staging/greybus/audio_helper.c   | 1 +
 drivers/staging/greybus/audio_topology.c | 8 ++++----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
index faaa39708118..8b100a71f02e 100644
--- a/drivers/staging/greybus/audio_helper.c
+++ b/drivers/staging/greybus/audio_helper.c
@@ -7,6 +7,7 @@
 #include <sound/core.h>
 #include <sound/soc.h>
 #include <sound/soc-dapm.h>
+#include "audio_helper.h"
 
 #define gbaudio_dapm_for_each_direction(dir) \
 	for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index ad88d3127a60..2f9fdbdcd547 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -28,14 +28,16 @@ static struct gbaudio_module_info *find_gb_module(
 					struct gbaudio_codec_info *codec,
 					char const *name)
 {
-	int dev_id, ret;
+	int dev_id;
 	char begin[NAME_SIZE];
 	struct gbaudio_module_info *module;
 
 	if (!name)
 		return NULL;
 
-	ret = sscanf(name, "%s %d", begin, &dev_id);
+	if (sscanf(name, "%s %d", begin, &dev_id) != 2)
+		return NULL;
+
 	dev_dbg(codec->dev, "%s:Find module#%d\n", __func__, dev_id);
 
 	mutex_lock(&codec->lock);
@@ -377,7 +379,6 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 				      struct snd_ctl_elem_value *ucontrol)
 {
 	int ret;
-	struct gb_audio_ctl_elem_info *info;
 	struct gbaudio_ctl_pvt *data;
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
@@ -393,7 +394,6 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 		return -EINVAL;
 
 	data = (struct gbaudio_ctl_pvt *)kcontrol->private_value;
-	info = (struct gb_audio_ctl_elem_info *)data->info;
 	bundle = to_gb_bundle(module->dev);
 
 	if (data->vcount == 2)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
