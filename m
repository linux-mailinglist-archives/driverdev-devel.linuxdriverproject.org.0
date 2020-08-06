Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BFA23DB93
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 18:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C45FD88378;
	Thu,  6 Aug 2020 16:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnNy+OEy6mxH; Thu,  6 Aug 2020 16:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5C7988382;
	Thu,  6 Aug 2020 16:22:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D993B1BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D02DC88357
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yo01asSG39ZQ for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 16:22:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D8B788296
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 16:22:17 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a79so9509925pfa.8
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 09:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nR6p+azSrG4y2Tef6cprsCVi44IERGjpbRkmYO5cRCo=;
 b=oQMfwnMBo7iIyU3XgTKjs+tm2fwISj9oPIXtpEOq4WbZyW2p7xX7jErO6D6GEq9RTy
 wQ+Sksn3rn0kdhQfVBPHDpQ+mM+C/fLwCMcW8Sh98adiZ2CFeDNwk0iLXc3tFeIzFmjU
 kjVnpRQRW0O/YafrCjyofizkbKWBbD7NcPpxyk+2FVMUH/MqbxGdtqY5XlMBqJbrGE5g
 kqp87WWAchGt1Vr2wNBeLBdWEspXIVxxLzDQNQqQtUqwvXudlGcIRBzChNeJaqU//GvA
 ee6Jeefgj9xc7wF3iyS+lLjG7EYrRyqDwCK4j7TTfmWqrNYythuMiKS/gWcf8pJRuTwm
 IP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nR6p+azSrG4y2Tef6cprsCVi44IERGjpbRkmYO5cRCo=;
 b=WcuduVcH5BBbzh45nRX9GC1SuWPnnajHgehhdOoTs7xbZPF00zXVqTugKFcNIui2S8
 DP4vuMEfe822pGcJbwi63bXbU3cQrTWwHoZ80Z06c+GnilYZAcySZ5BwYiC76/nqpqRD
 kqXNMOqUfHFoI9K/q39eJVfT6v9bv7dVPLvumiSLmbjxfGMQTHVEW6ckD+B5vdRop46h
 RlVgC0gpQ7Qv6grQfEPjgyI0aQdBsVvNer/7TpIwzVj4iU3t4ZljSRrym3fj8DuIjik3
 p/Izhn6Pg9w0bGgvAXeYA+/FcDVuYqXBGiBXsviYHK4pp9Lff02WvJwb0164QYaRHZyx
 w5QA==
X-Gm-Message-State: AOAM533/TiQPSsrBTbdO+8E9lRaFyAMeAasJdDMxcNeG+wed07sRPHNv
 WSwhH8SNAROCQKhQKFDt2Ww=
X-Google-Smtp-Source: ABdhPJzzoRuSmi+2TOb+YGFPFJ3J09xwFNwGYghnAUhqbdTk5IO8ZOcSsIr6O8leoTNYiO6KUU/fDw==
X-Received: by 2002:a65:6093:: with SMTP id t19mr7822568pgu.13.1596730936624; 
 Thu, 06 Aug 2020 09:22:16 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.googlemail.com with ESMTPSA id e22sm7393556pgi.62.2020.08.06.09.22.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 09:22:16 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v1] staging: greybus: audio: fix uninitialized value issue
Date: Thu,  6 Aug 2020 21:51:57 +0530
Message-Id: <a5d4bb540e606d7980d4127a82e6af9b436e0642.1596730667.git.vaibhav.sr@gmail.com>
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
 drivers/staging/greybus/audio_topology.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 2f9fdbdcd547..4b914d0edef2 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -456,6 +456,13 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	val = ucontrol->value.integer.value[0] & mask;
 	connect = !!val;
 
+	ret = gb_pm_runtime_get_sync(bundle);
+	if (ret)
+		return ret;
+
+	ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
+				      GB_AUDIO_INVALID_INDEX, &gbvalue);
+
 	/* update ucontrol */
 	if (gbvalue.value.integer_value[0] != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
@@ -466,16 +473,10 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
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
@@ -483,6 +484,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 			return ret;
 		}
 	}
+	gb_pm_runtime_put_autosuspend(bundle);
 
 	return 0;
 }

base-commit: 5bbd90550da8f7bdac769b5825597e67183c9411
prerequisite-patch-id: 2b8901339222ff7b94f10cf2341734c0fb82591c
prerequisite-patch-id: 38dad8879a2b73bce6e89481973c7c5b82bd7145
prerequisite-patch-id: 5f0042ccedae292395ec617789be6bf465463c1c
prerequisite-patch-id: 35d001c366dfa4b567e59abbb37bd691a18f5e14
prerequisite-patch-id: f13ce918ebc3796cd3c81716a7b2adf4519e7387
prerequisite-patch-id: 0fcc6d38699a9b72ca94280d7a4dc18f0823b6f7
prerequisite-patch-id: 8074e935bdc3dd7b114245b0648552d0ff6871c9
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
