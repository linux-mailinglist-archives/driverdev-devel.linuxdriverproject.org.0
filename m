Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6271D369F26
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2C0D4050D;
	Sat, 24 Apr 2021 06:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYYGUubHamBL; Sat, 24 Apr 2021 06:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 115B341852;
	Sat, 24 Apr 2021 06:45:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36D2B1BF96B
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AD1A41857
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GXnpMFmObdR for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84E0440359
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1EF5B61581;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=MOd3YN2iujeWfGs9BuWAFWWI6F9dHQCi3uqQZM46wqk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UXoy4Z/7ZCyLyH/yxUfWN+kckMgoPnt7Ekj4coXxi65oKnGaUXP+LXufCT5XAfgWM
 J+RS3GuV6AQBcjIIQi88AJA+TvGBBtQ8ml4uGBL+afchY2j13EpCg0BFrY+NnAx0WR
 cNEP9vIBOQaJPWyvn+ZIHTsKDqkLjNmcQWGumrZ0GYsT4Q8q507QNQCwK1G4+4PEps
 4kvnPFXHHi+Qc9uKzLoefBa9PRyWDAuDUXTQvwebJzOiQKPZQ5HRFGkg4nz06bnt/Q
 slFaqRKNuOW45p7E4NsFkw1j2/OH6Ae2sfU5xl0dQCHJDqkjT4X9+YoelVxX7iWk4p
 NRNDPdyHCuNFA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeL-87; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:23 +0200
Message-Id: <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
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

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 595e82a82728..3147dcbebeb9 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -155,7 +155,7 @@ static void device_run(void *priv)
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
-	ret = pm_runtime_get_sync(ctx->dev->dev);
+	ret = pm_runtime_resume_and_get(ctx->dev->dev);
 	if (ret < 0)
 		goto err_cancel_job;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
