Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 671952E8EB0
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Jan 2021 23:35:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9E0D8664B;
	Sun,  3 Jan 2021 22:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PA5WqsmkEidk; Sun,  3 Jan 2021 22:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D1AF86554;
	Sun,  3 Jan 2021 22:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A2031BF418
 for <devel@linuxdriverproject.org>; Sun,  3 Jan 2021 22:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 760B886523
 for <devel@linuxdriverproject.org>; Sun,  3 Jan 2021 22:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WG4T-+su1GMg for <devel@linuxdriverproject.org>;
 Sun,  3 Jan 2021 22:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C45338651C
 for <devel@driverdev.osuosl.org>; Sun,  3 Jan 2021 22:35:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C20A20773;
 Sun,  3 Jan 2021 22:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609713346;
 bh=Me9+yYviHjIqHiUfSr0k4Que8xDqOAdBoV6RaYMLcWE=;
 h=From:To:Cc:Subject:Date:From;
 b=YNWdRMaIm4Ofh6VhIgM3VmR3x8tkW1KwbN5VnJUm+e3IO1xls5OFE6FvKXCa7B0gm
 /gMI1NMdFF95Lx6Dadb5Fu2JRbADMF2F6zcGhbILdWJ4uM47yaOJFIZoIpQKrRt0G6
 pWDkimBgOqdKzRWL6oglNFxA3AR4t+5eMYRycpeanr5fySfQmaEWdid+qxD95BqC3M
 gTTurWEqJ9oGVm53kWjBVcixhEydLMj2o4Dr4tsjG9m94k7mt/JbxVXL/yo1cxyDsC
 8YBak95rcld9TFYWnLmapAHJRx6+mMaUJgGUOWzQdk2/4VIvSpnfQZA7addD+/KSNN
 fiZNGtQF1pmaw==
From: Arnd Bergmann <arnd@kernel.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] staging: greybus: fix stack size warning with UBSAN
Date: Sun,  3 Jan 2021 23:35:32 +0100
Message-Id: <20210103223541.2790855-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

clang warns about excessive stack usage in this driver when
UBSAN is enabled:

drivers/staging/greybus/audio_topology.c:977:12: error: stack frame size of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Werror,-Wframe-larger-than=]

Rework this code to no longer use compound literals for
initializing the structure in each case, but instead keep
the common bits in a preallocated constant array and copy
them as needed.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/greybus/audio_topology.c | 106 ++++++++++-------------
 1 file changed, 47 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 96b8b29fe899..c03873915c20 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -974,6 +974,44 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 	return ret;
 }
 
+static const struct snd_soc_dapm_widget gbaudio_widgets[] = {
+	[snd_soc_dapm_spk]	= SND_SOC_DAPM_SPK("spk", gbcodec_event_spk),
+	[snd_soc_dapm_hp]	= SND_SOC_DAPM_HP("hp", gbcodec_event_hp),
+	[snd_soc_dapm_mic]	= SND_SOC_DAPM_MIC("mic", gbcodec_event_int_mic),
+	[snd_soc_dapm_output]	= SND_SOC_DAPM_OUTPUT("output"),
+	[snd_soc_dapm_input]	= SND_SOC_DAPM_INPUT("input"),
+	[snd_soc_dapm_switch]	= SND_SOC_DAPM_SWITCH_E("switch", SND_SOC_NOPM,
+					0, 0, NULL,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_pga]	= SND_SOC_DAPM_PGA_E("pga", SND_SOC_NOPM,
+					0, 0, NULL, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_mixer]	= SND_SOC_DAPM_MIXER_E("mixer", SND_SOC_NOPM,
+					0, 0, NULL, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_mux]	= SND_SOC_DAPM_MUX_E("mux", SND_SOC_NOPM,
+					0, 0, NULL,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_aif_in]	= SND_SOC_DAPM_AIF_IN_E("aif_in", NULL, 0,
+					SND_SOC_NOPM, 0, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_aif_out]	= SND_SOC_DAPM_AIF_OUT_E("aif_out", NULL, 0,
+					SND_SOC_NOPM, 0, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+};
+
 static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 				      struct snd_soc_dapm_widget *dw,
 				      struct gb_audio_widget *w, int *w_size)
@@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 	strlcpy(temp_name, w->name, NAME_SIZE);
 	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
 
+	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
+		ret = -EINVAL;
+		goto error;
+	}
+	*dw = gbaudio_widgets[w->type];
+	dw->name = w->name;
+
 	switch (w->type) {
 	case snd_soc_dapm_spk:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_SPK(w->name, gbcodec_event_spk);
 		module->op_devices |= GBAUDIO_DEVICE_OUT_SPEAKER;
 		break;
 	case snd_soc_dapm_hp:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_HP(w->name, gbcodec_event_hp);
 		module->op_devices |= (GBAUDIO_DEVICE_OUT_WIRED_HEADSET
-					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE);
+					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE),
 		module->ip_devices |= GBAUDIO_DEVICE_IN_WIRED_HEADSET;
 		break;
 	case snd_soc_dapm_mic:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MIC(w->name, gbcodec_event_int_mic);
 		module->ip_devices |= GBAUDIO_DEVICE_IN_BUILTIN_MIC;
 		break;
-	case snd_soc_dapm_output:
-		*dw = (struct snd_soc_dapm_widget)SND_SOC_DAPM_OUTPUT(w->name);
-		break;
-	case snd_soc_dapm_input:
-		*dw = (struct snd_soc_dapm_widget)SND_SOC_DAPM_INPUT(w->name);
-		break;
-	case snd_soc_dapm_switch:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_SWITCH_E(w->name, SND_SOC_NOPM, 0, 0,
-					      widget_kctls,
-					      gbaudio_widget_event,
-					      SND_SOC_DAPM_PRE_PMU |
-					      SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_pga:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_PGA_E(w->name, SND_SOC_NOPM, 0, 0, NULL, 0,
-					   gbaudio_widget_event,
-					   SND_SOC_DAPM_PRE_PMU |
-					   SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_mixer:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MIXER_E(w->name, SND_SOC_NOPM, 0, 0, NULL,
-					     0, gbaudio_widget_event,
-					     SND_SOC_DAPM_PRE_PMU |
-					     SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_mux:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MUX_E(w->name, SND_SOC_NOPM, 0, 0,
-					   widget_kctls, gbaudio_widget_event,
-					   SND_SOC_DAPM_PRE_PMU |
-					   SND_SOC_DAPM_POST_PMD);
-		break;
 	case snd_soc_dapm_aif_in:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_AIF_IN_E(w->name, w->sname, 0,
-					      SND_SOC_NOPM,
-					      0, 0, gbaudio_widget_event,
-					      SND_SOC_DAPM_PRE_PMU |
-					      SND_SOC_DAPM_POST_PMD);
-		break;
 	case snd_soc_dapm_aif_out:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_AIF_OUT_E(w->name, w->sname, 0,
-					       SND_SOC_NOPM,
-					       0, 0, gbaudio_widget_event,
-					       SND_SOC_DAPM_PRE_PMU |
-					       SND_SOC_DAPM_POST_PMD);
-		break;
-	default:
-		ret = -EINVAL;
-		goto error;
+		dw->sname = w->sname;
 	}
 
 	dev_dbg(module->dev, "%s: widget of type %d created\n", dw->name,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
