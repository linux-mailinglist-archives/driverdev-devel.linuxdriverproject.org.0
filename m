Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F98B27C289
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 12:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7EDD8207A8;
	Tue, 29 Sep 2020 10:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7G1n9-bBOiK0; Tue, 29 Sep 2020 10:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C066720396;
	Tue, 29 Sep 2020 10:38:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DFD1D1BF232
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 10:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCDBF867ED
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 10:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Z6k6DjsDNte for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 10:38:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F781867F1
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 10:38:04 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08TAY7xf066350;
 Tue, 29 Sep 2020 10:38:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=5iEiG/S/k6MJ/gza4tpjk/4uBczt9qrY5Q6upheJUk4=;
 b=Iq/gRea1qoLoGU6cnNWVdzTkTU9vLpIV7j3ysOVbeaix2hpLFQFYPUD5u9rvA90tyESz
 33boqc3aTOXTyTGwuzVsyD7hMqth7wcVQaSqK/IfXTvyMTYonuj7ENtHpNoLcKffxu8h
 cXqHwvNbUBdFPD315BVKeBIBTN2zeEKL9xGyqXpF+hqW7poQu0JZWcs/wkoZE9HxuIDZ
 FVy2Izbxmde9nH+KNVoRwi/TYpfTJTXMELiKdYMfZ15GUoF6KTVqYr9MkzjYUtCyEJsO
 cXnhqt3RqaZMXFWCDVXbTvt9m9oABa1CB2dnFPkdQGCkyZIH6MMVy0i7aCGw4JdiLydi kA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 33su5at1hf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 29 Sep 2020 10:38:02 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08TAZiZ7062718;
 Tue, 29 Sep 2020 10:36:02 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 33tfjwexsn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 29 Sep 2020 10:36:02 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08TAZwI1000793;
 Tue, 29 Sep 2020 10:35:58 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 29 Sep 2020 03:35:56 -0700
Date: Tue, 29 Sep 2020 13:35:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Sebastian Arriola <sebdeveloper6952@gmail.com>
Subject: [PATCH] staging: rtl8712: Fix enqueue_reorder_recvframe()
Message-ID: <20200929103548.GA493135@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9758
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009290093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9758
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009290093
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org,
 Cristiane Naves <cristianenavescardoso09@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ivan Safonov <insafonov@gmail.com>, kernel-janitors@vger.kernel.org,
 Pascal Terjan <pterjan@google.com>, Allen Pais <apais@linux.microsoft.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The logic of this function was accidentally broken by a checkpatch
inspired cleanup.  I've modified the code to restore the original
behavior and also make checkpatch happy.

Fixes: 98fe05e21a6e ("staging: rtl8712: Remove unnecesary else after return statement.")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 978594c676eb..db5c7a487ab3 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -476,11 +476,14 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 	while (!end_of_queue_search(phead, plist)) {
 		pnextrframe = container_of(plist, union recv_frame, u.list);
 		pnextattrib = &pnextrframe->u.hdr.attrib;
+
+		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
+			return false;
+
 		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
 			plist = plist->next;
-		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
-			return false;
-		break;
+		else
+			break;
 	}
 	list_del_init(&(prframe->u.hdr.list));
 	list_add_tail(&(prframe->u.hdr.list), plist);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
