Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 180F22449C8
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 14:33:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A57F25FA7;
	Fri, 14 Aug 2020 12:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zVSMZV9qJ6a; Fri, 14 Aug 2020 12:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 242D1226F5;
	Fri, 14 Aug 2020 12:33:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6F01BF299
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 12:33:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7527D88B79
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 12:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sLa1lDBis-JI for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 12:33:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5C3588B74
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 12:33:31 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 74so4481254pfx.13
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 05:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IMDtNR26hhEws5urGuPDuNDJnZY4acdKK7mNXzOEzD4=;
 b=mfmccwaVDf8eBSVHF2kqV/jf8XJvqpNdJXpniiM9SNN7/X3M3Uq4wG35Ykymlyorrp
 sNIjDj4gI2t7BgmMBn1dAujA4Vzbf9EPhZQJccpoJr3Mei1a461MYkXiwEp7JQJyUoQA
 SDhiFQ00Q+JQ6ooc5pzg5vyvIlZCDNPFueU/82a1faa079k4T+nVbBdO+qrmM4Xeh2/S
 3wBDa1/fr3Jcsl7v1QzQ1gtVFt4CCnlH9nZYAO/I0Pa8HpE/dO5me6jgS7vDayMTRhvh
 6Gkr+/oTvIE5DGEG29CVkWA8x6asq84pGXbiTrNIrRpF9/NyivEsY5GOH20ccLEEDjJH
 NgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IMDtNR26hhEws5urGuPDuNDJnZY4acdKK7mNXzOEzD4=;
 b=Y/CCWc7TdeGiDp3VZcnafi4ghGMOQpB7wabhIE1bzktLyiMDsbvcxeyg2oY0hTr/4q
 W15igfsV238pCKSvEZ0Xj19CrCFi74Y9Ix5+jhdYfziVI445qLy1K8VW5HOCwLKaTaJt
 sA6sv1eI13wA5r28kQa2VghIsgNYUSy1td8jhtwvZ07ENV0xWR/WFDF5pmNtwaS5vr8z
 u1d12Ws1DhbtmuWShRGLLBUO+8eXN6+H5GIg3HC+yqi02XzD8KLRdoy6mMcAiA2vaeLB
 VrEJrwXUpIlj+5nwifJFjx00INZh7s2DQb9L1/BF7cQEASC24Dqhpb5iKp6mDD0kDX+f
 rhGA==
X-Gm-Message-State: AOAM5336aNlx18/99y/yLbzGgE+lBBEnY2NFenAo+21JnhNhsHgRjgXZ
 3zwqS23b7vBMs7jwTZu0X55u3gbNhpj4Z3aQlGk=
X-Google-Smtp-Source: ABdhPJy3RUbKPHh6p35U+35BTGkwbCGSjqaHJwafgAFRFxpcyomhgV6dy29zbUSeASnLIPH8tMtY5A==
X-Received: by 2002:a63:ce56:: with SMTP id r22mr1624540pgi.141.1597408411457; 
 Fri, 14 Aug 2020 05:33:31 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id x8sm9808957pfp.101.2020.08.14.05.33.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Aug 2020 05:33:31 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v3] staging: greybus: audio: fix uninitialized value issue
Date: Fri, 14 Aug 2020 18:03:15 +0530
Message-Id: <bc4f29eb502ccf93cd2ffd98db0e319fa7d0f247.1597408126.git.vaibhav.sr@gmail.com>
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
v3: Use single exit path to avoid missing autosuspend sequence.
---
 drivers/staging/greybus/audio_topology.c | 29 ++++++++++++------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 2f9fdbdcd547..83b38ae8908c 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -456,6 +456,15 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	val = ucontrol->value.integer.value[0] & mask;
 	connect = !!val;

+	ret = gb_pm_runtime_get_sync(bundle);
+	if (ret)
+		return ret;
+
+	ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
+				      GB_AUDIO_INVALID_INDEX, &gbvalue);
+	if (ret)
+		goto exit;
+
 	/* update ucontrol */
 	if (gbvalue.value.integer_value[0] != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
@@ -466,25 +475,17 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		gbvalue.value.integer_value[0] =
 			cpu_to_le32(ucontrol->value.integer.value[0]);

-		ret = gb_pm_runtime_get_sync(bundle);
-		if (ret)
-			return ret;
-
 		ret = gb_audio_gb_set_control(module->mgmt_connection,
 					      data->ctl_id,
 					      GB_AUDIO_INVALID_INDEX, &gbvalue);
-
-		gb_pm_runtime_put_autosuspend(bundle);
-
-		if (ret) {
-			dev_err_ratelimited(codec_dev,
-					    "%d:Error in %s for %s\n", ret,
-					    __func__, kcontrol->id.name);
-			return ret;
-		}
 	}

-	return 0;
+exit:
+	gb_pm_runtime_put_autosuspend(bundle);
+	if (ret)
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
+				    __func__, kcontrol->id.name);
+	return ret;
 }

 #define SOC_DAPM_MIXER_GB(xname, kcount, data) \

base-commit: fc80c51fd4b23ec007e88d4c688f2cac1b8648e7
--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
