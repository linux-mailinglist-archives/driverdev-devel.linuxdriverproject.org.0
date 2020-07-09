Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C70219DD0
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:29:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24CD98981D;
	Thu,  9 Jul 2020 10:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjEI-TAoh0TI; Thu,  9 Jul 2020 10:29:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99CBB897D0;
	Thu,  9 Jul 2020 10:29:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1EBB51BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B31A87E42
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:29:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKhdrlop4ewk for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:29:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 830AD87E41
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:29:48 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 069ALpIx169033;
 Thu, 9 Jul 2020 10:29:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=esio9HxUmDUCBZg/V96muJuNngzyCwM1zDN/+Fifp/4=;
 b=HxLjxULAE4pnD8eHeSRGJm9ETaCIlj7q0QjPEhCxbdGrFpoMbwchk1BLlJRJgGP/2D4h
 bIndzJvruO27GJ38dnbqpjClZO0Ab0tvLbUMxAH+ca2jpBsaTD93u9Z+VTyNuVzbYXRW
 TO9i8zpOthzHPVKERdI3MFRHSyRUWh/wuCzbY+oC/dlT/5a+2bwGtn7IAICNIs85DWOJ
 hLbRCgsvf2CN6RNGBQPx7FBF7uagkGJ6wEeEM/CGqEwjc1df6mDxBCzIr9I3RVV7Oa3M
 zwrH0oTBhelDjr50GguQGfQANHqh8JHRS4PPVvZPJe/csJB6IblVLzM0HOTQIFTXc9U0 1A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 325y0agun5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 09 Jul 2020 10:29:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 069ATJxC004169;
 Thu, 9 Jul 2020 10:29:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 325k3gy98s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jul 2020 10:29:46 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 069ATgrx006468;
 Thu, 9 Jul 2020 10:29:43 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 Jul 2020 03:29:41 -0700
Date: Thu, 9 Jul 2020 13:29:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH] staging: comedi: verify array index is correct before using it
Message-ID: <20200709102936.GA20875@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 mlxscore=0
 spamscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007090083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 clxscore=1015
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007090082
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code reads from the array before verifying that "trig" is a valid
index.  If the index is wildly out of bounds then reading from an
invalid address could lead to an Oops.

Fixes: a8c66b684efa ("staging: comedi: addi_apci_1500: rewrite the subdevice support functions")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/comedi/drivers/addi_apci_1500.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_1500.c b/drivers/staging/comedi/drivers/addi_apci_1500.c
index 45ad4ba92f94..689acd69a1b9 100644
--- a/drivers/staging/comedi/drivers/addi_apci_1500.c
+++ b/drivers/staging/comedi/drivers/addi_apci_1500.c
@@ -456,9 +456,9 @@ static int apci1500_di_cfg_trig(struct comedi_device *dev,
 	unsigned int lo_mask = data[5] << shift;
 	unsigned int chan_mask = hi_mask | lo_mask;
 	unsigned int old_mask = (1 << shift) - 1;
-	unsigned int pm = devpriv->pm[trig] & old_mask;
-	unsigned int pt = devpriv->pt[trig] & old_mask;
-	unsigned int pp = devpriv->pp[trig] & old_mask;
+	unsigned int pm;
+	unsigned int pt;
+	unsigned int pp;
 
 	if (trig > 1) {
 		dev_dbg(dev->class_dev,
@@ -471,6 +471,10 @@ static int apci1500_di_cfg_trig(struct comedi_device *dev,
 		return -EINVAL;
 	}
 
+	pm = devpriv->pm[trig] & old_mask;
+	pt = devpriv->pt[trig] & old_mask;
+	pp = devpriv->pp[trig] & old_mask;
+
 	switch (data[2]) {
 	case COMEDI_DIGITAL_TRIG_DISABLE:
 		/* clear trigger configuration */
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
