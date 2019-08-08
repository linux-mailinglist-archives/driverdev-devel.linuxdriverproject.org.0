Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DD486059
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 12:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B760288158;
	Thu,  8 Aug 2019 10:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vgs54JzFcbh; Thu,  8 Aug 2019 10:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 015A486FAE;
	Thu,  8 Aug 2019 10:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88E4B1BF386
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 10:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85E7681CA3
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 10:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yv51bOdgd9av for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 10:49:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F24B081B87
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 10:49:15 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78AnBFu068756;
 Thu, 8 Aug 2019 10:49:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=u1r0CXQTPv3+czS2lywp6Utw744U+M4gNwd3K7kHz+Q=;
 b=p1doUDAXPqvGYHgoaKNWqFu1F9DhNGYx4+wLvbBVx49JFStSDlJa3RgiFwEXQxGeLaRD
 Wg1EFwrVVygNf0a5I0Z0Xx6CA9SiqUoZqaInqQyFKgBn4c1lebgjXlkBK7c+k7NXZRAs
 FLwdkdkbRxCHlxfLA9QnyVosAzNcJx8wj/T3tCXIAcNsuQD4m7PJgTDzKacMLmzSezUB
 SZA7nJ0G5dw26v3iP2woJ6x04tpb5vG7CDjrh7qcyz+WDhx2GHnAKpwALIFC9iTBK0Ax
 180ar8irPpJwFCBUxp767Tdj0pMcfR3xcD1g/kc9Gj0td0yinptmoJAvpnzkLZuEwOK7 sw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=u1r0CXQTPv3+czS2lywp6Utw744U+M4gNwd3K7kHz+Q=;
 b=IYsX9CWb4NN1Q/GJGrpom+tNGSUWp7h1zKD8E98RpjgZl6aF/vhYpix0Pj5h9XVtJokM
 lqyLwzNo6vkjA1jS3ukdtxkmcPOFb57ha1TGJgdlN470COkUzO2w9esuXhb6oKjbVnEF
 qsH4qAzfd8nzaSPkOx7waX5CxCzIXQFMtAQTPJ0PHF0wKmEkwOQ0mfGDniXxb2uC+EE7
 mau2X0D2AJ5H6qGeR9ip3uU/ZHEWZykzvsSFVodWiBLPJVjYfiVU/4WpLPeyZp8UAdfY
 g0yQTBW00BaIcwSFqjasc4MryN3Hjlo+ZElINdJheePOvfgN0J9Ewfj8JTjkRC+/rzSr TQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2u8has8d7t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 10:49:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78An8Bc096259;
 Thu, 8 Aug 2019 10:49:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2u75790avf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 10:49:13 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x78AmcUE031242;
 Thu, 8 Aug 2019 10:48:38 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 08 Aug 2019 03:48:37 -0700
Date: Thu, 8 Aug 2019 13:48:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ajay.kathat@microchip.com
Subject: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Message-ID: <20190808104831.GA854@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908080119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908080119
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Ajay Singh,

The patch 9bc061e88054: "staging: wilc1000: added support to
dynamically add/remove interfaces" from Jun 26, 2019, leads to the
following static checker warning:

	drivers/staging/wilc1000/wilc_wlan.c:497 wilc_wlan_handle_txq()
	warn: missing error code here? 'wilc_wlan_txq_get_first()' failed.

drivers/staging/wilc1000/wilc_wlan.c
   474  int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
   475  {
   476          int i, entries = 0;
   477          u32 sum;
   478          u32 reg;
   479          u32 offset = 0;
   480          int vmm_sz = 0;
   481          struct txq_entry_t *tqe;
   482          int ret = 0;
                    ^^^^^^^

   483          int counter;
   484          int timeout;
   485          u32 vmm_table[WILC_VMM_TBL_SIZE];
   486          const struct wilc_hif_func *func;
   487          u8 *txb = wilc->tx_buffer;
   488          struct net_device *dev;
   489          struct wilc_vif *vif;
   490  
   491          if (wilc->quit)
   492                  goto out;
   493  
   494          mutex_lock(&wilc->txq_add_to_head_cs);
   495          tqe = wilc_wlan_txq_get_first(wilc);
   496          if (!tqe)
   497                  goto out;
                        ^^^^^^^^
Should this really be a success path?

   498          dev = tqe->vif->ndev;
   499          wilc_wlan_txq_filter_dup_tcp_ack(dev);
   500          i = 0;
   501          sum = 0;
   502          do {
   503                  if (tqe && (i < (WILC_VMM_TBL_SIZE - 1))) {

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
