Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2791A369F6D
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:47:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A62CD41857;
	Sat, 24 Apr 2021 06:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xfv0TuqZwF-5; Sat, 24 Apr 2021 06:47:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0E0A41856;
	Sat, 24 Apr 2021 06:47:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34CF91BF39E
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBDC941854
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5ITwgQzLzAa for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 173E241856
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D70361613;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=ilbYi39Wp/s1IHEjQb8NZRh7PLiRnT42XXdFX8lFSpw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l3foykFZ2MY43Kvt4KtXFCXyQ5CM7jCmtI5mmSAmnJujWdIuFKpWGSgTEvWmv4Lk9
 1jAphyDs7NXlaxxXBkPlUXd8ocPz9e1qGqQSiEM913QBFPR10AlOekFk4HlqWA5XRK
 BqUO8MrGp0FhwT4ipn84t0jyjSR+DUzkoYpe9iT+kUJWFUwnBD+H9EPzONRbb9Klh4
 9L96EDmjk4fMxSaY9e45dOcD9iyuZjnyZ0oLdBpt3oE4qaLi7k3blLU2UBKFVUAvt3
 2xT/anJ7dSxOTEquLyj/WMs2ES87SIaWdvYiDmp0VqzhzKaZPm/QR359ScUYA5Pah3
 rrcmik1TPxhzg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004Jed-Dz; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 19/78] staging: media: vi: use pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:29 +0200
Message-Id: <d15b484f48e09ae9df2abc53c02616dcbdb450c7.1619191723.git.mchehab+huawei@kernel.org>
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
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
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
 drivers/staging/media/tegra-video/vi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 7a09061cda57..1298740a9c6c 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -297,10 +297,9 @@ static int tegra_channel_start_streaming(struct vb2_queue *vq, u32 count)
 	struct tegra_vi_channel *chan = vb2_get_drv_priv(vq);
 	int ret;
 
-	ret = pm_runtime_get_sync(chan->vi->dev);
+	ret = pm_runtime_resume_and_get(chan->vi->dev);
 	if (ret < 0) {
 		dev_err(chan->vi->dev, "failed to get runtime PM: %d\n", ret);
-		pm_runtime_put_noidle(chan->vi->dev);
 		return ret;
 	}
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
