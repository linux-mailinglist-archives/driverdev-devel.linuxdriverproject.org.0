Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7621EB50E
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 578408608D;
	Tue,  2 Jun 2020 05:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfEzSjY57mZU; Tue,  2 Jun 2020 05:22:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0FAB85F7B;
	Tue,  2 Jun 2020 05:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B26A51BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF477875EB
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3NqsPxvOnd5 for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5225A87482
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:22:20 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id m1so4569950pgk.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WY3St8+SWf4wEhHBKrMkn8Xlor+pIsruZlmu3rGaWJM=;
 b=rReqGolWqaYRssGVPmbgXDPyNeTnW9d4LfMU0X1S/fS6VCVWJcVZnq3sZGxb3KVPFR
 Af+fHDcVv6SIxKMqjblRi0tA8HxbMEwJrvY2mPyq866BfRif+03bBv6muDFOeXESXZhf
 FLy7Y2q9psRzKWrUtXW6c5QSNqWrrZoBmptnS4gHRqn1ClCKLmkYgVCyUQAA8Y/XVV9q
 5MNZ2U3+uEJ5uIkctOaaAR9RIR2xqsPw40ebW9RYtOt4J5okgnAsdwCjvivKOpOcnCQy
 Gkmf6ClTr647LkRdPUM5Bgga63FfSno+KHkLRmH7V4W3f+gjlsd++8ST3hfiiyixsEl7
 CPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WY3St8+SWf4wEhHBKrMkn8Xlor+pIsruZlmu3rGaWJM=;
 b=rZ3i8J+tLhA0hwwqOMLL1bCAu7RU1BPLUXwy+g1Lna6LUnBsIYAK2hDW+spyZbixqp
 rqHDGGoIkHqNRE/q4sdOicQoLxiVb9v4nfdc0Rtusd31G4R6koIAcqGTnTT9YLluS7RC
 u02nUXMyosVxO37plWostf4iyz02MufKWEpR2jYuAl++I6Xtz7K5EM+AuRDC1r65yOvU
 1wZMIQFKPuyXmsBYf+iC9lTJ/C0MY4WgYBJR+7jxQIS0tS1FxhY45EiqBvStTl1HmQm7
 5YrqdyrpXgEYCYX8xEpebXfKCy95kv0/Mepshml10nwEWstxU5pWhg4pYOnHJsPxjztn
 RrOA==
X-Gm-Message-State: AOAM530RbzGZY+fxSoIiB6pgYtyW4PKylJkaHTYe0bP5Qb9GhYpXCUPk
 XRB4ytQQ+o7WpRbpQLEj49Y=
X-Google-Smtp-Source: ABdhPJw/uZAxw/xGEynFE19YqUSgqA6mgBmdHzhCB//p+E/r9QBgWC0X99sSYkRQWUWKWqRRBHGJzQ==
X-Received: by 2002:a63:3347:: with SMTP id z68mr23499297pgz.61.1591075339674; 
 Mon, 01 Jun 2020 22:22:19 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id f18sm1004764pga.75.2020.06.01.22.22.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jun 2020 22:22:19 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [RESEND PATCH v1 4/6] staging: greybus: audio: Resolve compilation
 error in topology parser
Date: Tue,  2 Jun 2020 10:51:13 +0530
Message-Id: <6131fec4cf9e18dbf70fa7f992de9d588299ee18.1591040859.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591040859.git.vaibhav.sr@gmail.com>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix compilation errors for GB Audio topology parser code with recent
kernel versions.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 130 +++++++++++------------
 1 file changed, 61 insertions(+), 69 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 4ac30accf226..7d5e87341a5c 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -5,8 +5,8 @@
  * Copyright 2015-2016 Linaro Ltd.
  */
 
+#include <linux/greybus.h>
 #include "audio_codec.h"
-#include "greybus_protocols.h"
 
 #define GBAUDIO_INVALID_ID	0xFF
 
@@ -165,15 +165,15 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 	struct gbaudio_ctl_pvt *data;
 	struct gb_audio_ctl_elem_info *info;
 	struct gbaudio_module_info *module;
