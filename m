Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E158369F3F
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A3B460B51;
	Sat, 24 Apr 2021 06:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gPffqU3GLE1O; Sat, 24 Apr 2021 06:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E83656072C;
	Sat, 24 Apr 2021 06:46:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 131861BF976
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7ED184050D
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pP-v4H437PJl for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAE034184E
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 235B661582;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=P8ySBvxIssOsYGuosUcRi8p/mrvcDEnJfSep5KVO8S8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VKO9//nAW4HuRE83veUq4t2sAUiO1ZD6GT+WtlCJbxh2Pwmt4Emh2dCEsdBFxi3lX
 9Lq9YL7J3aiCAjPuUPqWUDIDMeLTI4VtsTZc3DRGu1CmGqlm4xfODLYLEHgi3Vlog3
 0Nh3yuO5UD7MUqDYXHEmpWSOY+QHCbwQMj67QUR2uCIhuLAYpSpvZyWukopDhnyPcd
 D6d+acRK+Nyazme5Y8Fc0oSAqKz8Bob/prMSZImAZJx3aoAc4/5T0nciIK/hReYzOa
 zA/kFa8s5PPxu5HZ945P5f8JFPYIni3mFsLBOxzwjB2p/KQCDtUNECNEeTSVISwnie
 M/9oehEWrRVwA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeU-Aw; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 16/78] staging: media: cedrus_video: use
 pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:26 +0200
Message-Id: <58a0e35f0da9e7c25dea9088a439a77c6a448626.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
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
