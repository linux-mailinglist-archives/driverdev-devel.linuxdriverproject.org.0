Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C02007A8
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 13:21:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 752728995F;
	Fri, 19 Jun 2020 11:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7G32eRiSFiOm; Fri, 19 Jun 2020 11:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD6578995E;
	Fri, 19 Jun 2020 11:21:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6321BF5A8
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 093228995F
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDfTVcbEIB0B for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 11:21:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E40F589959
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 11:21:16 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id j12so2082653pfn.10
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 04:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p9ErpzdEuUxyuflJiAYw1shpL6eC+EwdEpWPFPr8/Iw=;
 b=M9NMggEWFdvvoiHW3QK8XCQ+Tc4eDzLevOtPD1f7y5CowtQOQweVBgXLgtmpHFMLQY
 UmdHhlHGWnycXyojg3o/cfLky8Ti53thynvz55eH2bUojyi7PueGRe3RFV0vj+mWIZts
 M+3CkgwF+uFmXHbjNN9afaWGOBlU+b7LtJaIW1DHVE+QdcWjSzKFEGffftd5quvFzkBv
 SjVbpubQJ+r5hA0b9jSqRAO0/rwJbrcLiawAhOK5GZx4y9jnC2R1lR1ehPPL2/svXApa
 6V3/zyl9Hc8JVO5HKa9aWw+0M3371Y8408IcgsswuctwMMsE2QkB5WsUBPfWIP3mPqWE
 5WOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p9ErpzdEuUxyuflJiAYw1shpL6eC+EwdEpWPFPr8/Iw=;
 b=JidazyG9oMBcsOY5r1K6cg/oZRWBh2sk/e4xAAr08tD/GsqBgWw+Lgpx17e4LVI2FB
 oNYK1pJahc01UKFPL+PYvcbctU0XuQl4Lp3nCQNTpCIlUhyjQcbWEdqH9BocGz7xGtC9
 PgLWhCZiweASGZDdRTYP+c21V1GkO+hiKDEh9ChznlRaAhZlitsg9gDRuP/CU/xs6X+y
 +SdqVRg1EPViyGjFPIJRrojm73tTW0PWV+Ayym1Juls92MVhu0PVBSUb0GHWv8qaogt+
 Px5d6eH7BCmsBmapKxy3daaeBtRlhxp0WKC3mCVyiDp6Sj5dezqQZecfsV29ydCx9Doj
 o2yA==
X-Gm-Message-State: AOAM530mhpOoVm3L3xAWKskUbOhViMg7Id0B91WtRSvZk2lcKLfk6dwi
 i0BLIOaskt9a8HdD/BE2/NY=
X-Google-Smtp-Source: ABdhPJxOtJBJaZjT9ZXlYybxJRnclFp/hH1hUJXZqM+zCivtgG1gJazPnHBglbBuyDmEVJiawqv+fw==
X-Received: by 2002:a05:6a00:1490:: with SMTP id
 v16mr7408564pfu.173.1592565676323; 
 Fri, 19 Jun 2020 04:21:16 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id d9sm4974293pgg.74.2020.06.19.04.21.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:21:15 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v3 3/6] staging: greybus: audio: Resolve compilation errors
 for GB codec module
Date: Fri, 19 Jun 2020 16:50:23 +0530
Message-Id: <8c5a62f95cc65ff94c2bfc2571932306d8ab0550.1592537217.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592537217.git.vaibhav.sr@gmail.com>
References: <cover.1592537217.git.vaibhav.sr@gmail.com>
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
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
