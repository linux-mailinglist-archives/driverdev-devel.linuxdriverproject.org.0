Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9CE117E16
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 04:15:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20E478788C;
	Tue, 10 Dec 2019 03:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K6avy9AvX8Mn; Tue, 10 Dec 2019 03:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07E7987881;
	Tue, 10 Dec 2019 03:15:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 985851BF995
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 03:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8FD5687D89
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 03:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJ6E1TKspZy0 for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 03:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BD9C87D05
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 03:15:45 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id q16so6663102plr.10
 for <devel@driverdev.osuosl.org>; Mon, 09 Dec 2019 19:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lf7Lv6WHD6eyJBTAis1s6gLEc0xY5Sw43153FEhgxHY=;
 b=UlD66aZIOc19ZMVj8QYV3fX/ai5uFQ8LKhkdKHZXDBcoLNMKGficgmJVcQJ+ltNkkT
 G74hEQFVbnD9CtFpMJ01wDVtH1diWO2KVLfTPZo3KDG/DPoov/AEwX1GlR7XAsUfdMmh
 8C/jq9+2T8P1AYVlWyBsia739jJWAsP3MhJRcvmifa85lN8Ke1RWg1AWyJi/kaBfdPif
 7CXNW0Xii82zXcxeoIxcqI8Z2G66ATSr4nmQNvDWf5Gb2j3dfyvrPmbAtS9g7zApBFRq
 V6dDhc42VgAKAoTPosgBRdbFWzYTKttjOTUjWvg368hg7UVsVj624kKrpGpEFeBhSd38
 /Mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lf7Lv6WHD6eyJBTAis1s6gLEc0xY5Sw43153FEhgxHY=;
 b=JNVzTdlWFjMTquVhZcTZAUPJ0cxgq513D3RqpiNb6stlo0tzR5ChXp1eRmZ+kd9Bov
 UB+BOcCyWpuCqcGJtzO7Q8I/wKK+Ymx8xe/F0dNKXlCGUKWsbhCF6iTplPQWJ5baY62O
 BXVrZ0O3Rcyj7I25Jb5VANYwZLTj2CIUx5Sa/FMcLQBiAzxfgq1SkC5VHGWYujmP+pZJ
 duSqYilHcUizrP8tUgxYsLSyOYN4BkFGTRcl8g0KcrgLdr9MWllnyYsq8JG/4jhVrlr5
 jcpF2tjJNdbbHOBkU2HXIGVsKagU7jY9drj2OqMuUDOK0sYd0hQmMegn9sSu+If/NGme
 eA5Q==
X-Gm-Message-State: APjAAAVwqnFO5LTxb4KpF/2Wvr13LOYkxymqBQqkSriS5sqw0mhRAxF/
 JTSOTbNSbGlpLlln+NLWzs4=
X-Google-Smtp-Source: APXvYqw6mz5BYHxyl3UuHtCTak44jFFwX9tNEgwxnu+7tW4HubuglsACfHAh2B9Jbg005M+aViqFzQ==
X-Received: by 2002:a17:902:7c0a:: with SMTP id
 x10mr33699831pll.168.1575947744695; 
 Mon, 09 Dec 2019 19:15:44 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id i127sm942717pfe.54.2019.12.09.19.15.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 19:15:43 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] media: allegro: add the missed check for v4l2_m2m_ctx_init
Date: Tue, 10 Dec 2019 11:15:32 +0800
Message-Id: <20191210031532.18603-1-hslester96@gmail.com>
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
Changes in v2:
  - Fix the use-after-free in v1.

 drivers/staging/media/allegro-dvt/allegro-core.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 6f0cd0784786..66736beb67af 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2270,6 +2270,7 @@ static int allegro_open(struct file *file)
 	struct allegro_channel *channel = NULL;
 	struct v4l2_ctrl_handler *handler;
 	u64 mask;
+	int ret;
 
 	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 	if (!channel)
@@ -2341,6 +2342,14 @@ static int allegro_open(struct file *file)
 	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
 						allegro_queue_init);
 
+	if (IS_ERR(channel->fh.m2m_ctx)) {
+		ret = PTR_ERR(channel->fh.m2m_ctx);
+		v4l2_fh_del(&channel->fh);
+		v4l2_fh_exit(&channel->fh);
+		kfree(channel);
+		return ret;
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
