Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D3924F14E
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 04:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6147885A76;
	Mon, 24 Aug 2020 02:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVK_TltSF0YO; Mon, 24 Aug 2020 02:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9348A85B0C;
	Mon, 24 Aug 2020 02:51:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECDA01BF38C
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 02:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC99A20471
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 02:51:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvPLS-SWZItg for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 02:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EF5120021
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 02:51:15 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id kr4so3484707pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 23 Aug 2020 19:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ixj5gB01vHjdElJh/8SLOq0796njYXtg704poP+WWps=;
 b=ku3fYIbOxT8j/hVDVwLg5UOYjRgAfsEYPKU56VYLce9NBHfx6317dJ5WdatbjFTTK/
 EcGbAJ5RrOWZUU+aQ1oztZbk+DYkqtdoxE8gF4U+hqpUday7UGCtbKhcsMUrhCKwpm9C
 aLKhkVRTS/BukkgaoaB7QjWY37i/viEhSxIhI+89kxTgLjLBcJLO5CDPQP/l/PdL6XNS
 NZsFrfqW7Z0Jn6+gUuL9hTej9fXMZ314foMtIUOKfnjlvU1H7L5epYjuvyFJNT1lBin8
 aRUGwNMB0CZg42zDKFrV7h/stLBVYhopc7X34wP8aMzMahSBAT12o5F4M5A5MC0z+v1R
 dybQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ixj5gB01vHjdElJh/8SLOq0796njYXtg704poP+WWps=;
 b=EImOeAwuakZ4lF4RJHm9RW9+0yyLfP87Ek0kFTcQACK78o2JLW1U7k4ti8O620nt8W
 MuKyb2JTTthgfSX0e8gILslAJwetrXVOmyjLMnHAhwvhFpyjA3druACx2SwGgBPYxJV9
 10Cwzg/HqaoOehKhY6yPoOAKxnM2RvXDs3+0Nw/cxI9NJdSyduceex7RPZTWlZCm25Kv
 9gMTdkXc/S7A5s2GYk13xVKD88CklY5hoxMic8vV8GeMjzMR4L4Cgmxq21M/y4249Zy8
 et1KxZpPW38iO5krUMpZS8GaZqY+WpIdhEhLp+ULf/W0MxQQhwvCqVPD3Vis21B5+4s7
 u7Pw==
X-Gm-Message-State: AOAM533Nr6wG6NJL6IUZLz5pPTO9bxuy8B3grFb3BJAYQeGw9Fdovj9T
 ivR2Yp8PNgAVL9ZUqy+thWBFhsaiJRFCVZXNGBM=
X-Google-Smtp-Source: ABdhPJxq9HhdYv64CpLCCnz1nOzigdRgP5uLQe7AIncPH09UyfmbxEAvHKlqO9UJEf4CGCZm5z0VzQ==
X-Received: by 2002:a17:90a:34c3:: with SMTP id
 m3mr2843277pjf.71.1598237474379; 
 Sun, 23 Aug 2020 19:51:14 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id c207sm8999836pfc.64.2020.08.23.19.51.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Aug 2020 19:51:13 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: greybus: fix warnings detected by sparse
Date: Mon, 24 Aug 2020 10:50:59 +0800
Message-Id: <20200824025100.1068350-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fix the following warnings from sparse,

