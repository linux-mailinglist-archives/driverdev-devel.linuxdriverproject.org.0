Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5962989DA
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 10:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 329FF8674E;
	Mon, 26 Oct 2020 09:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xk0CGrhLdw8; Mon, 26 Oct 2020 09:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DD4A86462;
	Mon, 26 Oct 2020 09:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0048D1BF48B
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 09:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0AA98715D
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 09:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VIOgV+dTdnia for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 09:53:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4B5B8714E
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 09:53:45 +0000 (UTC)
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20201026095342epoutp0415c70dbc398db07ce75c81de188f7780~BgiGOoe2r1802718027epoutp04Q
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 09:53:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20201026095342epoutp0415c70dbc398db07ce75c81de188f7780~BgiGOoe2r1802718027epoutp04Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1603706022;
 bh=tTbq6d7RgMGW/PiNKtwIa4Mopla+Ybh+rWwDkxsfr1s=;
 h=From:To:Cc:Subject:Date:References:From;
 b=GK39vK0MQnKRuAkAOQ+tNW4A+tziQtwU4CghkDo2wNWk7L8WoCfTUba2ZtDye/j0F
 IgB8DWkkM1NFSAW3c1jD7jidd9yCR7xz4eU9/AcJG/zOUQbuaLrH56TOE34IpZVCCC
 G1Hi9iock58Faud3fc202Lwok7FzH9xqAK2DiS5k=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20201026095341epcas1p3a9527a203daec404ac84685815d49ea0~BgiE-1dsi2631326313epcas1p3e;
 Mon, 26 Oct 2020 09:53:41 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4CKVXM15NYzMqYkV; Mon, 26 Oct
 2020 09:53:39 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.0F.10463.2AC969F5; Mon, 26 Oct 2020 18:53:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20201026095337epcas1p234160e92a10032e39f727b5238b251bd~BgiBR23gL3192331923epcas1p2i;
 Mon, 26 Oct 2020 09:53:37 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20201026095337epsmtrp1876c019410cb08f1f6c5ba2d1a66755b~BgiBQuGgi2319423194epsmtrp1b;
 Mon, 26 Oct 2020 09:53:37 +0000 (GMT)
X-AuditID: b6c32a38-f11ff700000028df-5c-5f969ca24a3b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 66.FB.08604.1AC969F5; Mon, 26 Oct 2020 18:53:37 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.222]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20201026095337epsmtip2e2f57e8caf3cfc5fea743ee7c83d4fd9~BgiBCMNjO1703917039epsmtip2h;
 Mon, 26 Oct 2020 09:53:37 +0000 (GMT)
From: Seung-Woo Kim <sw0312.kim@samsung.com>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, nsaenzjulienne@suse.de
Subject: [PATCH] staging: mmal-vchiq: Fix memory leak for vchiq_instance
Date: Mon, 26 Oct 2020 18:55:50 +0900
Message-Id: <1603706150-10806-1-git-send-email-sw0312.kim@samsung.com>
X-Mailer: git-send-email 1.7.4.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOKsWRmVeSWpSXmKPExsWy7bCmvu7iOdPiDU7eZ7JY23uUxeLzqUqL
 PWd+sVs0L17PZnH3eQujxY1fbawWE29vYLfYNms5m8WMyS/ZHDg9Zt0/y+Zxb99hFo//Nx4x
 e+yfu4bdY/OSeo+DJ7sZPfq2rGL02Hy6OoAjKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
 wFDX0NLCXEkhLzE31VbJxSdA1y0zB+g6JYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
 Sk6BZYFecWJucWleul5yfq6VoYGBkSlQYUJ2xrIf75kLjgtXrOu+ztbAeFKgi5GTQ0LAROLN
 vYMsXYxcHEICOxgl5rfdZ4RwPjFKbJy5hAnC+cYoca7hAStMy4yuTywgtpDAXkaJH0sDIYq+
 MEp8W/QGLMEmoCOxf8lvsAYRgUyJN0tusoIUMQssZJSY8+geI0hCWMBD4tGm5WANLAKqEiuW
 NYHFeQXcJDavWAu1TUFiwb23bCDNEgK32CWObD/ICJFwkXjcepkNwhaWeHV8CzuELSXxsr8N
 yq6W2D7hJztEcwejRE97IwtEwlhi/9LJQM9xAJ2kKbF+lz5EWFFi5++5YPOZBfgk3n3tYQUp
 kRDglehoE4IoUZHYeXQSG0RYSmLWhmCIsIfE10XnoIESKzHrwg6WCYyysxDmL2BkXMUollpQ
 nJueWmxYYIIcS5sYwSlOy2IH49y3H/QOMTJxMB5ilOBgVhLhnSMzNV6INyWxsiq1KD++qDQn
 tfgQoykwvCYyS4km5wOTbF5JvKGpkbGxsYWJoZmpoaGSOO8f7Y54IYH0xJLU7NTUgtQimD4m
 Dk6pBqb2DfpK6jvspX+3ntqqMoU1wFw+j7PHSUdo0wnx1JWrjj7IMlI8yK205MuupBVXUp7z
 27/lSmTTEr0ekyyolzfB8ecDF2nr31+fnVt486+t5b6PX3+3b/G5+uzA8ienvRgkxbbf7Ftq
 cMpL5ggv+xvOCS+CljM83qr1U1jcOnXlspbc4GWFXjEH3++dETaNhdlo77H/NxsNVvROnd90
 ikuM66TwOeatL3bmfr78ZeGxD88iJ/+2/XDVZa1NvnMW4+LatisT2K25Wyx3SYZ/u2S6o0Mu
 LX6P+hzTwrrbtX2fcqKdDNbm2f1SkPt2zFB17iY58SWlYbfVwk2bpe3cXyxLZb+0XD1RkbVP
 4fGt+5ZKLMUZiYZazEXFiQDKqKeY+gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKLMWRmVeSWpSXmKPExsWy7bCSvO7COdPiDVbtUbRY23uUxeLzqUqL
 PWd+sVs0L17PZnH3eQujxY1fbawWE29vYLfYNms5m8WMyS/ZHDg9Zt0/y+Zxb99hFo//Nx4x
 e+yfu4bdY/OSeo+DJ7sZPfq2rGL02Hy6OoAjissmJTUnsyy1SN8ugStj2Y/3zAXHhSvWdV9n
 a2A8KdDFyMkhIWAiMaPrEwuILSSwm1Hi2nJDiLiUxNxv2xm7GDmAbGGJw4eLuxi5gEo+MUos
 u7+LCaSGTUBHYv+S36wgtohAtsSkjmtMIEXMAssZJb4/Os8OkhAW8JB4tGk52AIWAVWJFcua
 GEFsXgE3ic0r1rJCLFOQWHDvLdsERp4FjAyrGCVTC4pz03OLDQsM81LL9YoTc4tL89L1kvNz
 NzGCQ05Lcwfj9lUf9A4xMnEwHmKU4GBWEuGdIzM1Xog3JbGyKrUoP76oNCe1+BCjNAeLkjjv
 jcKFcUIC6YklqdmpqQWpRTBZJg5OqQamBWsdeNSN3SJmqdl9780/E+z1ZoZarukhxy/mS85p
 3Ls293JRd2Zj6/L6pu8btp5luON52XZVz+yGSbdXvGAQ64x42TDzudu85J3twurtHusXNJh/
 FlmpvXgK50Pr/j7lyj+PZyauucgQtGjB5+91kz6GsW14sGiab3jVW4E9CrfCL337sFOnx5iJ
 /6z6Uitm3pMrbxdf2rnBxGl35qJtSmu+aq7g2TDtQYjZ0/858QvuHhb5m37s7M8NGuvy9XPF
 puU9+cnmeOddn0fr2Sbd8LV5stsYr7/k+s4S+LkrI+n748X+pSKBugk54erpThGHF17cJt0a
 M/39uz3XdDZtXHaMsSxgw2nbD6Id1odeuCmxFGckGmoxFxUnAgDHEjXiqAIAAA==
