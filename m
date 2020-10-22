Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D9729586C
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 08:32:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C307887671;
	Thu, 22 Oct 2020 06:32:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DlbG0Ebm+NiY; Thu, 22 Oct 2020 06:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC674875CF;
	Thu, 22 Oct 2020 06:32:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6EE11BF83E
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 06:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3B0820498
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 06:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LhEl2lz3I1k3 for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 06:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id D67A8203F6
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 06:32:41 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id k8so394469pjd.0
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 23:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=2qQFh5sLHbP2wvKZQNu/0L5ZjUKZblTE4nORo49oLp4=;
 b=lI3+kOZD6F61iONxGFdzxJtN3S1WZoGdM+mF2ba/66bR8HJleaDGTMVN7ttteFY6kG
 vaND5SmTMpjdQfZ8DjG2dtTUBvGzmNpwdngKJS0hlOKT7oBakCb8Bx/04/HJOn0vHRA3
 z9ZQtBuhBno3OLKYo/H44rlPPNialJn/zx9S/Q4eefASJYc2oPsRi5YOE2GCniDGzLZM
 lItMJIQOyM8dlVZoUQNgKk60PeKugh6IDg9CM4HAjkTcRwqOZpxkfHNW1BHR3M3GVJF+
 qOYqlU/6FMDVNCcEd6oeEXY96ws2s+HtRuDm0F5N/FDayH2BZ4vSORTFV7pM0/B344pP
 2UqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=2qQFh5sLHbP2wvKZQNu/0L5ZjUKZblTE4nORo49oLp4=;
 b=i9ynzDdzJiNOdRNrzpIgkUciSv0P2WSCtHYHvHfKFMBMNSYgFiUqKDuqHa857MhOo8
 W8PAt2FAVp2JMmZqlonk9rgzHb0ieAK4TPlgWUAwR8JNOA0FgkLbu0CaYWEFNpx0/PF8
 B+9IF6iDUXAoUJ3enjAB2iCeahOt9QldD/UhgqMEeJUHOM4dTvwQ4O+hSP3HiirpHD5e
 wGRLMmID5owU79oXTZoT2mmaxvOevYZXzZ9i3Gj9d/Xt6+d9iQK9sQdNbmRp84/+l9CD
 1aFwHvkJ5PKuXjU1pplWPCcGN7gwxa6gyTrHCysRiPCboNrhMF4V4dsPG3Xm5o76v0CG
 D1Uw==
X-Gm-Message-State: AOAM532C4aWFweGTebfFxARDKQCpRreM2NQBTFl1WyaBWGBP8/cOuEbf
 Av2Ok/S3NvdkXejz54DQCi4=
X-Google-Smtp-Source: ABdhPJzHl/qJey7O4V4r4KW3OFi8JNwX36wWQpIx9zF5VAmU6pHFw4AUEEqw7me9Xx8gZwBG0Ir9rw==
X-Received: by 2002:a17:90a:9a82:: with SMTP id e2mr1066860pjp.2.1603348361440; 
 Wed, 21 Oct 2020 23:32:41 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id q16sm823373pfj.117.2020.10.21.23.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 23:32:40 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:02:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: audio: code indentation and formatting
 changes
Message-ID: <20201022063230.GA351623@ubuntu204>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct code indentation and realignment as per the coding style
guidelines. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/greybus/audio_codec.c         | 109 +++++++-----------
 .../staging/greybus/audio_manager_module.c    |   3 +-
 2 files changed, 40 insertions(+), 72 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 494aa823e998..17a39ed63769 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -71,15 +71,13 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
-						AUDIO_APBRIDGEA_DIRECTION_TX);
+							i2s_port, cportid,
+							AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
-			dev_err_ratelimited(module->dev,
-					    "reg_cport failed:%d\n", ret);
+			dev_err_ratelimited(module->dev, "reg_cport failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_PLAYBACK] =
-			GBAUDIO_CODEC_STARTUP;
+		data->state[SNDRV_PCM_STREAM_PLAYBACK] = GBAUDIO_CODEC_STARTUP;
 		dev_dbg(module->dev, "Dynamic Register %d DAI\n", cportid);
 	}
 
