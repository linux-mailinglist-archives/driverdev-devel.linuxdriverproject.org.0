Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46903229901
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 15:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD398886C8;
	Wed, 22 Jul 2020 13:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RodheuMTIQD0; Wed, 22 Jul 2020 13:12:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F15A88415;
	Wed, 22 Jul 2020 13:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 979A21BF317
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93F29203DD
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 13:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sxTqv+HucTvu for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 13:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id D4875203BA
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 13:12:06 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06MD2V2x060390;
 Wed, 22 Jul 2020 13:12:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=H6OI4tcr8wow3U56AqfGZEMBDcuV/mhh8Eb/HpVwG9w=;
 b=lIqA+wb/oZm7K8Uet3pMXINcRcTqRNJaFFeiIcZ2eiKqDXQVr7tVV2WGVlYWFWpi3Lke
 TQ1dhTK4VKhDJr882taVrTXDhEkMQ7fJxROclXQDvAs1is5pB4/Lob0HFEPs0Vp2wEUe
 Mz3dnIHbGZgkYsfPizN/6raxzu561bai3JjtLnHYARJm0yCRxBzYETgpm8JiRB/h2S7K
 KF9sn6Uz6zyeKOnm5cbS/tkIvZFHCpW/bVXoDUVrzdnnJKlv4Dmo5/TIG3/WtJaOtE4z
 OM0rxyBjLoGk6AZPoE6MhgkZQp3QeuYWnkHCp68XfUMXhUH4afga2XOZkNnHrZAjuyy2 Ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 32brgrk6qd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jul 2020 13:12:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06MD9CdL047315;
 Wed, 22 Jul 2020 13:12:05 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 32ep0q8eed-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jul 2020 13:12:05 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06MD7095018628;
 Wed, 22 Jul 2020 13:07:00 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 Jul 2020 13:06:59 +0000
Date: Wed, 22 Jul 2020 16:06:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH] staging: vchiq: Fix refcounting bug in buffer_from_host()
Message-ID: <20200722130651.GC220681@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9689
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007220097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9689
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 impostorscore=0 suspectscore=0 adultscore=0 clxscore=1011 mlxlogscore=999
 priorityscore=1501 phishscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007220096
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If we fail to queue the buffer then it can never be dequeued.  This can
lead to a forever loop in stop_streaming() when we wait for everything
to finish.

Fixes: 70ec64ccdaac ("staging: bcm2835-camera: Ensure all buffers are returned on disable")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
From static analysis.  Not tested.  Please review carefully etc.

 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index dc767730db43..65dd2a55b3da 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -441,6 +441,8 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	ret = vchiq_queue_kernel_message(instance->service_handle, &m,
 					 sizeof(struct mmal_msg_header) +
 					 sizeof(m.u.buffer_from_host));
+	if (ret)
+		atomic_dec(&port->buffers_with_vpu);
 
 	vchiq_release_service(instance->service_handle);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