X-CMS-MailID: 20201026095337epcas1p234160e92a10032e39f727b5238b251bd
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20201026095337epcas1p234160e92a10032e39f727b5238b251bd
References: <CGME20201026095337epcas1p234160e92a10032e39f727b5238b251bd@epcas1p2.samsung.com>
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
Cc: devel@driverdev.osuosl.org, jacopo@jmondi.org, gregkh@linuxfoundation.org,
 sw0312.kim@samsung.com, jh80.chung@samsung.com, dave.stevenson@raspberrypi.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The vchiq_instance is allocated with vchiq_initialise() but never
freed properly. Fix memory leak for the vchiq_instance.

Reported-by: Jaehoon Chung <jh80.chung@samsung.com>
Signed-off-by: Seung-Woo Kim <sw0312.kim@samsung.com>
---
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  |   19 +++++++++++++++----
 1 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 3a42025..9097bcb 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -179,6 +179,9 @@ struct vchiq_mmal_instance {
 
 	/* ordered workqueue to process all bulk operations */
 	struct workqueue_struct *bulk_wq;
+
+	/* handle for a vchiq instance */
+	struct vchiq_instance *vchiq_instance;
 };
 
 static struct mmal_msg_context *
@@ -1840,6 +1843,7 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 
 	mutex_unlock(&instance->vchiq_mutex);
 
+	vchiq_shutdown(instance->vchiq_instance);
 	flush_workqueue(instance->bulk_wq);
 	destroy_workqueue(instance->bulk_wq);
 
@@ -1856,6 +1860,7 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
 	int status;
+	int err = -ENODEV;
 	struct vchiq_mmal_instance *instance;
 	static struct vchiq_instance *vchiq_instance;
 	struct vchiq_service_params_kernel params = {
@@ -1890,17 +1895,21 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	status = vchiq_connect(vchiq_instance);
 	if (status) {
 		pr_err("Failed to connect VCHI instance (status=%d)\n", status);
-		return -EIO;
+		err = -EIO;
+		goto err_shutdown_vchiq;
 	}
 
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
-	if (!instance)
-		return -ENOMEM;
+	if (!instance) {
+		err = -ENOMEM;
+		goto err_shutdown_vchiq;
+	}
 
 	mutex_init(&instance->vchiq_mutex);
 
 	instance->bulk_scratch = vmalloc(PAGE_SIZE);
+	instance->vchiq_instance = vchiq_instance;
 
 	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);
@@ -1932,7 +1941,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 err_free:
 	vfree(instance->bulk_scratch);
 	kfree(instance);
-	return -ENODEV;
+err_shutdown_vchiq:
+	vchiq_shutdown(vchiq_instance);
+	return err;
 }
 EXPORT_SYMBOL_GPL(vchiq_mmal_init);
 
-- 
1.7.4.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
