Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EAC27AA67
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 11:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BED468633E;
	Mon, 28 Sep 2020 09:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVTJLBnOxRJV; Mon, 28 Sep 2020 09:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38FC586256;
	Mon, 28 Sep 2020 09:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6C2D1BF356
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 09:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB52C20451
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 09:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M3hKaIFhxv9B for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 09:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id EA89E20423
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 09:11:22 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08S99w2Q004122;
 Mon, 28 Sep 2020 09:11:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=hbTr6kovY/a+edEAKfdDe9ULjV6xcd2JhnJGh27t1UM=;
 b=pAxqGkiJydHDnR6dY5X/RaU/AmRm2N879O0swEh0A/3CcTqWNDRF2pYS/i6HIq/21UN5
 B2LkgOzmF8exKiiY8/ydhwXfYjCCFMBB39sTZmMnS9LS1778ZzKfy09srFmX4DGD+PJW
 aYrbVdiY8hGA6aVjjNS1SHRy+/z+OW0cJagwkmhy7S9JIq36ZB9xelNIPy34m+Ntqkow
 ps22Tkk8mkC3w9RTrSMDTQ8xn9dGhj3KtCjhPIwvnxwWEPYHXXk9Yj4845D/SIiz8nDv
 hrS1Y4aobLRibYaIgjZ7U2bzlzRwCLWTRAZkO8lCBiPKzrFhThuM1PFg2GU3UIih/CF9 fw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 33su5am15a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 28 Sep 2020 09:11:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08S9AK7v051460;
 Mon, 28 Sep 2020 09:11:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 33tfhw10c9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Sep 2020 09:11:18 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08S9BBGj021271;
 Mon, 28 Sep 2020 09:11:11 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Sep 2020 02:11:10 -0700
Date: Mon, 28 Sep 2020 12:11:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] staging: vchiq: Fix list_for_each exit tests
Message-ID: <20200928091103.GC377727@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999 bulkscore=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280077
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Jamal Shareef <jamal.k.shareef@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code code here used to be list_for_each() and after the loop then
the "entry" pointer was non-NULL if we found the correct entry or NULL
if we couldn't find it.  Then we changed the code to use list_for_each_entry()
and so now the "entry" pointer is always non-NULL when we exit the loop.

I have introduced a new "found" variable to say if we found the correct
enty or not.  I fixed one test by making it an else statement because
that was more readable than testing "if (!found)".

Fixes: 46e4b9ec4fa4 ("staging: vchiq_arm: use list_for_each_entry when accessing bulk_waiter_list")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index bb0cc9cb96e9..c25fc559cd36 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -430,6 +430,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	struct vchiq_service *service;
 	enum vchiq_status status;
 	struct bulk_waiter_node *waiter = NULL;
+	bool found = false;
 
 	service = find_service_by_handle(handle);
 	if (!service)
@@ -443,12 +444,13 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	list_for_each_entry(waiter, &instance->bulk_waiter_list, list) {
 		if (waiter->pid == current->pid) {
 			list_del(&waiter->list);
+			found = true;
 			break;
 		}
 	}
 	mutex_unlock(&instance->bulk_waiter_list_mutex);
 
-	if (waiter) {
+	if (found) {
 		struct vchiq_bulk *bulk = waiter->bulk_waiter.bulk;
 
 		if (bulk) {
@@ -464,9 +466,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 				spin_unlock(&bulk_waiter_spinlock);
 			}
 		}
-	}
-
-	if (!waiter) {
+	} else {
 		waiter = kzalloc(sizeof(struct bulk_waiter_node), GFP_KERNEL);
 		if (!waiter) {
 			vchiq_log_error(vchiq_core_log_level,
@@ -945,6 +945,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 {
 	struct vchiq_service *service;
 	struct bulk_waiter_node *waiter = NULL;
+	bool found = false;
 	int status = 0;
 	int ret;
 
@@ -967,11 +968,12 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 				    list) {
 			if (waiter->pid == current->pid) {
 				list_del(&waiter->list);
+				found = true;
 				break;
 			}
 		}
 		mutex_unlock(&instance->bulk_waiter_list_mutex);
-		if (!waiter) {
+		if (!found) {
 			vchiq_log_error(vchiq_arm_log_level,
 				"no bulk_waiter found for pid %d",
 				current->pid);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
