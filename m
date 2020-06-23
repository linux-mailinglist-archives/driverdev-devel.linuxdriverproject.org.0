Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 222F3205584
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A2FE88EE5;
	Tue, 23 Jun 2020 15:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QIlo7ZbQewB6; Tue, 23 Jun 2020 15:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D26D88E4E;
	Tue, 23 Jun 2020 15:07:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0969C1BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06893896B5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DH805WS+5Ynj
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5979F896AF
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924863; x=1624460863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=fA0e+6zkM5uM0pTDaGzW8uzxsS4L3Ag9PwEP9nno9Ts=;
 b=H83bCJHrP8OtZB0zu0cvWb/BBJ7iIlX6MO7+XYgrze9x/M/CUZ+clPeF
 FQDk57FafaWPfzuX421D9D9ZgGbeAV8+kfHhFVqlGzofzztsOLVmB+lx6
 64hGfR00trIqmnGzCudsSN6Vwjk3M1sVXAcEz53GenPIOs71gpGMsAxml
 DMgGgWysEWmjsrM2c3NKkCK64d6xyouCu22X9TkJF8K2yK9x3dgz1v22E
 p5o0UPmv0OUJfOjjhHep/gPQWff1YBB3F02jc+UL9XYvp7CcAm818CJok
 SZD3tFgad6CKo7euY9mDQA3EADwuYiy0+3tmYZ6ZFGEnkwK4fieaIohQ3 g==;
IronPort-SDR: 34m7V7gUiUJ4tLDjWnZJ3OloYGmcmJ5QUILGulA9PKjqhcLc5BmR95uQWsL9t18KV6ZuSdIVWp
 dRo4j9qQA6n1FNdDqjXxzLxxeMXQ4hofL9JpuFB/a2ZpuzOIPJJzrdpcv3/Ov1oPmgF+CV8lWS
 DNVVJEhf/VWCils0D2q7GXOcKKT4rNmGF+FdjFhe/FWNkPHqefrByOdYgj/GrdE1IUn6PbL65g
 fCVfBa4eucBb+Oqy2KfZcMUZAZO8iz1tn0glYxIHDxpld1uRDQ5Nkbyom5vGyCl6g3ybsr7ca9
 JWM=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="77572786"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:31 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:41 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] staging: most: sound: fix white spaces
Date: Tue, 23 Jun 2020 17:07:34 +0200
Message-ID: <1592924855-25569-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
References: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes unnecessary empty lines.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/sound/sound.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 467faa1..7c56cdb 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -50,10 +50,8 @@ struct channel {
 	unsigned int period_pos;
 	unsigned int buffer_pos;
 	bool is_stream_running;
-
 	struct task_struct *playback_task;
 	wait_queue_head_t playback_waitq;
-
 	void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
 };
 
@@ -176,7 +174,6 @@ static struct channel *get_channel(struct most_interface *iface,
 		if ((channel->iface == iface) && (channel->id == channel_id))
 			return channel;
 	}
-
 	return NULL;
 }
 
@@ -220,7 +217,6 @@ static bool copy_data(struct channel *channel, struct mbo *mbo)
 		channel->period_pos -= runtime->period_size;
 		return true;
 	}
-
 	return false;
 }
 
@@ -260,7 +256,6 @@ static int playback_thread(void *data)
 		if (period_elapsed)
 			snd_pcm_period_elapsed(channel->substream);
 	}
-
 	return 0;
 }
 
@@ -320,7 +315,6 @@ static int pcm_close(struct snd_pcm_substream *substream)
 	if (channel->cfg->direction == MOST_CH_TX)
 		kthread_stop(channel->playback_task);
 	most_stop_channel(channel->iface, channel->id, &comp);
-
 	return 0;
 }
 
@@ -364,10 +358,8 @@ static int pcm_prepare(struct snd_pcm_substream *substream)
 
 	if (!channel->copy_fn)
 		return -EINVAL;
-
 	channel->period_pos = 0;
 	channel->buffer_pos = 0;
-
 	return 0;
 }
 
@@ -441,7 +433,6 @@ static int split_arg_list(char *buf, u16 *ch_num, char **sample_res)
 	*sample_res = strsep(&buf, ".\n");
 	if (!*sample_res)
 		goto err;
-
 	return 0;
 
 err:
@@ -619,7 +610,6 @@ static int audio_probe_channel(struct most_interface *iface, int channel_id,
 	strscpy(pcm->name, device_name, sizeof(pcm->name));
 	snd_pcm_set_ops(pcm, direction, &pcm_ops);
 	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_VMALLOC, NULL, 0, 0);
-
 	return 0;
 
 err_free_adpt:
@@ -690,15 +680,11 @@ static int audio_rx_completion(struct mbo *mbo)
 
 	if (!channel)
 		return -EINVAL;
-
 	if (channel->is_stream_running)
 		period_elapsed = copy_data(channel, mbo);
-
 	most_put_mbo(mbo);
-
 	if (period_elapsed)
 		snd_pcm_period_elapsed(channel->substream);
-
 	return 0;
 }
 
@@ -753,7 +739,6 @@ static int __init audio_init(void)
 		pr_err("Failed to register %s configfs subsys\n", comp.name);
 		most_deregister_component(&comp);
 	}
-
 	return ret;
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
