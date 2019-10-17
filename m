Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A79DA826
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C97285C5E;
	Thu, 17 Oct 2019 09:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nIUwMDc3Fpe; Thu, 17 Oct 2019 09:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E09B284EEB;
	Thu, 17 Oct 2019 09:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 812771BF2CF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A6DD87C51
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BeYOEzimldlZ for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CA2585C57
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:19:35 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9H9JPHW067550;
 Thu, 17 Oct 2019 09:19:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=HqGJrXdDr+L2vzzi8nOpmT45hooIBj7pFx6NpAJ8pDE=;
 b=BTMIIGNB03tk7WGXihAsFPeRnJ76O2/dqzqyHVYfNWH1N+cG9z6Mln3g/mUaehMXg0qZ
 /Zk2e2k04mP6i5aAIbgAwyju+bLOPy/VBusfKsHP3Fz2w4gCKTEUmwNFMDHNYaVco5NJ
 wASfbLRYvMZxn7wpnbb1aIk0lB3Ox8jfGN+kSPo2KhzcrnMEbUjC84oMvc185wH1JGvL
 Djohj9Zv0k8ZBevP64KNhFqJNPvpfWGWnanVWnq9gvhhEy1GF2PhpSeZ0CBJn6wf6MzD
 BdF6uojNyMKFqBvzoTQXbjrynQ2bW6vtgzhzEf/OOFQP/fzD/tO9auO1tTYnr9OixFS9 IA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vk6sqw2ft-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Oct 2019 09:19:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9H9JVcZ106375;
 Thu, 17 Oct 2019 09:19:32 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vp3bk9y52-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 17 Oct 2019 09:19:32 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9H9IdLa028892;
 Thu, 17 Oct 2019 09:18:40 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 17 Oct 2019 09:18:39 +0000
Date: Thu, 17 Oct 2019 12:18:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Adham Abozaeid <adham.abozaeid@microchip.com>
Subject: [PATCH] staging: wilc1000: potential corruption in
 wilc_parse_join_bss_param()
Message-ID: <20191017091832.GB31278@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910170084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910170084
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
 Ajay Singh <ajay.kathat@microchip.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The "rates_len" value needs to be capped so that the memcpy() doesn't
copy beyond the end of the array.

Fixes: c5c77ba18ea6 ("staging: wilc1000: Add SDIO/SPI 802.11 driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/wilc1000/wilc_hif.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/wilc1000/wilc_hif.c b/drivers/staging/wilc1000/wilc_hif.c
index 0ac2b6ac50b0..e0a95c5cc0d5 100644
--- a/drivers/staging/wilc1000/wilc_hif.c
+++ b/drivers/staging/wilc1000/wilc_hif.c
@@ -479,6 +479,8 @@ void *wilc_parse_join_bss_param(struct cfg80211_bss *bss,
 	rates_ie = cfg80211_find_ie(WLAN_EID_SUPP_RATES, ies->data, ies->len);
 	if (rates_ie) {
 		rates_len = rates_ie[1];
+		if (rates_len > WILC_MAX_RATES_SUPPORTED)
+			rates_len = WILC_MAX_RATES_SUPPORTED;
 		param->supp_rates[0] = rates_len;
 		memcpy(&param->supp_rates[1], rates_ie + 2, rates_len);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
