Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AE51EB506
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40730875DC;
	Tue,  2 Jun 2020 05:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWgxr94zdf-F; Tue,  2 Jun 2020 05:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4949875A1;
	Tue,  2 Jun 2020 05:22:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E78DC1BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E40C487FCC
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHL-6cgO+OWD for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5906E87AAF
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:21:58 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bh7so864618plb.11
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6w49s8vASLEohgXCuLWOT610sDy/W13BVCsIn1lkugE=;
 b=LjAd7juKsAoR9uNpTa+UgdK7B9QTuMRto3ngp9JnESyAhUz0TZNTA6OY2IrxAiiHT5
 HQ4hw5kf1yIs0W86wh3Gc6nZq0PQqT0gXgQmk6jq+M3QaVE6RUx720BKpPJqvtO/rjPA
 ESEJXNzOhRam6cpess4xrFI9yTQ9aciQl3Gb1jRpuq8Ng8bp/WNL4+BrZVNoHBQLWvHt
 zSg+m2HNQyok/dIYWrJptOdMJcnuS2PmHI/lH9HmC9vENq9I+n/Bl3KN5IeX76QwMfd/
 tUJxS2BXDLGy/WHHgLC4Ra/LRRQPPDsZCWXZ2KQf1pOXTA4TdtmlzIH8Hm/ENRAEUFCI
 hyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6w49s8vASLEohgXCuLWOT610sDy/W13BVCsIn1lkugE=;
 b=JpVtNKJ+4DlEDMC/BwgXXeq12z0U7OXnJ76bfufrNZ1axompnV/QoJ4vhb/Yh/xZ54
 MrkGC1i29k5on/3YHPHuONc7Q4GMP51HGWHQ2yk9mVuCo+NUOZmP+Oopnsh2UyKzoJN/
 ZpNtbt5Z2PhyR7d9wPq5Y+8WdkgZiMhdiybC/x1uz0XmSnJbrH47qAN9LnN9Xryf0ZIj
 fXwc69Kc3IBwLU+yW90vw2l/6gqoUXxfSOk4//MlLLxSREoHL5qO6cDINMWLFGvyFQX8
 aLyc63Ozzs3jAE4t9NIgGaOs2Yku/DImNKJ4TD2HBrhDnk6QwccmGGglRPr654VigV3d
 w/1w==
X-Gm-Message-State: AOAM530V5io6QPX+OkxhWKdJ7uIwwiB0mtyj3o3I2LVULg9DwMO7kicl
 WHsOIN/7R7UGLNILgoT+RJ8=
X-Google-Smtp-Source: ABdhPJxbspGz7qP61diRakcvcAkIj5uoqUpw3niU51tUCw17/TaHluyeihPQsMQrg+wSJwzWsqeBBA==
X-Received: by 2002:a17:90a:32ee:: with SMTP id
 l101mr3561025pjb.213.1591075317759; 
 Mon, 01 Jun 2020 22:21:57 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id f18sm1004764pga.75.2020.06.01.22.21.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jun 2020 22:21:57 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [RESEND PATCH v1 2/6] staging: greybus: audio: Maintain jack list
 within GB Audio module
Date: Tue,  2 Jun 2020 10:51:11 +0530
Message-Id: <ccb39352a30ab39df1534efafc9415aa89b156fa.1591040859.git.vaibhav.sr@gmail.com>
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

As per the current implementation for GB codec driver, a jack list is
maintained for each module. And it expects the list to be populated by
the snd_soc_jack structure which would require modifications in
mainstream code.

However, this is not a necessary requirement and the list can be easily
maintained within gbaudio_module_info as well. This patch provides the
relevant changes for the same.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
 drivers/staging/greybus/audio_codec.c  | 76 ++++++++++++++------------
 drivers/staging/greybus/audio_codec.h  | 10 +++-
 drivers/staging/greybus/audio_module.c | 20 ++++---
 3 files changed, 60 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index ebf8484f0ae7..a2ee587e5a79 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -712,7 +712,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 			     struct snd_soc_card *card)
 {
 	int ret;
-
+	struct gbaudio_jack *gba_jack, *n;
 	struct snd_soc_jack *jack;
 	struct snd_soc_jack_pin *headset, *button;
 
@@ -728,7 +728,8 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 
 	headset->pin = module->jack_name;
 	headset->mask = module->jack_mask;
-	jack = &module->headset_jack;
+	gba_jack = &module->headset;
+	jack = &gba_jack->jack;
 
 	ret = snd_soc_card_jack_new(card, module->jack_name, module->jack_mask,
 				    jack, headset, 1);
@@ -737,6 +738,9 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 		return ret;
 	}
 