@@ -93,12 +91,10 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 		ret = gb_audio_gb_set_pcm(module->mgmt_connection, data_cport,
 					  format, rate, channels, sig_bits);
 		if (ret) {
-			dev_err_ratelimited(module->dev, "set_pcm failed:%d\n",
-					    ret);
+			dev_err_ratelimited(module->dev, "set_pcm failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_PLAYBACK] =
-			GBAUDIO_CODEC_HWPARAMS;
+		data->state[SNDRV_PCM_STREAM_PLAYBACK] = GBAUDIO_CODEC_HWPARAMS;
 		dev_dbg(module->dev, "Dynamic hw_params %d DAI\n", data_cport);
 	}
 
@@ -113,15 +109,13 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 					    ret);
 			return ret;
 		}
-		ret = gb_audio_gb_activate_tx(module->mgmt_connection,
-					      data_cport);
+		ret = gb_audio_gb_activate_tx(module->mgmt_connection, data_cport);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
 					    "activate_tx failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_PLAYBACK] =
-			GBAUDIO_CODEC_PREPARE;
+		data->state[SNDRV_PCM_STREAM_PLAYBACK] = GBAUDIO_CODEC_PREPARE;
 		dev_dbg(module->dev, "Dynamic prepare %d DAI\n", data_cport);
 	}
 
@@ -153,25 +147,22 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
 			return ret;
 		}
 		dev_dbg(module->dev, "Dynamic deactivate %d DAI\n", data_cport);
-		data->state[SNDRV_PCM_STREAM_PLAYBACK] =
-			GBAUDIO_CODEC_HWPARAMS;
+		data->state[SNDRV_PCM_STREAM_PLAYBACK] = GBAUDIO_CODEC_HWPARAMS;
 	}
 
 	if (module_state > GBAUDIO_CODEC_SHUTDOWN) {
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
-						AUDIO_APBRIDGEA_DIRECTION_TX);
+							  i2s_port, cportid,
+							  AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
-					    "unregister_cport failed:%d\n",
-					    ret);
+					    "unregister_cport failed:%d\n", ret);
 			return ret;
 		}
 		dev_dbg(module->dev, "Dynamic Unregister %d DAI\n", cportid);
-		data->state[SNDRV_PCM_STREAM_PLAYBACK] =
-			GBAUDIO_CODEC_SHUTDOWN;
+		data->state[SNDRV_PCM_STREAM_PLAYBACK] = GBAUDIO_CODEC_SHUTDOWN;
 	}
 
 	return 0;
@@ -206,15 +197,13 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
-						AUDIO_APBRIDGEA_DIRECTION_RX);
+							i2s_port, cportid,
+							AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
-			dev_err_ratelimited(module->dev,
-					    "reg_cport failed:%d\n", ret);
+			dev_err_ratelimited(module->dev, "reg_cport failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_CAPTURE] =
-			GBAUDIO_CODEC_STARTUP;
+		data->state[SNDRV_PCM_STREAM_CAPTURE] = GBAUDIO_CODEC_STARTUP;
 		dev_dbg(module->dev, "Dynamic Register %d DAI\n", cportid);
 	}
 
@@ -228,12 +217,10 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 		ret = gb_audio_gb_set_pcm(module->mgmt_connection, data_cport,
 					  format, rate, channels, sig_bits);
 		if (ret) {
-			dev_err_ratelimited(module->dev, "set_pcm failed:%d\n",
-					    ret);
+			dev_err_ratelimited(module->dev, "set_pcm failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_CAPTURE] =
-			GBAUDIO_CODEC_HWPARAMS;
+		data->state[SNDRV_PCM_STREAM_CAPTURE] = GBAUDIO_CODEC_HWPARAMS;
 		dev_dbg(module->dev, "Dynamic hw_params %d DAI\n", data_cport);
 	}
 
@@ -255,8 +242,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 					    "activate_rx failed:%d\n", ret);
 			return ret;
 		}
