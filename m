Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0DA219DBA
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:28:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A8B32266B3;
	Thu,  9 Jul 2020 10:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9U5lCqSXhmu; Thu,  9 Jul 2020 10:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0ECCD26AD9;
	Thu,  9 Jul 2020 10:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4BD1BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34646897D0
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUMwJ0c-cmxT for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:28:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69055896F8
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:28:03 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id md7so919172pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 03:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gMInGCJv+7mdmv/65/Ja8VjAfNFSxDzLB2atwsF/3Ag=;
 b=Dz6OiIF2irE2tFbqqWZ5zZLSGFdY8D649ohNXoDhXKIDKIpn3z9nUeU8i4Ylc8+YSV
 KqnCLHO6WPhkvMuWPm4+L0S+aNbMPF8bbV2CU6FCY5pmiK4fcn/GseNw/wwokRQ40rpD
 r2XpjzxHsGpRctNcMhohqc0pvC8IAztAJVWYNtD8Uh1cP64jcASqF6b9LeKpMQjC/iLU
 JAPsjLVDzrYcDnlaXhZJu9+NeqoXqNlVXX7t0YxP5B2zr89QNCacbQ9/SPxcLkE9T4I8
 0xg6hdYVjp1xsEGLipzKJlbVxgP8+ysY5SywrZkKXUnL/p+tqitRBL+9eYtkHkAVpyez
 Mcjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gMInGCJv+7mdmv/65/Ja8VjAfNFSxDzLB2atwsF/3Ag=;
 b=eqwPg+CpWYLCNIeRUY6ZAnbxb+yDS9bjaFX3tY9eW/9/HhD1oD/rUClQ4XCebcZOKX
 p2TyfCX/O+bnSlF4SYgm6NAsaOau6OAnHfgOg/voyj9bRANajBSpnQO0qzL+9gPUB4xn
 wZIo012Ap5Cxh/5wYZ25Q9Hnzh2jeKU1t8c0zko4x7fj1F0frOT4yWC9fU1+nqN7ozHj
 pNDYlgh1Bx8kb1GxGTFc6Pw3Gq+M8KQ1AJO3mbsl06JR/VJSgHyLdcVRxl/+tSs0ojW4
 lEd1A1ikY+zzzT/QBypvtL7HvpddjgydARuD3B0Qk2uVBm+BwgTQDgWV4q4oNuVoYgOP
 tX2Q==
X-Gm-Message-State: AOAM530xXXCpJpbhuAIZq7pZIwg8npibF+gZctYEArErOkVWnsElKs0A
 8gW2fDldXqVVOl1PD3iVuQI=
X-Google-Smtp-Source: ABdhPJwpPYUaljtRABdoWYH1y0DgwHOfq1d/rgZB1y5OsK7OARDbytOV9BczuAw6KbgZ0XvxQuwFng==
X-Received: by 2002:a17:90b:3684:: with SMTP id
 mj4mr14751186pjb.66.1594290482901; 
 Thu, 09 Jul 2020 03:28:02 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.54.40])
 by smtp.googlemail.com with ESMTPSA id y8sm2125163pju.49.2020.07.09.03.27.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 03:28:02 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v4 3/7] staging: greybus: audio: Resolve compilation errors
 for GB codec module
Date: Thu,  9 Jul 2020 15:57:19 +0530
Message-Id: <dd66a960fca186da055600fe1e622b7a814cb543.1594290158.git.vaibhav.sr@gmail.com>
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

Due to dependencies on ASoC framework changes, GB dummy codec module
compilation is currently disabled. This patch updates codec driver as
per the latest ASoC APIs.

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/greybus/audio_codec.c | 88 +++++++++++++--------------
 drivers/staging/greybus/audio_codec.h |  2 +-
 2 files changed, 44 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 6dc4ee2bfb37..0ecdba27086b 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -825,7 +825,7 @@ static int gbaudio_init_jack(struct gbaudio_module_info *module,
 int gbaudio_register_module(struct gbaudio_module_info *module)
 {
 	int ret;
-	struct snd_soc_codec *codec;
+	struct snd_soc_component *comp;
 	struct snd_card *card;
 	struct gbaudio_jack *jack = NULL;
 
@@ -834,8 +834,8 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 		return -EAGAIN;
 	}
 
-	codec = gbcodec->codec;
-	card = codec->card->snd_card;
+	comp = gbcodec->component;
+	card = comp->card->snd_card;
 
 	down_write(&card->controls_rwsem);
 
@@ -847,33 +847,33 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 		return -EINVAL;
 	}
 
