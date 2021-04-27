Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B0D36C281
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 684474045C;
	Tue, 27 Apr 2021 10:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vaERI0zxOWJ; Tue, 27 Apr 2021 10:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCF5240172;
	Tue, 27 Apr 2021 10:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5031BF2BA
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C73E40246
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLUBKQTxUf6D for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDD73402BB
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6AECA6140E;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=P8ySBvxIssOsYGuosUcRi8p/mrvcDEnJfSep5KVO8S8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eONmV9/Mm7lWd/FtO3g4WINxflJmJtpHA4XFXzVRMKKfXnwgMPS0ZH9uy+mCadeGT
 5QSjs7E/k4dNVQiEARQRV+kSDoxicT8oxEyt2F6E6r0zC30sPPs7hJncR+mzDYaK4K
 Xi6kseIxUJtpENi8mAnN9kYD+aj0msQWS6CXByKWHJVYCKVKJMGSMyNN8xoagrFhpe
 +9hw/9R2IbfXDmUz4bz6ZGtRRxxs8g7phPZipI9btpAMp9eHG6nHZGRoRAZsG6F53b
 jOsD2M+Z+er6R76BlY2N7x9vqtpaRTS91Nrz0UVyfW4cEmADsEirufNvvYEnrq9fFK
 YbIdlkb6tBtBA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiz-000j5k-5k; Tue, 27 Apr 2021 12:13:49 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 24/79] staging: media: cedrus_video: use
 pm_runtime_resume_and_get()
Date: Tue, 27 Apr 2021 12:12:51 +0200
Message-Id: <3c993a816dba970cf45d7d9ecbae8b13047ee18a.1619518193.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619518193.git.mchehab+huawei@kernel.org>
References: <cover.1619518193.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index b62eb8e84057..9ddd789d0b1f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -490,11 +490,9 @@ static int cedrus_start_streaming(struct vb2_queue *vq, unsigned int count)
 	}
 
 	if (V4L2_TYPE_IS_OUTPUT(vq->type)) {
-		ret = pm_runtime_get_sync(dev->dev);
-		if (ret < 0) {
-			pm_runtime_put_noidle(dev->dev);
+		ret = pm_runtime_resume_and_get(dev->dev);
+		if (ret < 0)
 			goto err_cleanup;
-		}
 
 		if (dev->dec_ops[ctx->current_codec]->start) {
 			ret = dev->dec_ops[ctx->current_codec]->start(ctx);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
