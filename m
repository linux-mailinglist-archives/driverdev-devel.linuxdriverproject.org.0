Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 894DF284CB2
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 15:48:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A9FE864D8;
	Tue,  6 Oct 2020 13:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXahBIdWlwqM; Tue,  6 Oct 2020 13:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA92C864FB;
	Tue,  6 Oct 2020 13:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F04A41BF3E9
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 13:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC99E84439
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 13:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTnyCNKzwGcv for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 13:48:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F11F858BF
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 13:48:08 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 096Di9vY100225;
 Tue, 6 Oct 2020 13:48:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=OEenJg5AE15ZdvXh+gVI2Kf3MhspBkhTR4ZqWJa4tIY=;
 b=xmvgEOY09FXeJ1N44u3nx/M05sFxMUrPh3BZ+Zo76qcTfwHDtlxyT+cn2Rclne1uJBhC
 fI2VRqL7mObzCGV6yttnVRyNqLAOu7icp3TAMn6FzXyHzCCxO6LYyEXGlkZoT6whBpa0
 ghzoKlJNbs9UtZaptdkPAeIhfPQMN+ZOBxoJw2rly6LOQ9onoD/0o+KYKDXf/TngLBU5
 spIakisJbvzTqxUaaZitGxEvAakUIEe2UAevso1W4Sgtu0T7BucLkSsbsSeiXt2FKVmB
 6b/8XKzUtVUpOeryUykFA4HXc+Z1i8/VE99VSj4CcLH6l+BCWglHoPS9FnMokYfLRzry /A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 33xetav9g9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 06 Oct 2020 13:48:04 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 096Dk8eZ168251;
 Tue, 6 Oct 2020 13:48:03 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 33y37wyrwf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Oct 2020 13:48:03 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 096Dlv01010082;
 Tue, 6 Oct 2020 13:47:57 GMT
Received: from mwanda (/10.175.10.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 06 Oct 2020 06:47:56 -0700
Date: Tue, 6 Oct 2020 16:47:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v2] staging: vchiq: Fix list_for_each exit tests
Message-ID: <20201006134748.GA2076872@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201001085650.GA1832570@kroah.com>
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9765
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 spamscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010060090
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9765
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010060090
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

After a list_for_each_entry() loop, the list iterator is always non-NULL
so these conditions don't work.  If the "waiter" is not found then this
results in an out of bounds access.

I have fixed it by introducing a new "found" variable.  In one case, I
used an else statement for readability.

Fixes: 46e4b9ec4fa4 ("staging: vchiq_arm: use list_for_each_entry when accessing bulk_waiter_list")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: rebase on latest linux-next

 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 590415561b73..e6a9aab66f4a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -432,6 +432,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 	struct vchiq_service *service;
 	enum vchiq_status status;
 	struct bulk_waiter_node *waiter = NULL;
+	bool found = false;
 
 	service = find_service_by_handle(handle);
 	if (!service)
@@ -445,12 +446,13 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
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
@@ -467,9 +469,7 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
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
@@ -952,6 +952,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 {
 	struct vchiq_service *service;
 	struct bulk_waiter_node *waiter = NULL;
+	bool found = false;
 	void *userdata;
 	int status = 0;
 	int ret;
@@ -975,11 +976,12 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
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
