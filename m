Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DA6F44A
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 12:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D79323DB4;
	Tue, 30 Apr 2019 10:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h0VEOOwgtlAo; Tue, 30 Apr 2019 10:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FD682379C;
	Tue, 30 Apr 2019 10:36:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B0A9A1BF31F
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 10:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADA5785C28
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 10:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXzT3jK6gR5D for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 10:36:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2FEBD85751
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 10:36:08 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UAJA5T055840;
 Tue, 30 Apr 2019 10:36:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=wJ+r9ZIsCaVDkwmGC9gDgTWzl28sutAUufex4KBJt0M=;
 b=ZtpHeSMI5BPvJDSMBhRdMs2VqMmolgaRRS8CYhK3Pq3dD5bCxKjBrDZwfrnLQcoXcoR0
 j0QIOimKNR4VWUsnxPlViroo6yZA7SHV1hW8mV335Ffy3/IGz4eKxvrn6TmO8wIbY36s
 qmbOv6X50EMnxI9q57FOXWYDjyodQmWutnvMfurKD+KvImEBN+fSPSaE8p9YNXhRaJHn
 APNdHW1Nz8z2qvMKla4C6LlmnvcM0mpIprl/XvNGVYI/k5LvN9oDdFYsaoRDxgx47HKM
 h2ZVvFsbQRL5hQ3l/xo4mWkfrafIYZK8TEFhZcRx5He0z9kkj0jLr+ZzSZAccNQH2anu LA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2s4ckdbwgp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 10:36:07 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x3UAWf4r113199;
 Tue, 30 Apr 2019 10:34:06 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2s4d4aeebe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Apr 2019 10:34:06 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x3UAY6rP029803;
 Tue, 30 Apr 2019 10:34:06 GMT
Received: from mwanda (/196.97.65.153) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 30 Apr 2019 03:34:05 -0700
Date: Tue, 30 Apr 2019 13:33:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: kpc2000: fix resource size calculation
Message-ID: <20190430103359.GA7064@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1904300069
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9242
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1904300069
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The code is calculating the resource size wrong because it should be
inclusive of the "res->end" address.  In other words, "end - start + 1".
We can just use the resource_size() function to do it correctly.

Fixes: 7dc7967fc39a ("staging: kpc2000: add initial set of Daktronics drivers")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 2 +-
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 6bb6ad4abe87..1fc30dc687f9 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -632,7 +632,7 @@ int pi2c_probe(struct platform_device *pldev)
     priv->adapter.algo = &smbus_algorithm;
     
     res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
-    priv->smba = (unsigned long)ioremap_nocache(res->start, res->end - res->start);
+    priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
     
     priv->pldev = pldev;
     pldev->dev.platform_data = priv;
diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index b38149b752fb..e568dec04800 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -452,7 +452,7 @@ kp_spi_probe(struct platform_device *pldev)
         goto free_master;
     }
     
-    kpspi->phys = (unsigned long)ioremap_nocache(r->start, r->end - r->start);
+    kpspi->phys = (unsigned long)ioremap_nocache(r->start, resource_size(r));
     kpspi->base = (u64 __iomem *)kpspi->phys;
     
     status = spi_register_master(master);
-- 
2.18.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
