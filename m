Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A906D118A8B
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 15:14:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A7FA86276;
	Tue, 10 Dec 2019 14:14:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nwdel2xfuzWY; Tue, 10 Dec 2019 14:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7FA785F7D;
	Tue, 10 Dec 2019 14:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA5851BF3AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2A8186FBB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q8OeQN75Dwgd for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 14:14:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 295F685F8D
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:14:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E394AAF26;
 Tue, 10 Dec 2019 14:14:04 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH for-5.6 1/4] staging: most: Use managed buffer allocation
Date: Tue, 10 Dec 2019 15:13:53 +0100
Message-Id: <20191210141356.18074-2-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191210141356.18074-1-tiwai@suse.de>
References: <20191210141356.18074-1-tiwai@suse.de>
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
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up the driver with the new managed buffer allocation API.
Also remove the unnecessary checks of channels in hw_params callback
as this is guaranteed by the hw constraints in anyway.
After these cleanups, the hw_params and hw_free callbacks became
empty, hence dropped.

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/most/sound/sound.c | 44 +-------------------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 723d0bd1cc21..7c212c0db980 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -322,45 +322,6 @@ static int pcm_close(struct snd_pcm_substream *substream)
 	return 0;
 }
 
-/**
- * pcm_hw_params - implements hw_params callback function for PCM middle layer
- * @substream: sub-stream pointer
- * @hw_params: contains the hardware parameters set by the application
- *
- * This is called when the hardware parameters is set by the application, that
- * is, once when the buffer size, the period size, the format, etc. are defined
- * for the PCM substream. Many hardware setups should be done is this callback,
- * including the allocation of buffers.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_hw_params(struct snd_pcm_substream *substream,
-			 struct snd_pcm_hw_params *hw_params)
-{
-	struct channel *channel = substream->private_data;
-
-	if ((params_channels(hw_params) > channel->pcm_hardware.channels_max) ||
-	    (params_channels(hw_params) < channel->pcm_hardware.channels_min)) {
-		pr_err("Requested number of channels not supported.\n");
-		return -EINVAL;
-	}
-	return snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params));
-}
-
-/**
- * pcm_hw_free - implements hw_free callback function for PCM middle layer
- * @substream: substream pointer
- *
- * This is called to release the resources allocated via hw_params.
- * This function will be always called before the close callback is called.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_hw_free(struct snd_pcm_substream *substream)
-{
-	return snd_pcm_lib_free_pages(substream);
-}
-
 /**
  * pcm_prepare - implements prepare callback function for PCM middle layer
  * @substream: substream pointer
@@ -463,8 +424,6 @@ static const struct snd_pcm_ops pcm_ops = {
 	.open       = pcm_open,
 	.close      = pcm_close,
 	.ioctl      = snd_pcm_lib_ioctl,
-	.hw_params  = pcm_hw_params,
-	.hw_free    = pcm_hw_free,
 	.prepare    = pcm_prepare,
 	.trigger    = pcm_trigger,
 	.pointer    = pcm_pointer,
@@ -661,8 +620,7 @@ static int audio_probe_channel(struct most_interface *iface, int channel_id,
 	pcm->private_data = channel;
 	strscpy(pcm->name, device_name, sizeof(pcm->name));
 	snd_pcm_set_ops(pcm, direction, &pcm_ops);
-	snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_VMALLOC,
-					      NULL, 0, 0);
+	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_VMALLOC, NULL, 0, 0);
 
 	return 0;
 
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