-		data->state[SNDRV_PCM_STREAM_CAPTURE] =
-			GBAUDIO_CODEC_PREPARE;
+		data->state[SNDRV_PCM_STREAM_CAPTURE] = GBAUDIO_CODEC_PREPARE;
 		dev_dbg(module->dev, "Dynamic prepare %d DAI\n", data_cport);
 	}
 
@@ -288,25 +274,22 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
 			return ret;
 		}
 		dev_dbg(module->dev, "Dynamic deactivate %d DAI\n", data_cport);
-		data->state[SNDRV_PCM_STREAM_CAPTURE] =
-			GBAUDIO_CODEC_HWPARAMS;
+		data->state[SNDRV_PCM_STREAM_CAPTURE] = GBAUDIO_CODEC_HWPARAMS;
 	}
 
 	if (module_state > GBAUDIO_CODEC_SHUTDOWN) {
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
-						AUDIO_APBRIDGEA_DIRECTION_RX);
+							  i2s_port, cportid,
+							  AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
-					    "unregister_cport failed:%d\n",
-					    ret);
+					    "unregister_cport failed:%d\n", ret);
 			return ret;
 		}
 		dev_dbg(module->dev, "Dynamic Unregister %d DAI\n", cportid);
-		data->state[SNDRV_PCM_STREAM_CAPTURE] =
-			GBAUDIO_CODEC_SHUTDOWN;
+		data->state[SNDRV_PCM_STREAM_CAPTURE] = GBAUDIO_CODEC_SHUTDOWN;
 	}
 
 	return 0;
