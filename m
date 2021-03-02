Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5EC329BED
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 12:20:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77E7F430C8;
	Tue,  2 Mar 2021 11:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3OJsxwsft3Xs; Tue,  2 Mar 2021 11:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B90AD43104;
	Tue,  2 Mar 2021 11:20:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB3C31BF255
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 11:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 953A8430C8
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 11:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lt9odib_7Clq for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 11:19:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52723430A4
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 11:19:55 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BJJ3S180304;
 Tue, 2 Mar 2021 11:19:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=TrSXaYiwjQglWIrNGsVGxML9a6Rkt5rQmMT1+XCmlEg=;
 b=dX3JnZHPc9742N1d9a9+yw6KhxOAEAfqetl2ocdfEKaRQmY5Xsx+l72CT8p1xkprnLBZ
 iKtLEVbHBNYJE8y/U6ucpVf3PNmfwCkwcByNmbjxJuUrcdBCI3P8786hDLu5u51oSp52
 bs/mkJUE0ZQ66zASsiVwL7tOJiupOeNcJ22cMSI1kLfxpnGA4zKopc75Tpk86Gq5408L
 f2XHHHka8yOFt4qNO6s4jli5uEgqVyJnlmlQwVxppAHY4mf2UMb+89HLHvChNCu3AuHR
 k2LIBNR8jcOl0uhD3bLRcsV1WnOvAbKYZfexl88jzv7jeKe/73fNTWmv9o97g4/wvRe4 yA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 36ybkb7aeg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:19:54 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122BGW47097035;
 Tue, 2 Mar 2021 11:19:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36yyurv2be-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 11:19:52 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 122BJm2F029414;
 Tue, 2 Mar 2021 11:19:48 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Mar 2021 03:19:47 -0800
Date: Tue, 2 Mar 2021 14:19:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ks7010: prevent buffer overflow in ks_wlan_set_scan()
Message-ID: <YD4fS8+HmM/Qmrw6@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103020094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9910
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 impostorscore=0
 suspectscore=0 phishscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1011 mlxlogscore=999 adultscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020095
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
Cc: devel@driverdev.osuosl.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 kernel-janitors@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The user can specify a "req->essid_len" of up to 255 but if it's
over IW_ESSID_MAX_SIZE (32) that can lead to memory corruption.

Fixes: 13a9930d15b4 ("staging: ks7010: add driver from Nanonote extra-repository")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index dc09cc6e1c47..09e7b4cd0138 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -1120,6 +1120,7 @@ static int ks_wlan_set_scan(struct net_device *dev,
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 	struct iw_scan_req *req = NULL;
+	int len;
 
 	if (priv->sleep_mode == SLP_SLEEP)
 		return -EPERM;
@@ -1129,8 +1130,9 @@ static int ks_wlan_set_scan(struct net_device *dev,
 	if (wrqu->data.length == sizeof(struct iw_scan_req) &&
 	    wrqu->data.flags & IW_SCAN_THIS_ESSID) {
 		req = (struct iw_scan_req *)extra;
-		priv->scan_ssid_len = req->essid_len;
-		memcpy(priv->scan_ssid, req->essid, priv->scan_ssid_len);
+		len = min_t(int, req->essid_len, IW_ESSID_MAX_SIZE);
+		priv->scan_ssid_len = len;
+		memcpy(priv->scan_ssid, req->essid, len);
 	} else {
 		priv->scan_ssid_len = 0;
 	}
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
