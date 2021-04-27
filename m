Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D2D36C35B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C13B3405C6;
	Tue, 27 Apr 2021 10:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AG3gUlF3N-k5; Tue, 27 Apr 2021 10:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EED06405BC;
	Tue, 27 Apr 2021 10:28:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C31B1C116E
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E68D840466
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id neVORBjCH0sK for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7045D40468
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:27:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 735A06140E;
 Tue, 27 Apr 2021 10:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619519236;
 bh=9XhzsT7qorzb0O8m+AZfDrHyIqnxWFrm1sswMUzcdRI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tf914diWBrl8TDvXMl5MLXGnXhoS7XUaWw5QGfh55jhiWLbSpRdpvTzlw8J5UysaU
 jBsXLJJNXnvdzEzd5UuC4JNMdgz4Apn3uggzXUulqA7iTvZjqMwLrpDUy+UTJpIQhv
 CJat0sLmS/XVxjPR6B8gwIlB9aLieQI8PheQt35mTD0a1cGmLmk4t8ULtrwmgoC5IM
 L2Kld2gSrXRUa4stHtOpUh71/ja/dRGVRGLemrB7h8mI4q9pGNcLH5eAlrasCDTiqe
 h6f3S7+apWzvZimwh2HHitnK1E4i7y2E1fPmelY7kH7j9cnMhxgMb1CmXxl63Q928Q
 l8vs9Z0HYh9ig==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKvz-000o32-Tr; Tue, 27 Apr 2021 12:27:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
Date: Tue, 27 Apr 2021 12:27:09 +0200
Message-Id: <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619519080.git.mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Despite other *_get()/*_put() functions, where usage count is
incremented only if not errors, the pm_runtime_get_sync() has
a different behavior, incrementing the counter *even* on
errors.

That's an error prone behavior, as people often forget to
decrement the usage counter.

However, the hantro driver depends on this behavior, as it
will decrement the usage_count unconditionally at the m2m
job finish time, which makes sense.

So, intead of using the pm_runtime_resume_and_get() that
would decrement the counter on error, keep the current
API, but add a documentation explaining the rationale for
keep using pm_runtime_get_sync().

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..96f940c1c85c 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -155,6 +155,13 @@ static void device_run(void *priv)
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
+
+	/*
+	 * The pm_runtime_get_sync() will increment dev->power.usage_count,
+	 * even on errors. That's the expected behavior here, since the
+	 * hantro_job_finish() function at the error handling code
+	 * will internally call pm_runtime_put_autosuspend().
+	 */
 	ret = pm_runtime_get_sync(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