-	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
-	struct gbaudio_codec_info *gbcodec = snd_soc_codec_get_drvdata(codec);
+	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
+	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(comp->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	data = (struct gbaudio_ctl_pvt *)kcontrol->private_value;
 	info = (struct gb_audio_ctl_elem_info *)data->info;
 
 	if (!info) {
-		dev_err(codec->dev, "NULL info for %s\n", uinfo->id.name);
+		dev_err(comp->dev, "NULL info for %s\n", uinfo->id.name);
 		return -EINVAL;
 	}
 
@@ -193,7 +193,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 		uinfo->value.enumerated.items = max;
 		if (uinfo->value.enumerated.item > max - 1)
 			uinfo->value.enumerated.item = max - 1;
-		module = find_gb_module(gbcodec, kcontrol->id.name);
+		module = find_gb_module(gb, kcontrol->id.name);
 		if (!module)
 			return -EINVAL;
 		name = gbaudio_map_controlid(module, data->ctl_id,
@@ -201,7 +201,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 		strlcpy(uinfo->value.enumerated.name, name, NAME_SIZE);
 		break;
 	default:
-		dev_err(codec->dev, "Invalid type: %d for %s:kcontrol\n",
+		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
 			info->type, kcontrol->id.name);
 		break;
 	}
@@ -216,11 +216,11 @@ static int gbcodec_mixer_ctl_get(struct snd_kcontrol *kcontrol,
 	struct gbaudio_ctl_pvt *data;
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
+	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);
 	struct gb_bundle *bundle;
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(comp->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	module = find_gb_module(gb, kcontrol->id.name);
 	if (!module)
 		return -EINVAL;
@@ -239,7 +239,7 @@ static int gbcodec_mixer_ctl_get(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(comp->dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -262,7 +262,7 @@ static int gbcodec_mixer_ctl_get(struct snd_kcontrol *kcontrol,
 				le32_to_cpu(gbvalue.value.enumerated_item[1]);
 		break;
 	default:
-		dev_err(codec->dev, "Invalid type: %d for %s:kcontrol\n",
+		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
 			info->type, kcontrol->id.name);
 		ret = -EINVAL;
 		break;
@@ -278,11 +278,11 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
 	struct gbaudio_ctl_pvt *data;
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
+	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);
 	struct gb_bundle *bundle;
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(comp->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	module = find_gb_module(gb, kcontrol->id.name);
 	if (!module)
 		return -EINVAL;
@@ -309,7 +309,7 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
 				cpu_to_le32(ucontrol->value.enumerated.item[1]);
 		break;
 	default:
-		dev_err(codec->dev, "Invalid type: %d for %s:kcontrol\n",
+		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
 			info->type, kcontrol->id.name);
 		ret = -EINVAL;
 		break;
@@ -328,7 +328,7 @@ static int gbcodec_mixer_ctl_put(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(comp->dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 	}
 
@@ -352,11 +352,7 @@ static int gbcodec_mixer_dapm_ctl_info(struct snd_kcontrol *kcontrol,
 	int platform_max, platform_min;
 	struct gbaudio_ctl_pvt *data;
 	struct gb_audio_ctl_elem_info *info;
-	struct snd_soc_dapm_widget_list *wlist = snd_kcontrol_chip(kcontrol);
-	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
-	struct snd_soc_codec *codec = widget->codec;
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	data = (struct gbaudio_ctl_pvt *)kcontrol->private_value;
 	info = (struct gb_audio_ctl_elem_info *)data->info;
 
@@ -387,11 +383,11 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 	struct gbaudio_module_info *module;
 	struct snd_soc_dapm_widget_list *wlist = snd_kcontrol_chip(kcontrol);
 	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
-	struct snd_soc_codec *codec = widget->codec;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = widget->dapm->dev;
+	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
 	struct gb_bundle *bundle;
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(codec_dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	module = find_gb_module(gb, kcontrol->id.name);
 	if (!module)
 		return -EINVAL;
@@ -415,7 +411,7 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -429,7 +425,7 @@ static int gbcodec_mixer_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 				      struct snd_ctl_elem_value *ucontrol)
 {
-	int ret, wi, max, connect;
+	int ret, wi, max;
 	unsigned int mask, val;
 	struct gb_audio_ctl_elem_info *info;
 	struct gbaudio_ctl_pvt *data;
@@ -437,11 +433,12 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	struct gbaudio_module_info *module;
 	struct snd_soc_dapm_widget_list *wlist = snd_kcontrol_chip(kcontrol);
 	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
-	struct snd_soc_codec *codec = widget->codec;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = widget->dapm->dev;
+	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
+	struct snd_soc_dapm_update *update = NULL;
 	struct gb_bundle *bundle;
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(codec_dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	module = find_gb_module(gb, kcontrol->id.name);
 	if (!module)
 		return -EINVAL;
@@ -458,17 +455,13 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	max = le32_to_cpu(info->value.integer.max);
 	mask = (1 << fls(max)) - 1;
 	val = ucontrol->value.integer.value[0] & mask;
-	connect = !!val;
 
 	/* update ucontrol */
 	if (gbvalue.value.integer_value[0] != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
-
-			widget->value = val;
-			widget->dapm->update = NULL;
-			snd_soc_dapm_mixer_update_power(widget, kcontrol,
-							connect);
+			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
+							val, update);
 		}
 		gbvalue.value.integer_value[0] =
 			cpu_to_le32(ucontrol->value.integer.value[0]);
@@ -484,7 +477,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		gb_pm_runtime_put_autosuspend(bundle);
 
 		if (ret) {
-			dev_err_ratelimited(codec->dev,
+			dev_err_ratelimited(codec_dev,
 					    "%d:Error in %s for %s\n", ret,
 					    __func__, kcontrol->id.name);
 			return ret;
@@ -553,11 +546,11 @@ static int gbcodec_enum_ctl_get(struct snd_kcontrol *kcontrol,
 				struct snd_ctl_elem_value *ucontrol)
 {
 	int ret, ctl_id;
-	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
+	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
+	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);
 	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
 	struct gb_bundle *bundle;
 
 	module = find_gb_module(gb, kcontrol->id.name);
@@ -580,7 +573,7 @@ static int gbcodec_enum_ctl_get(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(comp->dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -598,11 +591,11 @@ static int gbcodec_enum_ctl_put(struct snd_kcontrol *kcontrol,
 				struct snd_ctl_elem_value *ucontrol)
 {
 	int ret, ctl_id;
-	struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
+	struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
+	struct gbaudio_codec_info *gb = snd_soc_component_get_drvdata(comp);
 	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
 	struct gb_bundle *bundle;
 
 	module = find_gb_module(gb, kcontrol->id.name);
@@ -613,13 +606,13 @@ static int gbcodec_enum_ctl_put(struct snd_kcontrol *kcontrol,
 	if (ctl_id < 0)
 		return -EINVAL;
 
-	if (ucontrol->value.enumerated.item[0] > e->max - 1)
+	if (ucontrol->value.enumerated.item[0] > e->items - 1)
 		return -EINVAL;
 	gbvalue.value.enumerated_item[0] =
 		cpu_to_le32(ucontrol->value.enumerated.item[0]);
 
 	if (e->shift_l != e->shift_r) {
-		if (ucontrol->value.enumerated.item[1] > e->max - 1)
+		if (ucontrol->value.enumerated.item[1] > e->items - 1)
 			return -EINVAL;
 		gbvalue.value.enumerated_item[1] =
 			cpu_to_le32(ucontrol->value.enumerated.item[1]);
@@ -637,8 +630,8 @@ static int gbcodec_enum_ctl_put(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
-				    __func__, kcontrol->id.name);
+		dev_err_ratelimited(comp->dev, "%d:Error in %s for %s\n",
+				    ret, __func__, kcontrol->id.name);
 	}
 
 	return ret;
@@ -659,13 +652,13 @@ static int gbaudio_tplg_create_enum_kctl(struct gbaudio_module_info *gb,
 	gb_enum = &ctl->info.value.enumerated;
 
 	/* since count=1, and reg is dummy */
-	gbe->max = le32_to_cpu(gb_enum->items);
+	gbe->items = le32_to_cpu(gb_enum->items);
 	gbe->texts = gb_generate_enum_strings(gb, gb_enum);
 
 	/* debug enum info */
-	dev_dbg(gb->dev, "Max:%d, name_length:%d\n", gbe->max,
+	dev_dbg(gb->dev, "Max:%d, name_length:%d\n", gbe->items,
 		le16_to_cpu(gb_enum->names_length));
-	for (i = 0; i < gbe->max; i++)
+	for (i = 0; i < gbe->items; i++)
 		dev_dbg(gb->dev, "src[%d]: %s\n", i, gbe->texts[i]);
 
 	*kctl = (struct snd_kcontrol_new)
@@ -720,8 +713,8 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
 	struct gbaudio_module_info *module;
 	struct gb_audio_ctl_elem_value gbvalue;
-	struct snd_soc_codec *codec = widget->codec;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = widget->dapm->dev;
+	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
 	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 	struct gb_bundle *bundle;
 
@@ -745,7 +738,7 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -768,12 +761,13 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct snd_soc_codec *codec = widget->codec;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = widget->dapm->dev;
+	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
 	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 	struct gb_bundle *bundle;
+	struct snd_soc_dapm_update *update = NULL;
 
-	if (ucontrol->value.enumerated.item[0] > e->max - 1)
+	if (ucontrol->value.enumerated.item[0] > e->items - 1)
 		return -EINVAL;
 
 	module = find_gb_module(gb, kcontrol->id.name);
@@ -797,7 +791,7 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -814,7 +808,7 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	}
 
 	if (e->shift_l != e->shift_r) {
-		if (ucontrol->value.enumerated.item[1] > e->max - 1)
+		if (ucontrol->value.enumerated.item[1] > e->items - 1)
 			return -EINVAL;
 		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
 		mask |= e->mask << e->shift_r;
@@ -837,16 +831,14 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		gb_pm_runtime_put_autosuspend(bundle);
 
 		if (ret) {
-			dev_err_ratelimited(codec->dev,
+			dev_err_ratelimited(codec_dev,
 					    "%d:Error in %s for %s\n", ret,
 					    __func__, kcontrol->id.name);
 		}
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
-
-			widget->value = val;
-			widget->dapm->update = NULL;
-			snd_soc_dapm_mux_update_power(widget, kcontrol, mux, e);
+			snd_soc_dapm_mux_update_power(widget->dapm, kcontrol,
+						      val, e, update);
 		}
 	}
 
@@ -868,13 +860,13 @@ static int gbaudio_tplg_create_enum_ctl(struct gbaudio_module_info *gb,
 	gb_enum = &ctl->info.value.enumerated;
 
 	/* since count=1, and reg is dummy */
-	gbe->max = le32_to_cpu(gb_enum->items);
+	gbe->items = le32_to_cpu(gb_enum->items);
 	gbe->texts = gb_generate_enum_strings(gb, gb_enum);
 
 	/* debug enum info */
-	dev_dbg(gb->dev, "Max:%d, name_length:%d\n", gbe->max,
+	dev_dbg(gb->dev, "Max:%d, name_length:%d\n", gbe->items,
 		le16_to_cpu(gb_enum->names_length));
-	for (i = 0; i < gbe->max; i++)
+	for (i = 0; i < gbe->items; i++)
 		dev_dbg(gb->dev, "src[%d]: %s\n", i, gbe->texts[i]);
 
 	*kctl = (struct snd_kcontrol_new)
@@ -935,12 +927,12 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 {
 	int wid;
 	int ret;
-	struct snd_soc_codec *codec = w->codec;
-	struct gbaudio_codec_info *gbcodec = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = w->dapm->dev;
+	struct gbaudio_codec_info *gbcodec = dev_get_drvdata(codec_dev);
 	struct gbaudio_module_info *module;
 	struct gb_bundle *bundle;
 
-	dev_dbg(codec->dev, "%s %s %d\n", __func__, w->name, event);
+	dev_dbg(codec_dev, "%s %s %d\n", __func__, w->name, event);
 
 	/* Find relevant module */
 	module = find_gb_module(gbcodec, w->name);
@@ -950,7 +942,7 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 	/* map name to widget id */
 	wid = gbaudio_map_widgetname(module, w->name);
 	if (wid < 0) {
-		dev_err(codec->dev, "Invalid widget name:%s\n", w->name);
+		dev_err(codec_dev, "Invalid widget name:%s\n", w->name);
 		return -EINVAL;
 	}
 
@@ -973,7 +965,7 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 		break;
 	}
 	if (ret)
-		dev_err_ratelimited(codec->dev,
+		dev_err_ratelimited(codec_dev,
 				    "%d: widget, event:%d failed:%d\n", wid,
 				    event, ret);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
