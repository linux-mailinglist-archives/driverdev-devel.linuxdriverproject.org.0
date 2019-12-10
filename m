Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE0F118A87
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 15:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21D39876FC;
	Tue, 10 Dec 2019 14:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZeADiSCnsWcY; Tue, 10 Dec 2019 14:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA08686759;
	Tue, 10 Dec 2019 14:14:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28F071BF3AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 257102038B
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eaBy2qEpKWtZ for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 14:14:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 1996020341
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:14:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1362CAF77;
 Tue, 10 Dec 2019 14:14:05 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH for-5.6 3/4] staging: most: Drop superfluous ioctl PCM ops
Date: Tue, 10 Dec 2019 15:13:55 +0100
Message-Id: <20191210141356.18074-4-tiwai@suse.de>
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

PCM core deals the empty ioctl field now as default.
Let's kill the redundant lines.

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/most/sound/sound.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 7c212c0db980..1ccfcb8f78b9 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -423,7 +423,6 @@ static snd_pcm_uframes_t pcm_pointer(struct snd_pcm_substream *substream)
 static const struct snd_pcm_ops pcm_ops = {
 	.open       = pcm_open,
 	.close      = pcm_close,
-	.ioctl      = snd_pcm_lib_ioctl,
 	.prepare    = pcm_prepare,
 	.trigger    = pcm_trigger,
 	.pointer    = pcm_pointer,
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
