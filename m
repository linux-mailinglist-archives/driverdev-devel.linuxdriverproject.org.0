Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5DC1168BC
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 09:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FC6E8768C;
	Mon,  9 Dec 2019 08:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lga3qzIo17RS; Mon,  9 Dec 2019 08:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 892FE8757D;
	Mon,  9 Dec 2019 08:58:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E84A1BF20D
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 08:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B40286502
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 08:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NecA1TQGWcvR for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 08:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D460985FC1
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 08:58:19 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id x185so6872218pfc.5
 for <devel@driverdev.osuosl.org>; Mon, 09 Dec 2019 00:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=quNuOEA5nR90xmqWledAif7nMZZ8pn2xX9YiOvl0uw0=;
 b=fo27XehCDDbswYaVMrVS3nFC5fQNhbJvjBxrxywhppJb1Zx38ogCnq4fjMo8KORfeJ
 h8NFbK7iYONX1EbBDib/Jtt0rg7xRGJ2OaQtXkV9+dJ/SQjYAG02K/Gmv+IYLW2vlkky
 QJbidaEb+oNlc//YsQ6fMZGWdpPvFky7dXVhEpTpIyZLmnDDcOdgHr307GzMq78GiFuT
 e0KhZpanYNHBejQaYYzMp+cULfoE2ii15zS1R3qb/vTQ6U9/3u8TM0cKMjQsqwxILm8E
 FvoWdQPP611RPWjDdcJzy1j4zSx+QD2bAV/tfB1hkx+ebyas5LApdiofRK2vQ7JQ8usg
 TnSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=quNuOEA5nR90xmqWledAif7nMZZ8pn2xX9YiOvl0uw0=;
 b=pkvK09AIzsrD7UZGkWjKRlTxdn9IUNlUv7iFNX9YazXT1iPh25RW3OmEIqT1Dseqkh
 Jvz6zxOfqqwFBKqk0FJS5pBK7TmACf4bp7Yh/iCq9/qYNhaImqgy1WopeoBftba6Z/WB
 wlzAm3gfVJtue8Sj0nTn+qAW8k4jtu2lZqu0mSpajiqNy9+yVxghEOzL8krghS3LPd75
 CXm/EGaRoIlAviuW1K9h1xht+wA+FkwSzZd3p7fAV/fkxBLIAuN0GFCmg4zkyDBAz94d
 68NUqnQIRD2sxkgbjy0sa+7I6XqUAS14mlniQoZU1nJ4gkzX5NGD8nBA/eCvou86NrmE
 ya1A==
X-Gm-Message-State: APjAAAVP/7QaO1eD43MsUKSvzYHCADHCE9zPuq041MQWFcGcCHrdaojc
 w1bOJ8XRSjjH6WMm4xTTKyI=
X-Google-Smtp-Source: APXvYqzbq2tEfloswSTy+xvQ5tNqSUT2de/+TYI91+6etQ4PkAsLeGZFrDwv+JrtVlf0dyvHnNxnzg==
X-Received: by 2002:a63:d041:: with SMTP id s1mr17863747pgi.363.1575881899517; 
 Mon, 09 Dec 2019 00:58:19 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id m13sm23596045pga.70.2019.12.09.00.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:58:18 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: allegro: add the missed check for v4l2_m2m_ctx_init
Date: Mon,  9 Dec 2019 16:58:07 +0800
Message-Id: <20191209085807.16126-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
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
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

allegro_open() misses a check for v4l2_m2m_ctx_init().
Add a check and error handling code to fix it.

Fixes: f20387dfd065 ("media: allegro: add Allegro DVT video IP core driver")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 6f0cd0784786..5f1d454b41bb 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2341,6 +2341,13 @@ static int allegro_open(struct file *file)
 	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
 						allegro_queue_init);
 
+	if (IS_ERR(channel->fh.m2m_ctx)) {
+		v4l2_fh_del(&channel->fh);
+		v4l2_fh_exit(&channel->fh);
+		kfree(channel);
+		return PTR_ERR(channel->fh.m2m_ctx);
+	}
+
 	return 0;
 }
 
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
