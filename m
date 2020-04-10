Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35FF1A3EF3
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 05:47:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 899B0881D9;
	Fri, 10 Apr 2020 03:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s77reri78WgH; Fri, 10 Apr 2020 03:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15C5B8777C;
	Fri, 10 Apr 2020 03:47:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25A1C1BF995
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22AD28692B
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9D_e4ljXT9l for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 03:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B60486652
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 03:47:18 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53659214DB;
 Fri, 10 Apr 2020 03:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490438;
 bh=5bhloHPnrNHAR4ad/nOF2Gk2uA2DsAT4mfeZhfveWNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t3L3/8rJ25Nu+T4KRXmM97IFNRT6DcEN4Gb6Ctrqf7LyUscPL14YbZsLAW0HmGYr9
 Z+bLLdBuoCREb/MVJnb8yf2qQpZfnaGYPgGdGwTcotnbqoI3Xq5OVL+3Sz4GvFpORL
 V9XuEZFPaBQbUsQNBQb/q0QSJehMBKQeupEFp5xQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 35/68] media: allegro: fix type of gop_length in
 channel_create message
Date: Thu,  9 Apr 2020 23:46:00 -0400
Message-Id: <20200410034634.7731-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Tretter <m.tretter@pengutronix.de>

[ Upstream commit 8277815349327b8e65226eb58ddb680f90c2c0c0 ]

The gop_length field is actually only u16 and there are two more u8
fields in the message:

- the number of consecutive b-frames
- frequency of golden frames

Fix the message and thus fix the configuration of the GOP length.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 3be41698df4c8..8d8d144f40ac2 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -393,7 +393,10 @@ struct mcu_msg_create_channel {
 	u32 freq_ird;
 	u32 freq_lt;
 	u32 gdr_mode;
-	u32 gop_length;
+	u16 gop_length;
+	u8 num_b;
+	u8 freq_golden_ref;
+
 	u32 unknown39;
 
 	u32 subframe_latency;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
