Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E84CF205581
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B7DB87650;
	Tue, 23 Jun 2020 15:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRrLTTfhgzpK; Tue, 23 Jun 2020 15:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24D4687646;
	Tue, 23 Jun 2020 15:07:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4B01BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97A29265F5
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhP4j5khtzJC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 250E622CB0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924862; x=1624460862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=XcyqNwuuPxGlJh6h+8Uk+TXiK1g0N2GqZz/9Q9mXsZI=;
 b=q2TutqGpv7eeyzRAAwSeuC4PXD6KRvPPKfl/GT8qpIEP92QGTKY/hMQS
 zN05WFeARfhwK93oaKVZo4Pm2eXICv6WuvAeyH08c3W0ZFBdqcZh2ixnC
 j7ZaTA96rGxJFZRMhFSXyrhwhdUlW6YoDfUJHingmGwy2WUhmVT3EyVOF
 xuvKorRPp14wr6Zlv/Xf6yE1ZIqNP5Tthd+BH52Y/IlineuY8KZOAM9rg
 Zl671rv7ssPKSX2AtKl6k+Zf4SWkTQGOFAnFlFINgRvmayiSN69kBQs0H
 7k2ezvh4i5IWmp3FBPDZxllC3QrSSuH+DXdiEtqHlQijhFSU8eZFw1b7g A==;
IronPort-SDR: 4s4Zot1C4x6ArXHENCynXG4PTjLMJrIc+q8/vrjQcYOMp9jxPdboOyHYQoQ6xNgeggkUaEjlAd
 5dcka8yql6K+dydBRTOC2Qkape8XkTXhRdO5Jx7hZQCCICTSQnR0I7efKJSnFVjrx1AkJ9BEuB
 L3hC1B9os2bMzHYwn+yqlSuh+zsCYsO5V3LKDo0FH/BdafWjtk4/XfKMajGO3zmSBXumDeTSm8
 wX0vXqQzOtiJ6oAcAhsletOR9E2xx2gwfMPixeeuJ66Fz/NBQ1E6soMRB2f+Us9MgbeCh1ySIv
 IvQ=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="79465024"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:29 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:40 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 3/5] staging: most: sound: fix return values
Date: Tue, 23 Jun 2020 17:07:33 +0200
Message-ID: <1592924855-25569-4-git-send-email-christian.gromm@microchip.com>
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

This patch returns the proper values when reporting an error
to the caller.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/sound/sound.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 80a8feb..467faa1 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -278,6 +278,7 @@ static int pcm_open(struct snd_pcm_substream *substream)
 	struct channel *channel = substream->private_data;
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct most_channel_config *cfg = channel->cfg;
+	int ret;
 
 	channel->substream = substream;
 
@@ -290,11 +291,12 @@ static int pcm_open(struct snd_pcm_substream *substream)
 		}
 	}
 
-	if (most_start_channel(channel->iface, channel->id, &comp)) {
+	ret = most_start_channel(channel->iface, channel->id, &comp);
+	if (ret) {
 		pr_err("most_start_channel() failed!\n");
 		if (cfg->direction == MOST_CH_TX)
 			kthread_stop(channel->playback_task);
-		return -EBUSY;
+		return ret;
 	}
 
 	runtime->hw = channel->pcm_hardware;
@@ -444,7 +446,7 @@ static int split_arg_list(char *buf, u16 *ch_num, char **sample_res)
 
 err:
 	pr_err("Bad PCM format\n");
-	return -EIO;
+	return -EINVAL;
 }
 
 static const struct sample_resolution_info {
@@ -469,7 +471,7 @@ static int audio_set_hw_params(struct snd_pcm_hardware *pcm_hw,
 			goto found;
 	}
 	pr_err("Unsupported PCM format\n");
-	return -EIO;
+	return -EINVAL;
 
 found:
 	if (!ch_num) {
@@ -580,7 +582,7 @@ static int audio_probe_channel(struct most_interface *iface, int channel_id,
 	if (get_channel(iface, channel_id)) {
 		pr_err("channel (%s:%d) is already linked\n",
 		       iface->description, channel_id);
-		return -EINVAL;
+		return -EEXIST;
 	}
 
 	if (cfg->direction == MOST_CH_TX) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
