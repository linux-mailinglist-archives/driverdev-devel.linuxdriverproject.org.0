Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 681362D97BE
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:55:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F27A02E149;
	Mon, 14 Dec 2020 11:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bz5uUcA6Pj99; Mon, 14 Dec 2020 11:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D0A722E17D;
	Mon, 14 Dec 2020 11:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B2511BF42E
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33A1A87585
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mp-7LO4EJhc0 for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:55:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D2A6875B5
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:55:02 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEBnqdT194622;
 Mon, 14 Dec 2020 11:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=ZzFpPc4CJ210UKiC7Jc33w0aFo2TJ7hiZ01nPuzs1ow=;
 b=zZEY1a/sfl3M5xxxTch5GEvLRgqmZikHi7jrGsWw+PDj/Z/0UiTz4iMCFcnZQEHMPo8q
 2MlyqMnZS3ajk1of11TDD2mIU+DsmhfvSRV8IzFkd4Nho3Db50w3t5csfzvgMbG52/hc
 /IRwGN2rCXuz3gOMWMng7ML7C6o/sO8f4j+btbe5BOYtSNc9Gnvoz2Qw1pGJJ+vW+DWH
 weFaTJulgvFNByIurHM0KsQLIMx/Ct52v3uFJVOk4D2T+5taZVR8EdLlO3vRhcI6YWVW
 sc8IgNKeYgv1Cfut+1bwNUyaUrCiB9a5eivKUgHLrYU2zEnT7cf3xR35ux73JZqAuvV/ 1A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 35ckcb4wwy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 14 Dec 2020 11:55:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0BEBo3I6003407;
 Mon, 14 Dec 2020 11:55:01 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 35d7sud7rq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 14 Dec 2020 11:55:00 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0BEBsxIq031229;
 Mon, 14 Dec 2020 11:54:59 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 14 Dec 2020 03:54:59 -0800
Date: Mon, 14 Dec 2020 14:54:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH] media: allegro: Fix use after free on error
Message-ID: <X9dShwq8PrThDpn9@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9834
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0 phishscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140084
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The "channel" is added to the "dev->channels" but then if
v4l2_m2m_ctx_init() fails then we free "channel" but it's still on the
list so it could lead to a use after free.  Let's not add it to the
list until after v4l2_m2m_ctx_init() succeeds.

Fixes: cc62c74749a3 ("media: allegro: add missed checks in allegro_open()")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
From static analysis.  Not tested.

 drivers/staging/media/allegro-dvt/allegro-core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 9f718f43282b..640451134072 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -2483,8 +2483,6 @@ static int allegro_open(struct file *file)
 	INIT_LIST_HEAD(&channel->buffers_reference);
 	INIT_LIST_HEAD(&channel->buffers_intermediate);
 
-	list_add(&channel->list, &dev->channels);
-
 	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
 						allegro_queue_init);
 
@@ -2493,6 +2491,7 @@ static int allegro_open(struct file *file)
 		goto error;
 	}
 
+	list_add(&channel->list, &dev->channels);
 	file->private_data = &channel->fh;
 	v4l2_fh_add(&channel->fh);
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
