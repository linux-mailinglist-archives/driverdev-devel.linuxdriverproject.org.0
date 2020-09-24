Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 872F6276E87
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 12:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1A7186A51;
	Thu, 24 Sep 2020 10:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RdnyOVCOUaIv; Thu, 24 Sep 2020 10:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FE4886A33;
	Thu, 24 Sep 2020 10:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F02841BF2C0
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 10:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBBFA86B47
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 10:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDDfPMKMQqcp for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 10:20:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A783886B18
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 10:20:56 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d13so1632922pgl.6
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 03:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zm8OOlfP7iSN8Z5QEpTuGr8Ee4ut7XyUwrYhe0zYYtU=;
 b=fTFAprBBug9rHfk2WN6RzGWwlchqNO3GsCw1+qad1ydwkFtdunbM6LjrJrcZIP+WEz
 U7GBnE8ywP9tqj08t44dj++6nZqDIy42Er2JpiA7E/SzSEiJCLwaPzNRhEBK0wgbTxjH
 Zul+rnwCDFHFX7khle3dGiEjIK56b5I+eiLCnaDtb87xAhbfb94Jy2HKAKB0kUbALGa4
 kbMGPgZPv3jiYSQJ/L7gNpNPF+D8C75+xtIkbtCxePf6M+POtM5in1w3owqESCWzYaqM
 Z9VkeOs1hXKqNTmRjLg4Gwl4r3H1pzHAr6DHkAqy4lLtfe3OelaGw4ABmBz2Li0WirxP
 vt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zm8OOlfP7iSN8Z5QEpTuGr8Ee4ut7XyUwrYhe0zYYtU=;
 b=hIpcLghTvzKY35oCRk2hHqy4bTVKs/JslmZx1GM6FZ8664g+76OONYEDoEtfzMoKh7
 sJrKf7RQHHX6mbhUJbUMvjUN5AnNGYiuIbS55TVWI8DJKmYIemQBQaA3clrNV1ssv0OA
 9VTzEXCwSeq50ov18sMd7FXTnO///fTewm0cuyLCBd6ylCgTO07ysYxbmYiB87XGrBgy
 4vO5y2xO7G08TO59p7C+mc+ZOURXyxE1SuzFW+hUPM7+bxBzq9nkxa/0hhhBcnLgqhX+
 3JZr9tSwmcAOnUXVuoawGlGATOZVk05xQh1Srlmpk7uX5xh9rWk9+Z9nHgUglucojb6F
 YAqw==
X-Gm-Message-State: AOAM5325kutmfIQnMOM/25ctoK6GSU2e4JLYG43ghHp8hkEfViHJyhbX
 OYgy4q+SV/ZrC0rDNNBJbGw3YoYflPE+AVTe
X-Google-Smtp-Source: ABdhPJy0R9nsCIkgy+cT/BvPRyn00F2XAD27I58X5YB7kjJ7M5zzUhxgSoiCipTGlvIRf2jylwyqNg==
X-Received: by 2002:aa7:81d5:0:b029:142:2501:39fa with SMTP id
 c21-20020aa781d50000b0290142250139famr3950860pfn.73.1600942856051; 
 Thu, 24 Sep 2020 03:20:56 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id b2sm2505030pfp.3.2020.09.24.03.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Sep 2020 03:20:55 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/3] staging: greybus: codecs: use SNDRV_PCM_FMTBIT_S16_LE for
 format bitmask
Date: Thu, 24 Sep 2020 18:20:38 +0800
Message-Id: <20200924102039.43895-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924102039.43895-1-coiby.xu@gmail.com>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
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

snd_soc_pcm_stream.formats should use the bitmask SNDRV_PCM_FMTBIT_*
instead of the sequential integers SNDRV_PCM_FORMAT_* as explained by
commit e712bfca1ac1f63f622f87c2f33b57608f2a4d19
("ASoC: codecs: use SNDRV_PCM_FMTBIT_* for format bitmask").

Found by sparse,

$ make C=2 drivers/staging/greybus/
drivers/staging/greybus/audio_codec.c:691:36: warning: incorrect type in initializer (different base types)
drivers/staging/greybus/audio_codec.c:691:36:    expected unsigned long long [usertype] formats
drivers/staging/greybus/audio_codec.c:691:36:    got restricted snd_pcm_format_t [usertype]
drivers/staging/greybus/audio_codec.c:701:36: warning: incorrect type in initializer (different base types)
drivers/staging/greybus/audio_codec.c:701:36:    expected unsigned long long [usertype] formats
drivers/staging/greybus/audio_codec.c:701:36:    got restricted snd_pcm_format_t [usertype]

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/greybus/audio_codec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