+	/* Add to module's jack list */
+	list_add(&gba_jack->list, &module->jack_list);
+
 	if (!module->button_mask)
 		return 0;
 
@@ -745,20 +749,24 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 	button = devm_kzalloc(module->dev, sizeof(*headset), GFP_KERNEL);
 	if (!button) {
 		ret = -ENOMEM;
-		goto free_headset;
+		goto free_jack;
 	}
 
 	button->pin = module->button_name;
 	button->mask = module->button_mask;
-	jack = &module->button_jack;
+	gba_jack = &module->button;
+	jack = &gba_jack->jack;
 
 	ret = snd_soc_card_jack_new(card, module->button_name,
 				    module->button_mask, jack, button, 1);
 	if (ret) {
 		dev_err(module->dev, "Failed to create button jack\n");
-		goto free_headset;
+		goto free_jack;
 	}
 
+	/* Add to module's jack list */
+	list_add(&gba_jack->list, &module->jack_list);
+
 	/*
 	 * Currently, max 4 buttons are supported with following key mapping
 	 * BTN_0 = KEY_MEDIA
@@ -768,58 +776,55 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 	 */
 
 	if (module->button_mask & SND_JACK_BTN_0) {
-		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_0,
+		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_0,
 				       KEY_MEDIA);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_0\n");
-			goto free_button;
+			goto free_jack;
 		}
 	}
 
 	if (module->button_mask & SND_JACK_BTN_1) {
-		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_1,
+		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_1,
 				       KEY_VOICECOMMAND);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_1\n");
-			goto free_button;
+			goto free_jack;
 		}
 	}
 
 	if (module->button_mask & SND_JACK_BTN_2) {
-		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_2,
+		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_2,
 				       KEY_VOLUMEUP);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_2\n");
-			goto free_button;
+			goto free_jack;
 		}
 	}
 
 	if (module->button_mask & SND_JACK_BTN_3) {
-		ret = snd_jack_set_key(module->button_jack.jack, SND_JACK_BTN_3,
+		ret = snd_jack_set_key(jack->jack, SND_JACK_BTN_3,
 				       KEY_VOLUMEDOWN);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_0\n");
-			goto free_button;
+			goto free_jack;
 		}
 	}
 
 	/* FIXME
 	 * verify if this is really required
 	set_bit(INPUT_PROP_NO_DUMMY_RELEASE,
-		module->button_jack.jack->input_dev->propbit);
+		module->button->jack->jack->input_dev->propbit);
 	*/
 
 	return 0;
 
-free_button:
-	jack = &module->button_jack;
-	snd_device_free(card->snd_card, jack->jack);
-	list_del(&jack->list);
-
-free_headset:
-	jack = &module->headset_jack;
-	snd_device_free(card->snd_card, jack->jack);
-	list_del(&jack->list);
+free_jack:
+	list_for_each_entry_safe(gba_jack, n, &module->jack_list, list) {
+		jack = &gba_jack->jack;
+		snd_device_free(card->snd_card, jack->jack);
+		list_del(&gba_jack->list);
+	}
 
 	return ret;
 }
@@ -829,6 +834,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 	int ret;
 	struct snd_soc_codec *codec;
 	struct snd_card *card;
