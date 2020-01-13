Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0AD138B8A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 07:00:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 07E802045A;
	Mon, 13 Jan 2020 06:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bv3mQG03iyqL; Mon, 13 Jan 2020 06:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F035F2043A;
	Mon, 13 Jan 2020 06:00:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6F9C1BF3EF
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 06:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B348086C8B
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 06:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UOynQTbTAFX for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 06:00:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3746E86A2E
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 06:00:07 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id az3so3381426plb.11
 for <devel@driverdev.osuosl.org>; Sun, 12 Jan 2020 22:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BZudNU1j/GxZrYgiqrSmCxqZu+3g41iMiIQCkxkhVAY=;
 b=H1bh6tmx268zowtgeJ2z3BDM7/Dc5ajaVde9nFJzlNrrToUQMQlpj5eUkGdvyqavrd
 W8yhGyjgcqMWC8QgQRCI6m0vvZKwmIM8eMkgYJiGAtr0X2zPVrxCiKsUqXDrSTm4dPE+
 0lV0v2SiP0/KybQJudeecXv2MHIF0XXC8z+aIbzguaYst4nPTu3F9w58ou67Qc7KPQgh
 f0XbHjz+7KRET83fUAQTd8vV7JW9Sq7sy/7/pvXwN/N1CHEuLnsx4F58Am5xcbTU+Ssn
 /vHs0Xam5LNkVGvBJJ6Ky76/gBKYsVb64eM/aZRisX8DpYnLDY0j297x1D83wN4SDESH
 PqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BZudNU1j/GxZrYgiqrSmCxqZu+3g41iMiIQCkxkhVAY=;
 b=U+YEn+wGyDWIHo4tsbx1qml9N+AuG1XYaiXfLhq8h4pMQeWErcTHZXQBhBj/VzgJHt
 kFhZFGvmb9kywOpsSL7DKsgFR6oCaZ5oTs4tejTNylGNsCDqkHoXHsbH2Lkmki86aPhr
 Wclw7IX0uzwmnjfoVrOVh5hpBLJ77+MuUTUFOPNx5S1zT6opvl/UNwb9eyEHooNmVikf
 YXbuYIU33B5dvI0n+x6flicnq+riEBD4LhLHxcz8zQ/Fhwffuhh9h1cOdesRIQ636J6Y
 8UkAPpNpcywmDuwEQ2kBZOmCFKOXZCa7F0Sa/La0OQ76WuiUnQmXmSgTPHLqZgM2tcii
 i6dg==
X-Gm-Message-State: APjAAAVoVBiZpK0I8edcFgcaJuSUxfWEYRELme3VjVVXkrsP8rJHkgC+
 S7yZsYA8HJHIWUUj2pM2m9A=
X-Google-Smtp-Source: APXvYqyhCJDT2p9yUG+p4vnlHW0qO1CJmu0Rv1esgppxvSv5rAQVvQCAD+ZHU3mFnj6W8b1RIhPu7w==
X-Received: by 2002:a17:90a:330f:: with SMTP id
 m15mr20053801pjb.24.1578895206878; 
 Sun, 12 Jan 2020 22:00:06 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u23sm12182518pfm.29.2020.01.12.22.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 22:00:06 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v3] media: allegro: add missed checks in allegro_open()
Date: Mon, 13 Jan 2020 13:59:51 +0800
Message-Id: <20200113055951.8718-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

allegro_open() misses checks for v4l2_m2m_ctx_init() and results of
v4l2_ctrl_new* calls.
Add checks and error handlers to fix the problems.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v3:
  - Make code cleaner.
  - Add a check for handler->error.

 .../staging/media/allegro-dvt/allegro-core.c  | 24 +++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 6f0cd0784786..e86001e42963 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2270,15 +2270,12 @@ static int allegro_open(struct file *file)
 	struct allegro_channel *channel = NULL;
 	struct v4l2_ctrl_handler *handler;
 	u64 mask;
+	int ret;
 
 	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 	if (!channel)
 		return -ENOMEM;
 
-	v4l2_fh_init(&channel->fh, vdev);
-	file->private_data = &channel->fh;
-	v4l2_fh_add(&channel->fh);
-
 	init_completion(&channel->completion);
 
 	channel->dev = dev;
@@ -2328,6 +2325,11 @@ static int allegro_open(struct file *file)
 			V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
 			1, 32,
 			1, 1);
+	if (handler->error != 0) {
+		ret = handler->error;
+		goto error;
+	}
+
 	channel->fh.ctrl_handler = handler;
 
 	channel->mcu_channel_id = -1;
@@ -2341,7 +2343,21 @@ static int allegro_open(struct file *file)
 	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
 						allegro_queue_init);
 
+	if (IS_ERR(channel->fh.m2m_ctx)) {
+		ret = PTR_ERR(channel->fh.m2m_ctx);
+		goto error;
+	}
+
+	v4l2_fh_init(&channel->fh, vdev);
+	file->private_data = &channel->fh;
+	v4l2_fh_add(&channel->fh);
+
 	return 0;
+
+error:
+	v4l2_ctrl_handler_free(handler);
+	kfree(channel);
+	return ret;
 }
 
 static int allegro_release(struct file *file)
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