$ make C=2 drivers/staging/greybus/
drivers/staging/greybus/audio_codec.c:691:36: warning: incorrect type in initializer (different base types)
drivers/staging/greybus/audio_codec.c:691:36:    expected unsigned long long [usertype] formats
drivers/staging/greybus/audio_codec.c:691:36:    got restricted snd_pcm_format_t [usertype]
drivers/staging/greybus/audio_codec.c:701:36: warning: incorrect type in initializer (different base types)
drivers/staging/greybus/audio_codec.c:701:36:    expected unsigned long long [usertype] formats
drivers/staging/greybus/audio_codec.c:701:36:    got restricted snd_pcm_format_t [usertype]
drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:691:41:    expected unsigned int access
drivers/staging/greybus/audio_topology.c:691:41:    got restricted __le32 [usertype] access
drivers/staging/greybus/audio_topology.c:746:44: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:746:44:    expected unsigned int
drivers/staging/greybus/audio_topology.c:746:44:    got restricted __le32
drivers/staging/greybus/audio_topology.c:748:52: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:748:52:    expected unsigned int
drivers/staging/greybus/audio_topology.c:748:52:    got restricted __le32
drivers/staging/greybus/audio_topology.c:802:42: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:805:50: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:805:50:    expected restricted __le32
drivers/staging/greybus/audio_topology.c:805:50:    got unsigned int
drivers/staging/greybus/audio_topology.c:814:50: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:817:58: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:817:58:    expected restricted __le32
drivers/staging/greybus/audio_topology.c:817:58:    got unsigned int
drivers/staging/greybus/audio_topology.c:889:25: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:889:25:    expected unsigned int access
drivers/staging/greybus/audio_topology.c:889:25:    got restricted __le32 [usertype] access

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/greybus/audio_codec.c    |  4 ++--
 drivers/staging/greybus/audio_module.c   |  2 +-
 drivers/staging/greybus/audio_topology.c | 18 +++++++++---------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 74538f8c5fa4..494aa823e998 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -688,7 +688,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
 		.playback = {
 			.stream_name = "I2S 0 Playback",
 			.rates = SNDRV_PCM_RATE_48000,
-			.formats = SNDRV_PCM_FORMAT_S16_LE,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
 			.rate_max = 48000,
 			.rate_min = 48000,
 			.channels_min = 1,
@@ -698,7 +698,7 @@ static struct snd_soc_dai_driver gbaudio_dai[] = {
 		.capture = {
 			.stream_name = "I2S 0 Capture",
 			.rates = SNDRV_PCM_RATE_48000,
-			.formats = SNDRV_PCM_FORMAT_S16_LE,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
 			.rate_max = 48000,
 			.rate_min = 48000,
 			.channels_min = 1,
diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index 16f60256adb2..00848b84b022 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -219,7 +219,7 @@ static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
 
 	greybus_set_drvdata(bundle, gbmodule);
 	dai->id = 0;
-	dai->data_cport = connection->intf_cport_id;
+	dai->data_cport = cpu_to_le16(connection->intf_cport_id);
 	dai->connection = connection;
 	list_add(&dai->list, &gbmodule->data_list);
 
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 83b38ae8908c..56bf1a4f95ad 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -466,7 +466,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		goto exit;
 
 	/* update ucontrol */
-	if (gbvalue.value.integer_value[0] != val) {
+	if (gbvalue.value.integer_value[0] != cpu_to_le32(val)) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
 			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
@@ -689,7 +689,7 @@ static int gbaudio_tplg_create_kcontrol(struct gbaudio_module_info *gb,
 				return -ENOMEM;
 			ctldata->ctl_id = ctl->id;
 			ctldata->data_cport = le16_to_cpu(ctl->data_cport);
-			ctldata->access = ctl->access;
+			ctldata->access = le32_to_cpu(ctl->access);
 			ctldata->vcount = ctl->count_values;
 			ctldata->info = &ctl->info;
 			*kctl = (struct snd_kcontrol_new)
@@ -744,10 +744,10 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 		return ret;
 	}
 
-	ucontrol->value.enumerated.item[0] = gbvalue.value.enumerated_item[0];
+	ucontrol->value.enumerated.item[0] = le32_to_cpu(gbvalue.value.enumerated_item[0]);
 	if (e->shift_l != e->shift_r)
 		ucontrol->value.enumerated.item[1] =
-			gbvalue.value.enumerated_item[1];
+			le32_to_cpu(gbvalue.value.enumerated_item[1]);
 
 	return 0;
 }
@@ -801,10 +801,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	mask = e->mask << e->shift_l;
 
 	if (gbvalue.value.enumerated_item[0] !=
-	    ucontrol->value.enumerated.item[0]) {
+	    cpu_to_le32(ucontrol->value.enumerated.item[0])) {
 		change = 1;
 		gbvalue.value.enumerated_item[0] =
-			ucontrol->value.enumerated.item[0];
+			cpu_to_le32(ucontrol->value.enumerated.item[0]);
 	}
 
 	if (e->shift_l != e->shift_r) {
@@ -813,10 +813,10 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
 		mask |= e->mask << e->shift_r;
 		if (gbvalue.value.enumerated_item[1] !=
-		    ucontrol->value.enumerated.item[1]) {
+		    cpu_to_le32(ucontrol->value.enumerated.item[1])) {
 			change = 1;
 			gbvalue.value.enumerated_item[1] =
-				ucontrol->value.enumerated.item[1];
+				cpu_to_le32(ucontrol->value.enumerated.item[1]);
 		}
 	}
 
@@ -887,7 +887,7 @@ static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
 		return -ENOMEM;
 	ctldata->ctl_id = ctl->id;
 	ctldata->data_cport = le16_to_cpu(ctl->data_cport);
-	ctldata->access = ctl->access;
+	ctldata->access = le32_to_cpu(ctl->access);
 	ctldata->vcount = ctl->count_values;
 	ctldata->info = &ctl->info;
 	*kctl = (struct snd_kcontrol_new)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
