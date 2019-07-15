Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F6468CF8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 15:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B2642107D;
	Mon, 15 Jul 2019 13:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGm0EqgaN334; Mon, 15 Jul 2019 13:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A1C2C214E9;
	Mon, 15 Jul 2019 13:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D38A91BF96A
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 13:55:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D064B87B2E
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 13:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b-CYcAwj243e for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 13:55:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2B15987B2B
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 13:55:24 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D9872083D;
 Mon, 15 Jul 2019 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563198924;
 bh=hkbA/sYe4uhxv3xBqDfgTo3n7jU8Yf6FGRsBhp4/HrI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HCNqhswXqg0oDfdXxiNnaHDeC8/uPYNMgVYprGKd3IceT650TKSy9wdDzU3B49vvo
 qwE3Ai7G5dWG8HB+qA4qB2URh4eawfn2/gNQmuUWYTR/xDvxo6GB63VPfR3l1SX1yq
 Vk6Um06umhJVJkuFHJnpv8q3AeRlM9PoFdShqP4M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 142/249] media: staging: davinci: fix memory leaks
 and check for allocation failure
Date: Mon, 15 Jul 2019 09:45:07 -0400
Message-Id: <20190715134655.4076-142-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Colin Ian King <colin.king@canonical.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit a84e355ecd3ed9759d7aaa40170aab78e2a68a06 ]

There are three error return paths that don't kfree params causing a
memory leak.  Fix this by adding an error return path that kfree's
params before returning.  Also add a check to see params failed to
be allocated.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 30e2edc0cec5..b88855c7ffe8 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1251,10 +1251,10 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	unsigned int i;
 	int rval = 0;
+	struct ipipe_module_params *params;
 
 	for (i = 0; i < ARRAY_SIZE(ipipe_modules); i++) {
 		const struct ipipe_module_if *module_if;
-		struct ipipe_module_params *params;
 		void *from, *to;
 		size_t size;
 
@@ -1265,25 +1265,30 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		from = *(void **)((void *)cfg + module_if->config_offset);
 
 		params = kmalloc(sizeof(*params), GFP_KERNEL);
+		if (!params)
+			return -ENOMEM;
 		to = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
 		if (to && from && size) {
 			if (copy_from_user(to, (void __user *)from, size)) {
 				rval = -EFAULT;
-				break;
+				goto error_free;
 			}
 			rval = module_if->set(ipipe, to);
 			if (rval)
-				goto error;
+				goto error_free;
 		} else if (to && !from && size) {
 			rval = module_if->set(ipipe, NULL);
 			if (rval)
-				goto error;
+				goto error_free;
 		}
 		kfree(params);
 	}
-error:
+	return rval;
+
+error_free:
+	kfree(params);
 	return rval;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
