Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5E2219DC0
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0A1688C0B;
	Thu,  9 Jul 2020 10:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gXkbwpmCscNJ; Thu,  9 Jul 2020 10:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 773DB88C0E;
	Thu,  9 Jul 2020 10:28:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3262A1BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B8B120025
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHxfpCu-zkUr for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:28:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A38F26B51
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:28:11 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id ch3so912445pjb.5
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 03:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7sIbETW3uJnbzMUlyea9DImVmPFKh7zywB3W58k34fc=;
 b=e+hQgyGWzv34cxToa3rNYDn1MJaWIkJvIZS6kKpZRu7K2+GCZW3Y3l9wRLDQ9mJRyO
 3n2AA0TTJX17zt+Q7hDSMr7t+do6N5D1cDWO1aqz+gWFRGo+b02fFcDuIxIOGr38bTgd
 mArjpN6TZbwHuweba+qdIytGWqP/+hvcKDkIVXi7hXPKm9SGtBVyoe6aDIgU55pcZKCb
 SaapVqS34QsLUzGzmAZOpInXskeaBxxEOjGOscw33aRq4oFDn/HDtcHUkdlAzK2jKb7m
 Qld+9MlufiFn0GTdVkNMAPUppNOiy8kmBCj0+fibsbgPYQDbb8It+JjqoRZFs054kYzi
 kB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7sIbETW3uJnbzMUlyea9DImVmPFKh7zywB3W58k34fc=;
 b=Ct0ezt40oO0Eq74oAypATmXg8eOnPZt7PjIQle2bHMTyfKLGGz7/93iwKc3NtcwvY2
 6O5MlH05GJ6jee3KcWlznZ+K1faXCY0FAydj/QzhH3danGGdcOLrXl+14kQZu9kBILjL
 hZTRKdqegMjgrHR6So9xFkTG/ru/w5xK4d+qVwSGbLS+FFuWsuzN/cxjOgBgWikQIwja
 7L2ZE9hY8H6+PAPTzfxDnBSWBU9617Iij7IIBywe5yNbfNHCfMKvzCN6HZCkBW30KmWp
 7cA2WoFN/GgvPuDtE9eS2XxtdEatEoVbfvY56NLNTGaMfZF6KAqKn3dtOY4fF1yrZz4/
 WS9w==
X-Gm-Message-State: AOAM532TjFEFnTl6tVMk2xC8Yciat5Pmy/w/eYyMB+BzeF7rOV9z6EAO
 b/J4AlHYW65VaHwHYf+ulOo=
X-Google-Smtp-Source: ABdhPJzhG+Pl9Q9GCF92OOHthDcS3VhET6Qilx0hb0VRCkoWmuuYaF8JtUZnAkHw1YF+04gM9teytg==
X-Received: by 2002:a17:90a:324c:: with SMTP id
 k70mr14963645pjb.18.1594290490957; 
 Thu, 09 Jul 2020 03:28:10 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id y8sm2125163pju.49.2020.07.09.03.28.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 03:28:10 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v4 4/7] staging: greybus: audio: Resolve compilation error in
 topology parser
Date: Thu,  9 Jul 2020 15:57:20 +0530
Message-Id: <2542330352ae1d01469a616ea45edb461615e072.1594290158.git.vaibhav.sr@gmail.com>
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
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix compilation errors for GB Audio topology parser code with recent
kernel versions.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/greybus/audio_topology.c | 123 +++++++++++------------
 1 file changed, 57 insertions(+), 66 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 4ac30accf226..ad88d3127a60 100644
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
+	struct gbaudio_codec_info *gbcodec = snd_soc_component_get_drvdata(comp);
 
-	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
+	dev_dbg(comp->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
 	data = (struct gbaudio_ctl_pvt *)kcontrol->private_value;
 	info = (struct gb_audio_ctl_elem_info *)data->info;
 
 	if (!info) {
-		dev_err(codec->dev, "NULL info for %s\n", uinfo->id.name);
+		dev_err(comp->dev, "NULL info for %s\n", uinfo->id.name);
 		return -EINVAL;
 	}
 
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
@@ -437,11 +433,11 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
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
@@ -464,11 +460,8 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	if (gbvalue.value.integer_value[0] != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
-
-			widget->value = val;
-			widget->dapm->update = NULL;
-			snd_soc_dapm_mixer_update_power(widget, kcontrol,
-							connect);
+			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
+							connect, NULL);
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
@@ -768,12 +761,12 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
 	struct gb_audio_ctl_elem_value gbvalue;
 	struct gbaudio_module_info *module;
-	struct snd_soc_codec *codec = widget->codec;
-	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
+	struct device *codec_dev = widget->dapm->dev;
+	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
 	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
 	struct gb_bundle *bundle;
 
-	if (ucontrol->value.enumerated.item[0] > e->max - 1)
+	if (ucontrol->value.enumerated.item[0] > e->items - 1)
 		return -EINVAL;
 
 	module = find_gb_module(gb, kcontrol->id.name);
@@ -797,7 +790,7 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	gb_pm_runtime_put_autosuspend(bundle);
 
 	if (ret) {
-		dev_err_ratelimited(codec->dev, "%d:Error in %s for %s\n", ret,
+		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
 				    __func__, kcontrol->id.name);
 		return ret;
 	}
@@ -814,7 +807,7 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	}
 
 	if (e->shift_l != e->shift_r) {
-		if (ucontrol->value.enumerated.item[1] > e->max - 1)
+		if (ucontrol->value.enumerated.item[1] > e->items - 1)
 			return -EINVAL;
 		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
 		mask |= e->mask << e->shift_r;
@@ -837,16 +830,14 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
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
+						      val, e, NULL);
 		}
 	}
 
@@ -868,13 +859,13 @@ static int gbaudio_tplg_create_enum_ctl(struct gbaudio_module_info *gb,
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
@@ -935,12 +926,12 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
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
@@ -950,7 +941,7 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 	/* map name to widget id */
 	wid = gbaudio_map_widgetname(module, w->name);
 	if (wid < 0) {
-		dev_err(codec->dev, "Invalid widget name:%s\n", w->name);
+		dev_err(codec_dev, "Invalid widget name:%s\n", w->name);
 		return -EINVAL;
 	}
 
@@ -973,7 +964,7 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 		break;
 	}
 	if (ret)
-		dev_err_ratelimited(codec->dev,
+		dev_err_ratelimited(codec_dev,
 				    "%d: widget, event:%d failed:%d\n", wid,
 				    event, ret);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
