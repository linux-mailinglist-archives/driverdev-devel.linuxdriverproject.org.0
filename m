Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B2D3062A7
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 18:53:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B8F086090;
	Wed, 27 Jan 2021 17:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-sIArdQLa0I; Wed, 27 Jan 2021 17:53:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2965686099;
	Wed, 27 Jan 2021 17:53:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A37601BF392
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:53:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A01FB86088
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:53:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TufqqOWUn9SY for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 17:53:00 +0000 (UTC)
X-Greylist: delayed 00:08:53 by SQLgrey-1.7.6
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E67F386081
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 17:52:59 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4DQrZC1sm4zQlPB;
 Wed, 27 Jan 2021 18:44:03 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dylanvanassche.be;
 s=MBO0001; t=1611769441;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=BbL3vUcELfbaOwBw/4tXD2Y99BB4p9qaJZnpHQ13JIo=;
 b=k/omoxNgYrI3A/SBtOePZZUjnQu8bqO3U863H8NsLVsiTyQpi32x8jhaiHS2CxyYjtLcWT
 WrIzAru2KWc6tWGAIoHxuZfzjvdbchDCu8mjucaJ/EtKZWEz3Hz8TSEGqr9i3qHwSCRn+D
 SMMM/d8t/Ofje1wCNt3Y4zXDDENdG6ISIFjgvQw4anDRo7gdskTK9a92a4qlf8q+AgA/uJ
 4C1ZLu/JUMbDe4FLc8+2zIfopzlm3uOCEhSro77Q0ulqGzo0qUaHpBb4TVZmNbmQQC0Kzd
 iuFqoiLdoxfilb9/kbv9xxHzYRdnq6dHokch5mRu5UXdOLzOjFuprmlNHbsaqA==
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id 3_33cucYWK21; Wed, 27 Jan 2021 18:43:58 +0100 (CET)
From: Dylan Van Assche <me@dylanvanassche.be>
To: gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 nsaenzjulienne@suse.de, vkor@vkten.in, devel@driverdev.osuosl.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vc4_services: bcm2835-audio: Add
 SNDRV_PCM_INFO_BATCH flag
Date: Wed, 27 Jan 2021 18:43:48 +0100
Message-Id: <20210127174348.10192-1-me@dylanvanassche.be>
MIME-Version: 1.0
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -0.06 / 15.00 / 15.00
X-Rspamd-Queue-Id: D8A251848
X-Rspamd-UID: c4a93a
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
Cc: Dylan Van Assche <me@dylanvanassche.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Playing audio with PulseAudio and the bcm2835-pcm driver results
in distorted sound. Timer-based scheduling does not properly work
with bcm2835-pcm since configuring PulseAudio with tsched=0
avoids this problem.

Setting the SNDRV_PCM_INFO_BATCH flag prevents PulseAudio to use
timer-based scheduling by default. Settings this flag makes audio
works out of the box.

Based on: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7f2430cda819a9ecb1df5a0f3ef4f1c20db3f811

Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
---
Tested on my Raspberry Pi 3B+ with Kodi and postmarketOS.

 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index f783b632141b..1c200b923dfd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -12,7 +12,7 @@
 static const struct snd_pcm_hardware snd_bcm2835_playback_hw = {
 	.info = (SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_BLOCK_TRANSFER |
 		 SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
-		 SNDRV_PCM_INFO_SYNC_APPLPTR),
+		 SNDRV_PCM_INFO_SYNC_APPLPTR | SNDRV_PCM_INFO_BATCH),
 	.formats = SNDRV_PCM_FMTBIT_U8 | SNDRV_PCM_FMTBIT_S16_LE,
 	.rates = SNDRV_PCM_RATE_CONTINUOUS | SNDRV_PCM_RATE_8000_48000,
 	.rate_min = 8000,
@@ -29,7 +29,7 @@ static const struct snd_pcm_hardware snd_bcm2835_playback_hw = {
 static const struct snd_pcm_hardware snd_bcm2835_playback_spdif_hw = {
 	.info = (SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_BLOCK_TRANSFER |
 		 SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_MMAP_VALID |
-		 SNDRV_PCM_INFO_SYNC_APPLPTR),
+		 SNDRV_PCM_INFO_SYNC_APPLPTR | SNDRV_PCM_INFO_BATCH),
 	.formats = SNDRV_PCM_FMTBIT_S16_LE,
 	.rates = SNDRV_PCM_RATE_CONTINUOUS | SNDRV_PCM_RATE_44100 |
 	SNDRV_PCM_RATE_48000,
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
