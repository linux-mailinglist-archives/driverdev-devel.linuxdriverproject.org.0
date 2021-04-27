Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCFF36C285
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 12:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 158AE4058C;
	Tue, 27 Apr 2021 10:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dSmzPyac0TA; Tue, 27 Apr 2021 10:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C8CB4057F;
	Tue, 27 Apr 2021 10:15:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEF71BF2BA
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D25AE40246
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 10:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G0glza0xlq_w for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9786B401FD
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:13:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DE0E613DE;
 Tue, 27 Apr 2021 10:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619518431;
 bh=LvHrsFJn6JLbIexuKZaI+hIEIjqhrM13uG8Z/t+ytHI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MVqLR7mFtMTLO0mK1TyVv9e+yTmOBkTKp+10OaJB+E8GKGvWzwvNELM5c29euVRTA
 USlnGTJVTJc1qUs5eiLRzGraPsUzUVxRBRdZb3dj2QYodiUjT21ZyJ3XdxD0sYvdb5
 R8n08vJvzfzrjwR87IG9TYbo7F4hAXUTNwwiFTlSYLHGpPGL5JMt9a5XVt+otKb7Fk
 Qh8UHDBRVwMqDuoD7fHrAIuahwrZK7Ok4dbmXenwn7JQ3KIOyRWLDB3g8TBY9UOjrV
 XfCHLr0ZmqO/JJOaR4g8tbEZIoDPZc/cz4Ha+yXKWAuRKkaY4AHE5VXNYUixFP0vK3
 +74rLo8FW28lQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1lbKiy-000j5Y-Uq; Tue, 27 Apr 2021 12:13:48 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 20/79] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
Date: Tue, 27 Apr 2021 12:12:47 +0200
Message-Id: <8990782e13de0f4b91fa6675bc5fdaeda2fd038a.1619518193.git.mchehab+huawei@kernel.org>
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
Replace it by the new pm_runtime_resume_and_get(), introduced by:
commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
in order to properly decrement the usage counter and avoid memory
leaks.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
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
