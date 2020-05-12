Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7881E1CEF3E
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 10:37:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEBAD86F86;
	Tue, 12 May 2020 08:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T23Q1Sodtu2U; Tue, 12 May 2020 08:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C176786F80;
	Tue, 12 May 2020 08:37:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3801B1BF2AB
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 08:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 34FFA87A74
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 08:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EeR9OmdMTw59 for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 08:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60D5A87856
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 08:37:06 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04C8ZnmP030477;
 Tue, 12 May 2020 08:37:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=6x0j+qZvRWgQMYvacWQYSoSXFOvcq03MBKE6hV56+8k=;
 b=InnqSNvJCAzs2i9hPbvl6Dr3qCm6InZlkcXlOwVA8hT+nwpNjw2xbzMPnlCOe8q0uqjH
 bVhTT0jUaBaIJXNCU/jZNVOUEf6fpS1EdeT249LDu9dOvJuFE2xlrIIB5eqEmA8pFSvo
 D2+U0GofLtLnNhryiuY6yETWmYsHUCNGrKvszXNVOlsP47wmLx9VmPTxXYba9C0F6p11
 houVDMWlMAAu5XeLlf8nh2jnf1C0Kh/EqOma2tnvgKl6o+ZboumGGG59qGzmWOs3Kr6A
 tRbI7gVUtRFOEvg4Q1uOIRCxolfDqqJmNtmJa7Kp1AIWvDeQk3qzJs7+lfWe3emoMU3F jQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30x3gshjya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 May 2020 08:37:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04C8YJQd050529;
 Tue, 12 May 2020 08:37:04 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30x69srbvj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 12 May 2020 08:37:04 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04C8b38Y030124;
 Tue, 12 May 2020 08:37:03 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 12 May 2020 01:37:02 -0700
Date: Tue, 12 May 2020 11:36:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [PATCH] staging: wfx: unlock on error path
Message-ID: <20200512083656.GA251760@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005120071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 malwarescore=0 adultscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005120071
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

We need to release the tx_lock on the error path before returning.

Fixes: d1c015b4ef6f ("staging: wfx: rewrite wfx_hw_scan()")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
From static analysis.  Not tested.

 drivers/staging/wfx/scan.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/scan.c b/drivers/staging/wfx/scan.c
index 76761e4960dd7..eff1be9fb28f8 100644
--- a/drivers/staging/wfx/scan.c
+++ b/drivers/staging/wfx/scan.c
@@ -57,8 +57,10 @@ static int send_scan_req(struct wfx_vif *wvif,
 	wvif->scan_abort = false;
 	reinit_completion(&wvif->scan_complete);
 	timeout = hif_scan(wvif, req, start_idx, i - start_idx);
-	if (timeout < 0)
+	if (timeout < 0) {
+		wfx_tx_unlock(wvif->wdev);
 		return timeout;
+	}
 	ret = wait_for_completion_timeout(&wvif->scan_complete, timeout);
 	if (req->channels[start_idx]->max_power != wvif->vif->bss_conf.txpower)
 		hif_set_output_power(wvif, wvif->vif->bss_conf.txpower);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