@@ -330,8 +313,7 @@ int gbaudio_module_update(struct gbaudio_codec_info *codec,
 	/* parse dai_id from AIF widget's stream_name */
 	ret = sscanf(w->sname, "%s %d %s", intf_name, &dai_id, dir);
 	if (ret < 3) {
-		dev_err(codec->dev, "Error while parsing dai_id for %s\n",
-			w->name);
+		dev_err(codec->dev, "Error while parsing dai_id for %s\n", w->name);
 		return -EINVAL;
 	}
 
@@ -449,8 +431,7 @@ static int gbcodec_hw_params(struct snd_pcm_substream *substream,
 	rate = GB_AUDIO_PCM_RATE_48000;
 
 	if (params_format(hwparams) != SNDRV_PCM_FORMAT_S16_LE) {
-		dev_err(dai->dev, "Invalid format:%d\n",
-			params_format(hwparams));
+		dev_err(dai->dev, "Invalid format:%d\n", params_format(hwparams));
 		mutex_unlock(&codec->lock);
 		return -EINVAL;
 	}
@@ -557,18 +538,15 @@ static int gbcodec_prepare(struct snd_pcm_substream *substream,
 
 	switch (substream->stream) {
 	case SNDRV_PCM_STREAM_PLAYBACK:
-		ret = gb_audio_apbridgea_set_tx_data_size(data->connection, 0,
-							  192);
+		ret = gb_audio_apbridgea_set_tx_data_size(data->connection, 0, 192);
 		break;
 	case SNDRV_PCM_STREAM_CAPTURE:
-		ret = gb_audio_apbridgea_set_rx_data_size(data->connection, 0,
-							  192);
+		ret = gb_audio_apbridgea_set_rx_data_size(data->connection, 0, 192);
 		break;
 	}
 	if (ret) {
 		mutex_unlock(&codec->lock);
-		dev_err_ratelimited(dai->dev, "set_data_size failed:%d\n",
-				    ret);
+		dev_err_ratelimited(dai->dev, "set_data_size failed:%d\n", ret);
 		return ret;
 	}
 
@@ -633,30 +611,24 @@ static int gbcodec_mute_stream(struct snd_soc_dai *dai, int mute, int stream)
 	}
 
 	if (!mute && !stream) {/* start playback */
-		ret = gb_audio_apbridgea_prepare_tx(data->connection,
-						    0);
+		ret = gb_audio_apbridgea_prepare_tx(data->connection, 0);
 		if (!ret)
-			ret = gb_audio_apbridgea_start_tx(data->connection,
-							  0, 0);
+			ret = gb_audio_apbridgea_start_tx(data->connection, 0, 0);
 		params->state = GBAUDIO_CODEC_START;
 	} else if (!mute && stream) {/* start capture */
-		ret = gb_audio_apbridgea_prepare_rx(data->connection,
-						    0);
+		ret = gb_audio_apbridgea_prepare_rx(data->connection, 0);
 		if (!ret)
-			ret = gb_audio_apbridgea_start_rx(data->connection,
-							  0);
+			ret = gb_audio_apbridgea_start_rx(data->connection, 0);
 		params->state = GBAUDIO_CODEC_START;
 	} else if (mute && !stream) {/* stop playback */
 		ret = gb_audio_apbridgea_stop_tx(data->connection, 0);
 		if (!ret)
-			ret = gb_audio_apbridgea_shutdown_tx(data->connection,
-							     0);
+			ret = gb_audio_apbridgea_shutdown_tx(data->connection, 0);
 		params->state = GBAUDIO_CODEC_STOP;
 	} else if (mute && stream) {/* stop capture */
 		ret = gb_audio_apbridgea_stop_rx(data->connection, 0);
 		if (!ret)
-			ret = gb_audio_apbridgea_shutdown_rx(data->connection,
-							     0);
+			ret = gb_audio_apbridgea_shutdown_rx(data->connection, 0);
 		params->state = GBAUDIO_CODEC_STOP;
 	} else {
 		ret = -EINVAL;
@@ -866,8 +838,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 
 	/* card already instantiated, create widgets here only */
 	if (comp->card->instantiated) {
-		gbaudio_dapm_link_component_dai_widgets(comp->card,
-							&comp->dapm);
+		gbaudio_dapm_link_component_dai_widgets(comp->card, &comp->dapm);
 #ifdef CONFIG_SND_JACK
 		/*
 		 * register jack devices for this module
@@ -902,8 +873,7 @@ static void gbaudio_codec_clean_data_tx(struct gbaudio_data_connection *data)
 		ret = gb_audio_apbridgea_stop_tx(data->connection, 0);
 		if (ret)
 			return;
-		ret = gb_audio_apbridgea_shutdown_tx(data->connection,
-						     0);
+		ret = gb_audio_apbridgea_shutdown_tx(data->connection, 0);
 		if (ret)
 			return;
 	}
@@ -924,8 +894,7 @@ static void gbaudio_codec_clean_data_rx(struct gbaudio_data_connection *data)
 		ret = gb_audio_apbridgea_stop_rx(data->connection, 0);
 		if (ret)
 			return;
-		ret = gb_audio_apbridgea_shutdown_rx(data->connection,
-						     0);
+		ret = gb_audio_apbridgea_shutdown_rx(data->connection, 0);
 		if (ret)
 			return;
 	}
diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index 2bfd804183c4..525cf8f8394f 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -213,8 +213,7 @@ int gb_audio_manager_module_create(
 	err = kobject_init_and_add(&m->kobj, &gb_audio_module_type, NULL, "%d",
 				   id);
 	if (err) {
-		pr_err("failed initializing kobject for audio module #%d\n",
-		       id);
+		pr_err("failed initializing kobject for audio module #%d\n", id);
 		kobject_put(&m->kobj);
 		return err;
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