+	struct gbaudio_jack *gba_jack = NULL;
 	struct snd_soc_jack *jack = NULL;
 
 	if (!gbcodec) {
@@ -874,11 +880,10 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 		 * register jack devices for this module
 		 * from codec->jack_list
 		 */
-		list_for_each_entry(jack, &codec->jack_list, list) {
-			if ((jack == &module->headset_jack) ||
-			    (jack == &module->button_jack))
-				snd_device_register(codec->card->snd_card,
-						    jack->jack);
+		list_for_each_entry(gba_jack, &module->jack_list, list) {
+			jack = &gba_jack->jack;
+			snd_device_register(codec->card->snd_card,
+					    jack->jack);
 		}
 #endif
 	}
@@ -962,7 +967,8 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 {
 	struct snd_soc_codec *codec = gbcodec->codec;
 	struct snd_card *card = codec->card->snd_card;
-	struct snd_soc_jack *jack, *next_j;
+	struct gbaudio_jack *gba_jack, *n;
+	struct snd_soc_jack *jack;
 	int mask;
 
 	dev_dbg(codec->dev, "Unregister %s module\n", module->name);
@@ -975,21 +981,21 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 	mutex_unlock(&gbcodec->lock);
 
 #ifdef CONFIG_SND_JACK
-	/* free jack devices for this module from codec->jack_list */
-	list_for_each_entry_safe(jack, next_j, &component->card->jack_list,
-				 list) {
-		if (jack == &module->headset_jack)
+	/* free jack devices for this module jack_list */
+	list_for_each_entry_safe(gba_jack, n, &module->jack_list, list) {
+		if (gba_jack == &module->headset)
 			mask = GBCODEC_JACK_MASK;
-		else if (jack == &module->button_jack)
+		else if (gba_jack == &module->button)
 			mask = GBCODEC_JACK_BUTTON_MASK;
 		else
 			mask = 0;
 		if (mask) {
+			jack = &gba_jack->jack;
 			dev_dbg(module->dev, "Report %s removal\n",
 				jack->jack->id);
 			snd_soc_jack_report(jack, 0, mask);
 			snd_device_free(codec->card->snd_card, jack->jack);
-			list_del(&jack->list);
+			list_del(&gba_jack->list);
 		}
 	}
 #endif
diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index cb5d271da1a5..af9195eceb3a 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -106,6 +106,11 @@ enum gbaudio_module_state {
 	GBAUDIO_MODULE_ON,
 };
 
+struct gbaudio_jack {
+	struct snd_soc_jack jack;
+	struct list_head list;
+};
+
 struct gbaudio_module_info {
 	/* module info */
 	struct device *dev;
@@ -130,8 +135,8 @@ struct gbaudio_module_info {
 	int jack_mask;
 	int button_mask;
 	int button_status;
-	struct snd_soc_jack headset_jack;
-	struct snd_soc_jack button_jack;
+	struct gbaudio_jack headset;
+	struct gbaudio_jack button;
 
 	/* connection info */
 	struct gb_connection *mgmt_connection;
@@ -155,6 +160,7 @@ struct gbaudio_module_info {
 	struct list_head widget_list;
 	struct list_head ctl_list;
 	struct list_head widget_ctl_list;
+	struct list_head jack_list;
 
 	struct gb_audio_topology *topology;
 };
diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index 300a2b4f3fc7..cdd4b6be5e9c 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -21,8 +21,10 @@ static int gbaudio_request_jack(struct gbaudio_module_info *module,
 				struct gb_audio_jack_event_request *req)
 {
 	int report;
-	struct snd_jack *jack = module->headset_jack.jack;
-	struct snd_jack *btn_jack = module->button_jack.jack;
+	struct snd_soc_jack *hs = &module->headset.jack;
+	struct snd_soc_jack *btn = &module->button.jack;
+	struct snd_jack *jack = hs->jack;
+	struct snd_jack *btn_jack = btn->jack;
 
 	if (!jack) {
 		dev_err_ratelimited(module->dev,
@@ -38,12 +40,10 @@ static int gbaudio_request_jack(struct gbaudio_module_info *module,
 	if (req->event == GB_AUDIO_JACK_EVENT_REMOVAL) {
 		module->jack_type = 0;
 		if (btn_jack && module->button_status) {
-			snd_soc_jack_report(&module->button_jack, 0,
-					    module->button_mask);
+			snd_soc_jack_report(btn, 0, module->button_mask);
 			module->button_status = 0;
 		}
-		snd_soc_jack_report(&module->headset_jack, 0,
-				    module->jack_mask);
+		snd_soc_jack_report(hs, 0, module->jack_mask);
 		return 0;
 	}
 
@@ -61,7 +61,7 @@ static int gbaudio_request_jack(struct gbaudio_module_info *module,
 				     module->jack_type, report);
 
 	module->jack_type = report;
-	snd_soc_jack_report(&module->headset_jack, report, module->jack_mask);
+	snd_soc_jack_report(hs, report, module->jack_mask);
 
 	return 0;
 }
@@ -70,7 +70,8 @@ static int gbaudio_request_button(struct gbaudio_module_info *module,
 				  struct gb_audio_button_event_request *req)
 {
 	int soc_button_id, report;
-	struct snd_jack *btn_jack = module->button_jack.jack;
+	struct snd_soc_jack *btn = &module->button.jack;
+	struct snd_jack *btn_jack = btn->jack;
 
 	if (!btn_jack) {
 		dev_err_ratelimited(module->dev,
@@ -124,7 +125,7 @@ static int gbaudio_request_button(struct gbaudio_module_info *module,
 
 	module->button_status = report;
 
-	snd_soc_jack_report(&module->button_jack, report, module->button_mask);
+	snd_soc_jack_report(btn, report, module->button_mask);
 
 	return 0;
 }
@@ -258,6 +259,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 	INIT_LIST_HEAD(&gbmodule->widget_list);
 	INIT_LIST_HEAD(&gbmodule->ctl_list);
 	INIT_LIST_HEAD(&gbmodule->widget_ctl_list);
+	INIT_LIST_HEAD(&gbmodule->jack_list);
 	gbmodule->dev = dev;
 	snprintf(gbmodule->name, NAME_SIZE, "%s.%s", dev->driver->name,
 		 dev_name(dev));
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
