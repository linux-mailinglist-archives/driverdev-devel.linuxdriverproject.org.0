Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C065939D40
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 904CD21543;
	Sat,  8 Jun 2019 11:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIrikDE+SXqW; Sat,  8 Jun 2019 11:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 73AED2150F;
	Sat,  8 Jun 2019 11:27:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFAE21BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ECA0F81F70
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGDWjTZEYT-w for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3997A86581
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:27:30 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hZZVO-0001nb-92; Sat, 08 Jun 2019 11:27:26 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: davinci: fix memory leaks and check for allocation
 failure
Date: Sat,  8 Jun 2019 12:27:25 +0100
Message-Id: <20190608112725.27658-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are three error return paths that don't kfree params causing a
memory leak.  Fix this by adding an error return path that kfree's
params before returning.  Also add a check to see params failed to
be allocated.

Addresses-Coverity: ("Resource leak")
Fixes: da43b6ccadcf ("[media] davinci: vpfe: dm365: add IPIPE support for media controller driver")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 08c26f3c5282..52397ad0e3e2 100644
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