-	ret = gbaudio_init_jack(module, component->card);
+	ret = gbaudio_init_jack(module, comp->card);
 	if (ret) {
 		up_write(&card->controls_rwsem);
 		return ret;
 	}
 
 	if (module->dapm_widgets)
-		snd_soc_dapm_new_controls(&codec->dapm, module->dapm_widgets,
+		snd_soc_dapm_new_controls(&comp->dapm, module->dapm_widgets,
 					  module->num_dapm_widgets);
 	if (module->controls)
-		snd_soc_add_codec_controls(codec, module->controls,
-					   module->num_controls);
+		snd_soc_add_component_controls(comp, module->controls,
+					       module->num_controls);
 	if (module->dapm_routes)
-		snd_soc_dapm_add_routes(&codec->dapm, module->dapm_routes,
+		snd_soc_dapm_add_routes(&comp->dapm, module->dapm_routes,
 					module->num_dapm_routes);
 
 	/* card already instantiated, create widgets here only */
-	if (codec->card->instantiated) {
-		snd_soc_dapm_link_component_dai_widgets(codec->card,
-							&codec->dapm);
+	if (comp->card->instantiated) {
+		snd_soc_dapm_link_component_dai_widgets(comp->card,
+							&comp->dapm);
 #ifdef CONFIG_SND_JACK
 		/*
 		 * register jack devices for this module
 		 * from codec->jack_list
 		 */
 		list_for_each_entry(jack, &module->jack_list, list) {
-			snd_device_register(codec->card->snd_card,
+			snd_device_register(comp->card->snd_card,
 					    jack->jack.jack);
 		}
 #endif
@@ -883,9 +883,9 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 	list_add(&module->list, &gbcodec->module_list);
 	mutex_unlock(&gbcodec->lock);
 
-	if (codec->card->instantiated)
-		ret = snd_soc_dapm_new_widgets(&codec->dapm);
-	dev_dbg(codec->dev, "Registered %s module\n", module->name);
+	if (comp->card->instantiated)
+		ret = snd_soc_dapm_new_widgets(comp->card);
+	dev_dbg(comp->dev, "Registered %s module\n", module->name);
 
 	up_write(&card->controls_rwsem);
 	return ret;
@@ -956,18 +956,18 @@ static void gbaudio_codec_cleanup(struct gbaudio_module_info *module)
 
 void gbaudio_unregister_module(struct gbaudio_module_info *module)
 {
-	struct snd_soc_codec *codec = gbcodec->codec;
-	struct snd_card *card = codec->card->snd_card;
+	struct snd_soc_component *comp = gbcodec->component;
+	struct snd_card *card = comp->card->snd_card;
 	struct gbaudio_jack *jack, *n;
 	int mask;
 
-	dev_dbg(codec->dev, "Unregister %s module\n", module->name);
+	dev_dbg(comp->dev, "Unregister %s module\n", module->name);
 
 	down_write(&card->controls_rwsem);
 	mutex_lock(&gbcodec->lock);
 	gbaudio_codec_cleanup(module);
 	list_del(&module->list);
-	dev_dbg(codec->dev, "Process Unregister %s module\n", module->name);
+	dev_dbg(comp->dev, "Process Unregister %s module\n", module->name);
 	mutex_unlock(&gbcodec->lock);
 
 #ifdef CONFIG_SND_JACK
@@ -983,99 +983,97 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 			dev_dbg(module->dev, "Report %s removal\n",
 				jack->jack.jack->id);
 			snd_soc_jack_report(&jack->jack, 0, mask);
-			snd_device_free(codec->card->snd_card, jack->jack.jack);
+			snd_device_free(comp->card->snd_card,
+					jack->jack.jack);
 			list_del(&jack->list);
 		}
 	}
 #endif
 
 	if (module->dapm_routes) {
-		dev_dbg(codec->dev, "Removing %d routes\n",
+		dev_dbg(comp->dev, "Removing %d routes\n",
 			module->num_dapm_routes);
-		snd_soc_dapm_del_routes(&codec->dapm, module->dapm_routes,
+		snd_soc_dapm_del_routes(&comp->dapm, module->dapm_routes,
 					module->num_dapm_routes);
 	}
 	if (module->controls) {
-		dev_dbg(codec->dev, "Removing %d controls\n",
+		dev_dbg(comp->dev, "Removing %d controls\n",
 			module->num_controls);
-		snd_soc_remove_codec_controls(codec, module->controls,
+		snd_soc_remove_codec_controls(comp, module->controls,
 					      module->num_controls);
 	}
 	if (module->dapm_widgets) {
-		dev_dbg(codec->dev, "Removing %d widgets\n",
+		dev_dbg(comp->dev, "Removing %d widgets\n",
 			module->num_dapm_widgets);
-		snd_soc_dapm_free_controls(&codec->dapm, module->dapm_widgets,
+		snd_soc_dapm_free_controls(&comp->dapm, module->dapm_widgets,
 					   module->num_dapm_widgets);
 	}
 
-	dev_dbg(codec->dev, "Unregistered %s module\n", module->name);
+	dev_dbg(comp->dev, "Unregistered %s module\n", module->name);
 
 	up_write(&card->controls_rwsem);
 }
 EXPORT_SYMBOL(gbaudio_unregister_module);
 
 /*
- * codec driver ops
+ * component driver ops
  */
-static int gbcodec_probe(struct snd_soc_codec *codec)
+static int gbcodec_probe(struct snd_soc_component *comp)
 {
 	int i;
 	struct gbaudio_codec_info *info;
 	struct gbaudio_codec_dai *dai;
 
-	info = devm_kzalloc(codec->dev, sizeof(*info), GFP_KERNEL);
+	info = devm_kzalloc(comp->dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
 
-	info->dev = codec->dev;
+	info->dev = comp->dev;
 	INIT_LIST_HEAD(&info->module_list);
 	mutex_init(&info->lock);
 	INIT_LIST_HEAD(&info->dai_list);
 
 	/* init dai_list used to maintain runtime stream info */
 	for (i = 0; i < ARRAY_SIZE(gbaudio_dai); i++) {
-		dai = devm_kzalloc(codec->dev, sizeof(*dai), GFP_KERNEL);
+		dai = devm_kzalloc(comp->dev, sizeof(*dai), GFP_KERNEL);
 		if (!dai)
 			return -ENOMEM;
 		dai->id = gbaudio_dai[i].id;
 		list_add(&dai->list, &info->dai_list);
 	}
 
-	info->codec = codec;
-	snd_soc_codec_set_drvdata(codec, info);
+	info->component = comp;
+	snd_soc_component_set_drvdata(comp, info);
 	gbcodec = info;
 
-	device_init_wakeup(codec->dev, 1);
+	device_init_wakeup(comp->dev, 1);
 	return 0;
 }
 
-static int gbcodec_remove(struct snd_soc_codec *codec)
+static void gbcodec_remove(struct snd_soc_component *comp)
 {
 	/* Empty function for now */
-	return 0;
+	return;
 }
 
-static int gbcodec_write(struct snd_soc_codec *codec, unsigned int reg,
+static int gbcodec_write(struct snd_soc_component *comp, unsigned int reg,
 			 unsigned int value)
 {
 	return 0;
 }
 
-static unsigned int gbcodec_read(struct snd_soc_codec *codec,
+static unsigned int gbcodec_read(struct snd_soc_component *comp,
 				 unsigned int reg)
 {
 	return 0;
 }
 
-static struct snd_soc_codec_driver soc_codec_dev_gbaudio = {
+static const struct snd_soc_component_driver soc_codec_dev_gbaudio = {
 	.probe	= gbcodec_probe,
 	.remove	= gbcodec_remove,
 
 	.read = gbcodec_read,
 	.write = gbcodec_write,
-
-	.idle_bias_off = true,
-	.ignore_pmdown_time = 1,
 };
 
 #ifdef CONFIG_PM
@@ -1099,13 +1097,13 @@ static const struct dev_pm_ops gbaudio_codec_pm_ops = {
 
 static int gbaudio_codec_probe(struct platform_device *pdev)
 {
-	return snd_soc_register_codec(&pdev->dev, &soc_codec_dev_gbaudio,
+	return devm_snd_soc_register_component(&pdev->dev,
+			&soc_codec_dev_gbaudio,
 			gbaudio_dai, ARRAY_SIZE(gbaudio_dai));
 }
 
 static int gbaudio_codec_remove(struct platform_device *pdev)
 {
-	snd_soc_unregister_codec(&pdev->dev);
 	return 0;
 }
 
diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
index af9195eceb3a..ce15e800e607 100644
--- a/drivers/staging/greybus/audio_codec.h
+++ b/drivers/staging/greybus/audio_codec.h
@@ -66,7 +66,7 @@ struct gbaudio_codec_dai {
 
 struct gbaudio_codec_info {
 	struct device *dev;
-	struct snd_soc_codec *codec;
+	struct snd_soc_component *component;
 	struct list_head module_list;
 	/* to maintain runtime stream params for each DAI */
 	struct list_head dai_list;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
