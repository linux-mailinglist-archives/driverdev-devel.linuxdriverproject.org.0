Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9F4205580
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E88088E49;
	Tue, 23 Jun 2020 15:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYTctNDu+rFP; Tue, 23 Jun 2020 15:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC72B88280;
	Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F6D01BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A343882CE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CU0PnGw3f+1O
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D91D888280
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924859; x=1624460859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=EEEpld0iM8dJSV4ffGQu5ReS4KB0gVI4WZduHJO9ux0=;
 b=yDPn3NdHQKLUNyDEMGbATGJrlf4puC/d4jbkb5fSbwXbf8gITxorWiwS
 C36l2+/3PE8zDgFcmLgrbI2Ks7aRVldvur4Y4fjchg/CGp/SAGTOVNYh3
 insFbJVwNqajWjxt8dqjEPF7JGABD54CuuGEA7wLjgSoslaaJQVDuZiGd
 V+flm8xX2kSX25dUwZzcpBUVfwxY6rk3tZqVbuTEbT17TnBg8Y3R05w5Q
 r1SwD8Sf1QGJb8EboHDIb79+K02MLCPEHiZCTGIUV8181bVU1ybXrYyBr
 dx0Gl6MWxIBQ8k5fMGbyahaLcSaiEa9dfDkpvLq/XZCQJpqG6f6hI2Alj Q==;
IronPort-SDR: lvrPZNtlrC82t8fnzsNL6e1oShTuRkx0IFGJlhQ/hBqI/A487AlsVjK5NDkfWSXRYH14aJ76vD
 Yja6/sj0SPPfJ27Hqih5l8weV6pJXSKHudl4fi6WIYKMnsNC23hlllaxqQVvF8V37oDN8r2t9s
 58cLi1oVjrPTtyWzSViXJGjGkd4gLOnfKL95V846D361DRbITXFurV874apu1579iYD+cYwtNZ
 i16L8mtK+U3q/teEyWo4upNqRQsASdyBPyunXMwhqT3eTR8FjR+kunf7KAPFz8lqtnRk1G5QrJ
 RLk=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="81233822"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:39 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:27 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:38 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] staging: most: sound: remove noisy log messages
Date: Tue, 23 Jun 2020 17:07:31 +0200
Message-ID: <1592924855-25569-2-git-send-email-christian.gromm@microchip.com>
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

This patch removes unnecessary log messages to avoid noise
in the kernel log.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/sound/sound.c | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 1527f41..e6396d1 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -360,10 +360,8 @@ static int pcm_prepare(struct snd_pcm_substream *substream)
 			channel->copy_fn = most_to_alsa_copy32;
 	}
 
-	if (!channel->copy_fn) {
-		pr_err("unsupported format\n");
+	if (!channel->copy_fn)
 		return -EINVAL;
-	}
 
 	channel->period_pos = 0;
 	channel->buffer_pos = 0;
@@ -396,7 +394,6 @@ static int pcm_trigger(struct snd_pcm_substream *substream, int cmd)
 		return 0;
 
 	default:
-		pr_info("%s(), invalid\n", __func__);
 		return -EINVAL;
 	}
 	return 0;
@@ -664,11 +661,8 @@ static int audio_disconnect_channel(struct most_interface *iface,
 	struct sound_adapter *adpt = iface->priv;
 
 	channel = get_channel(iface, channel_id);
-	if (!channel) {
-		pr_err("sound_disconnect_channel(), invalid channel %d\n",
-		       channel_id);
+	if (!channel)
 		return -EINVAL;
-	}
 
 	list_del(&channel->list);
 
@@ -692,11 +686,8 @@ static int audio_rx_completion(struct mbo *mbo)
 	struct channel *channel = get_channel(mbo->ifp, mbo->hdm_channel_id);
 	bool period_elapsed = false;
 
-	if (!channel) {
-		pr_err("sound_rx_completion(), invalid channel %d\n",
-		       mbo->hdm_channel_id);
+	if (!channel)
 		return -EINVAL;
-	}
 
 	if (channel->is_stream_running)
 		period_elapsed = copy_data(channel, mbo);
@@ -724,14 +715,10 @@ static int audio_tx_completion(struct most_interface *iface, int channel_id)
 {
 	struct channel *channel = get_channel(iface, channel_id);
 
-	if (!channel) {
-		pr_err("sound_tx_completion(), invalid channel %d\n",
-		       channel_id);
+	if (!channel)
 		return -EINVAL;
-	}
 
 	wake_up_interruptible(&channel->playback_waitq);
-
 	return 0;
 }
 
@@ -752,8 +739,6 @@ static int __init audio_init(void)
 {
 	int ret;
 
-	pr_info("init()\n");
-
 	INIT_LIST_HEAD(&adpt_list);
 
 	ret = most_register_component(&comp);
@@ -770,7 +755,6 @@ static int __init audio_init(void)
 
 static void __exit audio_exit(void)
 {
-	pr_info("exit()\n");
 	most_deregister_configfs_subsys(&comp);
 	most_deregister_component(&comp);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
