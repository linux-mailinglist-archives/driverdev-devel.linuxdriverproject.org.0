Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D36932E40B
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 09:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67AC54ECEA;
	Fri,  5 Mar 2021 08:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHEI5hlu9Cva; Fri,  5 Mar 2021 08:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23CDE4EC7C;
	Fri,  5 Mar 2021 08:58:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73D071BF331
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 08:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 624FC4EC7C
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 08:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9Wp8EOrjPDx for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 08:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EF394EC7B
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 08:58:16 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1258tjB2076918;
 Fri, 5 Mar 2021 08:58:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=nJ6xyN7tTx6zu1Wf8tmSZj7awmOmSqHSXODxHLNJySc=;
 b=eZuIxe0D8sdt0UpyK97q/cMkVZVftXmdlpRgN/aoQ66CyzZeNChy/luZP3oPFgdByRCr
 tlfMgHSrlNQLbwkZS7ZpOACfS1UZYLEKsTRoa96+c3xUBB7aTH+bS4dEIjoprmz+hqQ7
 9TBf33jJ/O+z6x63d5CY0a5YPmBAGUTkofWw1dX7iMirqNcXLso78rq4cZMOaSDq8IUQ
 zHYkWXhlpU+dqnu3JUJ3ZqMuIifnjd0CG89SUAjKjcfZ2WmSdI8/4Z3UGwiYcp20Bx/j
 d21esqzWAgFeMBrewoIHW282Js2CEC9UQkDxe/ItMu/uOVg2CgLO2MbmZ/mxxlI8wL+0 GA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 371hhcb3y0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Mar 2021 08:58:15 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1258pDkw185665;
 Fri, 5 Mar 2021 08:58:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 370003r6mb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Mar 2021 08:58:13 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 1258wC58022487;
 Fri, 5 Mar 2021 08:58:12 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 05 Mar 2021 00:58:11 -0800
Date: Fri, 5 Mar 2021 11:58:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: rtl8188eu: prevent ->ssid overflow in
 rtw_wx_set_scan()
Message-ID: <YEHymwsnHewzoam7@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9913
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103050043
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9913
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 malwarescore=0
 mlxlogscore=999 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103050043
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code has a check to prevent read overflow but it needs another
check to prevent writing beyond the end of the ->ssid[] array.

Fixes: a2c60d42d97c ("staging: r8188eu: Add files for new driver - part 16")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index bf22f130d3e1..58954b88a817 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -1133,9 +1133,11 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 						break;
 					}
 					sec_len = *(pos++); len -= 1;
-					if (sec_len > 0 && sec_len <= len) {
+					if (sec_len > 0 &&
+					    sec_len <= len &&
+					    sec_len <= 32) {
 						ssid[ssid_index].ssid_length = sec_len;
-						memcpy(ssid[ssid_index].ssid, pos, ssid[ssid_index].ssid_length);
+						memcpy(ssid[ssid_index].ssid, pos, sec_len);
 						ssid_index++;
 					}
 					pos += sec_len;
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
