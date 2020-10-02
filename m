Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3EC281F14
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Oct 2020 01:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F3BA86972;
	Fri,  2 Oct 2020 23:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nIPgoYTthxu; Fri,  2 Oct 2020 23:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ADDA868A8;
	Fri,  2 Oct 2020 23:31:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF7631BF59E
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A481E203BA
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0eSjsRLpgUe for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 23:31:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id D0AB320363
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 23:31:06 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id b17so1848937pji.1
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 16:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=39rkTJtXlFtQ5/5T04uloKyyaaDBj+PUdUyBnDF91SY=;
 b=Wo0WXvRXCTZCYAnRy54cVvMfWfk8J8vBHzs0KphLbfDr+ANdKqCO8PbXyYgaztabd/
 X5JHMAoHAsbDH1ngAJokOBDIUEB7XGS6j7o+xLsT1G4eq+ztQLAREKYFjJkrgGEkPp/B
 BREYOg2HKQvhI2UZzwinmqw9naFXFjdnWd2JsuYV5HeLcVWCA6hoic1HcdOo5TE4OQ/k
 MsZ8e6QbAQmbpLL7IkSwpVXV+woUz1dKyhd88cPJPTRY+jboG6UX4+cMn8RdPx4FLp4f
 BrQ2l5UUQgIcbWzhMJWqQlofUixgd+o9KsVwkwlvAgGrQZJ+V59fWrW5YmwzQkHj4nVS
 VwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=39rkTJtXlFtQ5/5T04uloKyyaaDBj+PUdUyBnDF91SY=;
 b=E4vl4QoFazXmHpkFvdj1v5fKBoy72MIrmaKT8oV+nmDOxzO0F45RIgTJedKo3undzf
 IkaQZG8cxWY8I6YF7jlg+Vg2oijXaNY7/DxyJUC+oAPh6soZCWQtO46WFfUU6wU11zLa
 nVplECavVrM76sWNmeA7IZSI4bP/XO7d00dqosWBg3AzQ+/qDburCwJAxPMqIYmR/mgb
 rP8a8GEMrYDeBud45V4rWOTaF6axwnVmuZfXXCKw301O9Pg8WBB7zrfq95DJLfseNmzQ
 BO5HZfTEFtFcgQrKqlx4+0xjpAjF54mVKFesZTynckX9OWBE2sOPYEOzQAv/ygp0z/VB
 WOTg==
X-Gm-Message-State: AOAM532ztfx5FpdybiBXijoodheEH+zCkwD2RnWcz3GbGPAA88uYR59I
 MWrrb9N/EXXmyIWS4ZSjZCGKXrO56L3rMqXO
X-Google-Smtp-Source: ABdhPJyUtQlg/rmFNBHDPU+1oFHbUZUbywYtOW1tMUg6dD64a2blGx0obpFn2zNJ9c452DW8VA8H0Q==
X-Received: by 2002:a17:90a:6685:: with SMTP id
 m5mr5010628pjj.235.1601681465996; 
 Fri, 02 Oct 2020 16:31:05 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 11sm2704492pja.8.2020.10.02.16.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 16:31:05 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: greybus: codecs: use SNDRV_PCM_FMTBIT_S16_LE
 for format bitmask
Date: Sat,  3 Oct 2020 07:30:55 +0800
Message-Id: <20201002233057.74462-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002233057.74462-1-coiby.xu@gmail.com>
References: <20201002233057.74462-1-coiby.xu@gmail.com>
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
 Alex Elder <elder@linaro.org>, open list <linux-kernel@vger.kernel.org>
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

Reviewed-by: Alex Elder <elder@linaro.org>
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
