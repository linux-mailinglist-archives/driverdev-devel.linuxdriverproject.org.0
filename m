Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17685369F21
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D437B83CDB;
	Sat, 24 Apr 2021 06:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_oex3a12wt4; Sat, 24 Apr 2021 06:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E98D83CD0;
	Sat, 24 Apr 2021 06:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCFB71BF39E
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCA9083CD0
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZQzEnT1y2me for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60E4683C82
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DDD1261481;
 Sat, 24 Apr 2021 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246732;
 bh=Z69ehY7S6HpjbLMjJqStag1+c7JNJRTD4xVET17kLNs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WBeluuHPMoohV6kjXrt6232lvnQ1kN4ts7abU9qOxVGedDbsoVZUjVlSx9CyzK6he
 Yiun2LKC9gsmGZXQ7r3fYBgg0To3UQmQ8rl4yu4FcbytktdlfWtttfxdkuKW2zsrIH
 f0CGqlaey01b8FdGWH9TDAddwcEXlftj0t/Ipb371f0LY6bOc8TQrGShe1yV2OGRPi
 VhE/jWKWaRKQlCi4Szq8Y8jnua/fBZiZHFrwqO5OppoJHmvGALTUK/MTtQnYYRJZj4
 gzBKC3fZWy4qM5uz6TWHbJ7xF5aDneI93POB3PKIZSFr2mIDfmM+oHs1kWFE0SMVc4
 64uoUkHsBG9YA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeF-6F; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 11/78] staging: media: rkvdec: fix pm_runtime_get_sync() usage
 count
Date: Sat, 24 Apr 2021 08:44:21 +0200
Message-Id: <978ba3b7acceb858870c8029f761ae47ea59563d.1619191723.git.mchehab+huawei@kernel.org>
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
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The pm_runtime_get_sync() internally increments the
dev->power.usage_count without decrementing it, even on errors.
replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d821661d30f3..8c17615f3a7a 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
 	if (WARN_ON(!desc))
 		return;
 
-	ret = pm_runtime_get_sync(rkvdec->dev);
+	ret = pm_runtime_resume_and_get(rkvdec->dev);
 	if (ret < 0) {
 		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
 		return;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
