Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B8A300668
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Jan 2021 16:01:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BC55870FE;
	Fri, 22 Jan 2021 15:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id curhKGJ7kOwx; Fri, 22 Jan 2021 15:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83E3D8707B;
	Fri, 22 Jan 2021 15:01:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60A061BF2AA
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 15:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D7E486A98
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 15:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBU92Ht5f-aN for <devel@linuxdriverproject.org>;
 Fri, 22 Jan 2021 15:01:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 53BC086A00
 for <devel@driverdev.osuosl.org>; Fri, 22 Jan 2021 15:01:19 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10MExdJ4158489;
 Fri, 22 Jan 2021 15:01:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=9cyFxZuLd/5Jx8UWrCwdx5yXVU5tyxIcPIwUK1lmS58=;
 b=WuOJ8V4inpfH0XK+e57zLud4Zxr071VxEImrgdwpWaJBvvlHWCAjVtsyT3zxmKX9Xgky
 /OH8gr/mo0au2E6Q9qDT3fKKT7qXqbnWdI8IF2DQM3DvbMOS2p6pdJSplUwT8URhNwjh
 QWcXJBPpI/YRxhUMJK7JXnojCoHO85o03l2u3AALry+pGaMAcuL8VeT6ju9WkSXTkdXt
 H85x3CMHT9stw8dNGz5qnpqBbYw5dDAlHJddKH1WCFDWqqv4M/Evf1ilcsslbwIGefIf
 O80TOLMsqCxeihSRNlp5NRs6To+ohCc/6e4IdTDoivRS3+CykzB/IotElzTUycav1Z8U dw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 3668qamfte-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Jan 2021 15:01:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10MF0wxm192353;
 Fri, 22 Jan 2021 15:01:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 3668r15jtt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 Jan 2021 15:01:15 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10MF1CbP020773;
 Fri, 22 Jan 2021 15:01:13 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 Jan 2021 07:01:11 -0800
Date: Fri, 22 Jan 2021 18:01:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rob Springer <rspringer@google.com>
Subject: [PATCH] staging: gasket: Fix sizeof() in gasket_handle_ioctl()
Message-ID: <YAroue0qiuf35rkS@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9871
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 adultscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101220085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9871
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 impostorscore=0 mlxscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1011 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101220085
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
 John Joseph <jnjoseph@google.com>, Simon Que <sque@chromium.org>,
 Richard Yeh <rcy@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The "gasket_dev->num_page_tables" variable is an int but this is copying
sizeof(u64).  On 32 bit systems this would end up disclosing a kernel
pointer to user space, but on 64 bit it copies zeroes from a struct
hole.

Fixes: 9a69f5087ccc ("drivers/staging: Gasket driver framework + Apex driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
This is an API change.  Please review this carefully!  Another potential
fix would be to make ->num_page_tables a long instead of an int.

 drivers/staging/gasket/gasket_ioctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index e3047d36d8db..c4abac35c1ca 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -318,7 +318,7 @@ long gasket_handle_ioctl(struct file *filp, uint cmd, void __user *argp)
 	case GASKET_IOCTL_NUMBER_PAGE_TABLES:
 		trace_gasket_ioctl_integer_data(gasket_dev->num_page_tables);
 		if (copy_to_user(argp, &gasket_dev->num_page_tables,
-				 sizeof(uint64_t)))
+				 sizeof(gasket_dev->num_page_tables)))
 			retval = -EFAULT;
 		else
 			retval = 0;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
