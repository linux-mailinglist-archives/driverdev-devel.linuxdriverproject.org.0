Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6E314FC1
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 14:06:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 633088651A;
	Tue,  9 Feb 2021 13:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ob-jmP5rZ5pd; Tue,  9 Feb 2021 13:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C3B186433;
	Tue,  9 Feb 2021 13:06:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17B911BF376
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 147B3872BD
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 13:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UWXtCV0Yhpci for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 13:06:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41467871F0
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 13:06:48 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id b8so9697721plh.12
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 05:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZxg6dXXFoEHvIAudV0HbB2Heq7jrncVjx+BrvchARk=;
 b=Z/P072YoJXe1w1sSUcH7ZxBpuuwu9ACdPIfwahPk/+OFBkNAUHJYN9xkGRrheQayNU
 LBe1U9y6YbmNjAJPFU77CvjCIY9fa3ElhjIEFmhYuHlXUowhP5zde32rJK2Mz6MV1Yjm
 Lt4xCsghaWFMB/WeAl0F47l+Vueqb0Yt90+vTslniMQHgC4ytBavWahVEm3HOKmL3LNj
 Y4rs/qQFRX/j6LiVqw38uGx04ynKOdTPZadtUNKcQk3y+71Dt+cO7pa8+++D0/a5TRfh
 dmpaGbVevn6EkRs9GlTGoKzr7OHsElZNxbA/FWh+Rgnb650itwOY9Mc94SslnEBT80Dm
 DWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZxg6dXXFoEHvIAudV0HbB2Heq7jrncVjx+BrvchARk=;
 b=OPYgZ2ezMrSrz68BoLhE3tRIgbag8vXA8ygrNXkxDq2EhDbYhz3VlCiuq0Y3xqqmdB
 vGxPpAzEmOYAc4vY+NEIkDBLF17HWzQO3iz3aKVGfay57yNeMTI35WQyypEwQc6lud/z
 IgL35YUlCXvytssDBcZkgr1HImjgK85KLI2krRIrcFt4wU3TKG3FmjIm7UW6DKIqLKzB
 7X7DOWWBGKm1AoSMu9Esbn7gUbaPa/19US6u3BlD2oGXb9wCXWfPQUEc/vdpJZEzv8Yf
 ONM5jW5gx54hGG7+FQNdzPWJa5J9cCw1bjVu/tk5/tO9CZcKVMYeMRPwh/GXnis+GJ4z
 bx4Q==
X-Gm-Message-State: AOAM532RkRl9E30DF6XnZj2ajeF9LM3l9wQOXR44HBhc6e3iXgt61uzh
 vz9GrSkS37HAYEeIbTJFFQs=
X-Google-Smtp-Source: ABdhPJxwBiUbfTgcM7M138rzeAj1HmC6j5l/qpheZ0IIsQ2eQ9ILuSeTuxtmr2elV2ujAVDXzrMz1A==
X-Received: by 2002:a17:90a:4209:: with SMTP id
 o9mr4113295pjg.75.1612876007592; 
 Tue, 09 Feb 2021 05:06:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:5c0a:f013:997:8903:ccd:f31])
 by smtp.gmail.com with ESMTPSA id 21sm21502224pfh.56.2021.02.09.05.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 05:06:47 -0800 (PST)
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Drivers: staging: most: sound: Fixed styling issue.
Date: Tue,  9 Feb 2021 18:36:19 +0530
Message-Id: <20210209130618.18508-1-mukulmehar02@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org, Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes a warning, of the line ending with a '(',
generated by checkpatch.pl.

Signed-off-by: Mukul Mehar <mukulmehar02@gmail.com>
---
 drivers/staging/most/sound/sound.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a59058042..4dd1bf95d1ce 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -228,12 +228,12 @@ static int playback_thread(void *data)
 		struct mbo *mbo = NULL;
 		bool period_elapsed = false;
 
-		wait_event_interruptible(
-			channel->playback_waitq,
-			kthread_should_stop() ||
-			(channel->is_stream_running &&
-			 (mbo = most_get_mbo(channel->iface, channel->id,
-					     &comp))));
+		wait_event_interruptible(channel->playback_waitq,
+					 kthread_should_stop() ||
+					 (channel->is_stream_running &&
+					 (mbo = most_get_mbo(channel->iface,
+					 channel->id,
+					 &comp))));
 		if (!mbo)
 			continue;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
