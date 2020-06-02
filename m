Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5F71EB501
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 07:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1C1A875B4;
	Tue,  2 Jun 2020 05:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJya35p8SW5i; Tue,  2 Jun 2020 05:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4328875B6;
	Tue,  2 Jun 2020 05:21:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 578A81BF34A
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 544F1875B9
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 05:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkApUBVn0aCj for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 05:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 558D9875A1
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 05:21:47 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id n9so889378plk.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Jun 2020 22:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HrE8jPu+eUk0rWTp09/AJ6eqmFiFFAxiAwX4LTYEZSI=;
 b=gpJmF9imy7EwPbtaigUBNEagjOGDTHD7fGkw4xKgjzwdrEDC95Xhb57T5uX5Cv2MYb
 EsIlOcMB0m4Sl/Y/j17qCRyftShvGybRddCKlD2EKGmKcig/PPIjsUbJBBHmfOgb/y14
 aLp8xW4F4acHz4tcakZ98Jo6bh1vl22/wf0uBDJuL+3cSJfwezXm8oDsD3PeVIMhYn/U
 FJ6yTQJaB5SVCNWXe2aJQ8peooqMUZTIqZlOyv/c1j/lxVpFseme/3udPj/dwPKEDXPf
 QqsX8S8kYLK9v1SQXu8zvztocBOWKIPVDLksgkkUCYlcANLGjmGplT/D5QRxqgY2TXVY
 PUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HrE8jPu+eUk0rWTp09/AJ6eqmFiFFAxiAwX4LTYEZSI=;
 b=l7SysFjaKStozf5J7SKn1ujPfTYklGXvyuUlNQGHI8QiOurxaCFDDnzbgDGFeP1REj
 Asdn4EFpcFTRFAHiyJIEt3MiRQF01ZKEC0DESZRVkSGojjtuMhUfpYagRM8ff9lPpKYA
 uTtsFfwBqkHXWjfBYtBr8eyAVmXM+8R/GSsGtIaUcY8/7asWCQh0aJRQ+S7V4X8D3MSb
 WZCu/8vxZr54l1kanTk2HzvSx3I+NkCwu/adiT8xxtmdu6JD3jwd3fYa8WBJLdaPanC3
 op7WOkJqc+JrnDmwB+zYzjonCrpZQ7YyXuiJAla3XKZXhUyePUgOXmJj2/spvZqt1r1P
 cmYA==
X-Gm-Message-State: AOAM530XS71kGL1N1eH3wpnYLAOqEiSNtuUPGI/ACiPP7NE5c4v8S+1O
 gT1yTASZIw3yElmszYwfkMI=
X-Google-Smtp-Source: ABdhPJwliQkS5O5QAObRlb1MPyWfpR5B70bSXSCGtCR9PUV8lwzDthFzWXZlc9YWILqypdxgX7VFnQ==
X-Received: by 2002:a17:90a:20a2:: with SMTP id
 f31mr318401pjg.34.1591075306770; 
 Mon, 01 Jun 2020 22:21:46 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id f18sm1004764pga.75.2020.06.01.22.21.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jun 2020 22:21:46 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: [RESEND PATCH v1 1/6] staging: greybus: audio: Update snd_jack FW
 usage as per new APIs
Date: Tue,  2 Jun 2020 10:51:10 +0530
Message-Id: <1ee2783b64c68e49880f88457655648ac45bbcb8.1591040859.git.vaibhav.sr@gmail.com>
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

snd_soc_jack APIs are modified in recent kernel versions. This patch
updates the codec driver to resolve the compilation errors related to
jack framework.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
---
 drivers/staging/greybus/audio_codec.c | 59 +++++++++++++++++++++------
 1 file changed, 47 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 08746c85dea6..ebf8484f0ae7 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -709,17 +709,29 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
 };
 
 static int gbaudio_init_jack(struct gbaudio_module_info *module,
-			     struct snd_soc_codec *codec)
+			     struct snd_soc_card *card)
 {
 	int ret;
 
+	struct snd_soc_jack *jack;
+	struct snd_soc_jack_pin *headset, *button;
+
 	if (!module->jack_mask)
 		return 0;
 
 	snprintf(module->jack_name, NAME_SIZE, "GB %d Headset Jack",
 		 module->dev_id);
-	ret = snd_soc_jack_new(codec, module->jack_name, module->jack_mask,
-			       &module->headset_jack);
+
+	headset = devm_kzalloc(module->dev, sizeof(*headset), GFP_KERNEL);
+	if (!headset)
+		return -ENOMEM;
+
+	headset->pin = module->jack_name;
+	headset->mask = module->jack_mask;
+	jack = &module->headset_jack;
+
+	ret = snd_soc_card_jack_new(card, module->jack_name, module->jack_mask,
+				    jack, headset, 1);
 	if (ret) {
 		dev_err(module->dev, "Failed to create new jack\n");
 		return ret;
@@ -730,11 +742,21 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 
 	snprintf(module->button_name, NAME_SIZE, "GB %d Button Jack",
 		 module->dev_id);
-	ret = snd_soc_jack_new(codec, module->button_name, module->button_mask,
-			       &module->button_jack);
+	button = devm_kzalloc(module->dev, sizeof(*headset), GFP_KERNEL);
+	if (!button) {
+		ret = -ENOMEM;
+		goto free_headset;
+	}
+
+	button->pin = module->button_name;
+	button->mask = module->button_mask;
+	jack = &module->button_jack;
+
+	ret = snd_soc_card_jack_new(card, module->button_name,
+				    module->button_mask, jack, button, 1);
 	if (ret) {
 		dev_err(module->dev, "Failed to create button jack\n");
-		return ret;
+		goto free_headset;
 	}
 
 	/*
@@ -750,7 +772,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 				       KEY_MEDIA);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_0\n");
-			return ret;
+			goto free_button;
 		}
 	}
 
@@ -759,7 +781,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 				       KEY_VOICECOMMAND);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_1\n");
-			return ret;
+			goto free_button;
 		}
 	}
 
@@ -768,7 +790,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 				       KEY_VOLUMEUP);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_2\n");
-			return ret;
+			goto free_button;
 		}
 	}
 
@@ -777,7 +799,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 				       KEY_VOLUMEDOWN);
 		if (ret) {
 			dev_err(module->dev, "Failed to set BTN_0\n");
-			return ret;
+			goto free_button;
 		}
 	}
 
@@ -788,6 +810,18 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 	*/
 
 	return 0;
+
+free_button:
+	jack = &module->button_jack;
+	snd_device_free(card->snd_card, jack->jack);
+	list_del(&jack->list);
+
+free_headset:
+	jack = &module->headset_jack;
+	snd_device_free(card->snd_card, jack->jack);
+	list_del(&jack->list);
+
+	return ret;
 }
 
 int gbaudio_register_module(struct gbaudio_module_info *module)
@@ -815,7 +849,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 		return -EINVAL;
 	}
 
-	ret = gbaudio_init_jack(module, codec);
+	ret = gbaudio_init_jack(module, component->card);
 	if (ret) {
 		up_write(&card->controls_rwsem);
 		return ret;
@@ -942,7 +976,8 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 
 #ifdef CONFIG_SND_JACK
 	/* free jack devices for this module from codec->jack_list */
-	list_for_each_entry_safe(jack, next_j, &codec->jack_list, list) {
+	list_for_each_entry_safe(jack, next_j, &component->card->jack_list,
+				 list) {
 		if (jack == &module->headset_jack)
 			mask = GBCODEC_JACK_MASK;
 		else if (jack == &module->button_jack)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
