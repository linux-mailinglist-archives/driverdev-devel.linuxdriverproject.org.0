Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A25272445E2
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 09:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEE2486FE2;
	Fri, 14 Aug 2020 07:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 30RVYlPhJUai; Fri, 14 Aug 2020 07:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD8E886FAE;
	Fri, 14 Aug 2020 07:37:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66FE91BF33F
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 07:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57EC886FAE
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 07:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0F8j1DU4oBL for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 07:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE80A86FA2
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 07:37:37 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p37so4140490pgl.3
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 00:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5qQEvmAR62GYDUGcjtyyYwaSTs1R61v49x6rNj3a0A0=;
 b=bcFFmKUSlDpsEhOY4HztU6IuqIVSzxrXNgQXU5P9AJhsl9xyZjEhPbBKHwuBM7Q6C7
 akmedoqKlKV9XzzQ9CGQNcK/DmrneFbqVnuz9Hf6lH1WpUcwcntKPVuc3iJ5MgOqnlDr
 urCZULAr++iAxadve83tWeD7h6jQ83VZJkEmRSzq0NfVL4lyOiU8Qr/puO0LUxGMwq3H
 nN7AROI++0GTVuPzO5E5fcZ3meHLsK4bk4i7Q8tGc/9ht/Q9PfyYWphlVyxePuBfFmDz
 0MjPFpmN2vI1T0urWqqKlJuUzWHrrPRZws262AvMUu+RIVbNZmusVWr3O5hcqU6tT7Pc
 +sLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5qQEvmAR62GYDUGcjtyyYwaSTs1R61v49x6rNj3a0A0=;
 b=OKY4uq0Z0dxftc4KIxg22VuvaDcrIDbdPhwkNBvCnzGv1ni+mL1Y1E+MkXbwdzzG7G
 g1kyYn8CWXC3p5xlaxBsCIpKWvXUTDI7izUjqIEBt5m4NfURFBvC9bZ5T215y16efnHA
 pBjTQmXj21BGRfRYzUEk+spiiEbgs7j/l72w/EGkm8RF0yT7KMUMadxiWOcH1uR1S28d
 AH76zKVHDxWY3xq0s5ekOml2AOAllA7ja+nqsr+mUxpdTRDOzqw6Tk3/eGG5b5ulH4Eb
 5FA+ozgag0Qjp397+OZVZBu0zu3ErXICQBttkM1r6DGN4LU6vJ/P4vDNEkU9tzlqh7tW
 WWfA==
X-Gm-Message-State: AOAM5302Pt32JTNGzEVHZelmnd92FIfXFNoheMKvZJnZ5aMBAe6PoOow
 Nz5bLCkFrNnn8RGHed+aL50=
X-Google-Smtp-Source: ABdhPJwuJtg7q6zWnIWfRPGEDNZWdUlEd2nFd7+Lyqi7y7Ey08MdAi3nWt7PpbhOTaFlsZciLqao2w==
X-Received: by 2002:a63:5623:: with SMTP id k35mr1013550pgb.325.1597390657484; 
 Fri, 14 Aug 2020 00:37:37 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id s64sm8473629pfs.111.2020.08.14.00.37.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Aug 2020 00:37:36 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v2] staging: greybus: audio: fix uninitialized value issue
Date: Fri, 14 Aug 2020 13:07:20 +0530
Message-Id: <b6a5c28b6812232c90426f77cbe60600f9a91019.1597389343.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Colin Ian King <colin.king@canonical.com>, linux-kernel@vger.kernel.org,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current implementation for gbcodec_mixer_dapm_ctl_put() uses
uninitialized gbvalue for comparison with updated value. This was found
using static analysis with coverity.

Uninitialized scalar variable (UNINIT)
11. uninit_use: Using uninitialized value
gbvalue.value.integer_value[0].
460        if (gbvalue.value.integer_value[0] != val) {

This patch fixes the issue with fetching the gbvalue before using it for
    comparision.

Fixes: 6339d2322c47 ("greybus: audio: Add topology parser for GB codec")
Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
Changelog:
v2: Fix the missing check for return value after get_control.
---
 drivers/staging/greybus/audio_topology.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 2f9fdbdcd547..9f98691b2f5f 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -456,6 +456,18 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	val = ucontrol->value.integer.value[0] & mask;
 	connect = !!val;
 
+	ret = gb_pm_runtime_get_sync(bundle);
+	if (ret)
+		return ret;
+
+	ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
+				      GB_AUDIO_INVALID_INDEX, &gbvalue);
+	if (ret) {
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
+				    __func__, kcontrol->id.name);
+		return ret;
+	}
+
 	/* update ucontrol */
 	if (gbvalue.value.integer_value[0] != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
@@ -466,16 +478,10 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		gbvalue.value.integer_value[0] =
 			cpu_to_le32(ucontrol->value.integer.value[0]);
 
-		ret = gb_pm_runtime_get_sync(bundle);
-		if (ret)
-			return ret;
-
 		ret = gb_audio_gb_set_control(module->mgmt_connection,
 					      data->ctl_id,
 					      GB_AUDIO_INVALID_INDEX, &gbvalue);
 
-		gb_pm_runtime_put_autosuspend(bundle);
-
 		if (ret) {
 			dev_err_ratelimited(codec_dev,
 					    "%d:Error in %s for %s\n", ret,
@@ -483,6 +489,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 			return ret;
 		}
 	}
+	gb_pm_runtime_put_autosuspend(bundle);
 
 	return 0;
 }

base-commit: fc80c51fd4b23ec007e88d4c688f2cac1b8648e7
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
