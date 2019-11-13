Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FDFFB7A7
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 19:33:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C18B227B1;
	Wed, 13 Nov 2019 18:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6jLUJCdqXSJN; Wed, 13 Nov 2019 18:33:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E15E20355;
	Wed, 13 Nov 2019 18:33:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4501BF41D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F0FC87E7A
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAl6yG-RaNpA for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 18:33:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED2A587B07
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 18:33:32 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADIT0kp118587;
 Wed, 13 Nov 2019 18:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=nOOCg2oJImVnmxB1PMsy8pH0KI3nQF2RaQWthBBBPq0=;
 b=UPmyf/88ycTCrA7YjZK7ZqN3OWRKQBeyyi+AixPMz0vARe3W0W2DL3fnUy0/TiiLk8ti
 ibgxskPH1/JkpgB1vWCtENOqkKP2a0DP5E5k2pLO+YUjuR0gf66Nrk+I7VtRfOc5RIBO
 lXAtp2sYxNbVdQubBtbkJE5syp0tkOc9vAnPed1t6rVfmGfvoDEu9YAL3RkJOjiG1xaV
 659Exk40QUr6ycpSHaAUtT/418hF2corXB9MS5KZxxliQgtLL5RVRAew7e3R+mCzjbfa
 MDB+Fr3OrJVwuJi6oFff3iPkPJr7Cnk2znxf3LYHcTOUxZV8VV+/q8XF2UKYjob8Y3Jl aA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2w5ndqeetu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:33:31 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADISxcR160223;
 Wed, 13 Nov 2019 18:33:31 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2w7vppqxau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:33:31 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xADIXTJb010949;
 Wed, 13 Nov 2019 18:33:29 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 Nov 2019 10:33:28 -0800
Date: Wed, 13 Nov 2019 21:33:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ajay.kathat@microchip.com
Subject: [bug report] staging: wilc1000: added support to dynamically
 add/remove interfaces
Message-ID: <20191113183322.a54mh2w6dulklgsd@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911130158
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130158
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

[ When we renamed the files, then all the old warnings showed up as
  new warnings again.  - dan ]

Hello Ajay Singh,

The patch 9bc061e88054: "staging: wilc1000: added support to
dynamically add/remove interfaces" from Jun 26, 2019, leads to the
following static checker warning:

	drivers/staging/wilc1000/wlan.c:497 wilc_wlan_handle_txq()
	warn: missing error code here? 'wilc_wlan_txq_get_first()' failed.

drivers/staging/wilc1000/wlan.c
   474  int wilc_wlan_handle_txq(struct wilc *wilc, u32 *txq_count)
   475  {
   476          int i, entries = 0;
   477          u32 sum;
   478          u32 reg;
   479          u32 offset = 0;
   480          int vmm_sz = 0;
   481          struct txq_entry_t *tqe;
   482          int ret = 0;
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
                        ^^^^^^^^

One of my coding hints is that "goto out;" is always wrong.  In the
best case the name is too ambiguous so it doesn't tell what the goto
does.  But quite often the goto does too much.  For example, it could do
kfree(foo->bar); where foo is NULL so it's a NULL dereference.  Always
always distrust code which does a goto out.

In this case we are unlocking a lock but we aren't holding the lock.
Is this a success path?  That's complicated to say and becomes even
more complicated when we review the rest of this function.  It appears
that this function returns -ENOBUFS or random meaningless nonsense.

   493  
   494          mutex_lock(&wilc->txq_add_to_head_cs);
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Lock.

   495          tqe = wilc_wlan_txq_get_first(wilc);
   496          if (!tqe)
   497                  goto out;
                        ^^^^^^^^^
In this case, Smatch complains that maybe the error code is wrong.
Are we setting "*txq_count" to the correct value?  It's hard to say.

   498          dev = tqe->vif->ndev;
   499          wilc_wlan_txq_filter_dup_tcp_ack(dev);
   500          i = 0;
   501          sum = 0;
   502          do {
   503                  if (tqe && (i < (WILC_VMM_TBL_SIZE - 1))) {
   504                          if (tqe->type == WILC_CFG_PKT)
   505                                  vmm_sz = ETH_CONFIG_PKT_HDR_OFFSET;
   506  
   507                          else if (tqe->type == WILC_NET_PKT)
   508                                  vmm_sz = ETH_ETHERNET_HDR_OFFSET;

[ snip ]

   666          ret = func->hif_clear_int_ext(wilc, ENABLE_TX_VMM);
   667          if (!ret)
   668                  goto out_release_bus;
                        ^^^^^^^^^^^^^^^^^^^^
These functions return 1 on success and 0 on failure.  We should set the
error code here.  There are several other similar places in this
function where we return zero on error.

   669  
   670          ret = func->hif_block_tx_ext(wilc, 0, txb, offset);
   671  
   672  out_release_bus:
   673          release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
   674  
   675  out:
   676          mutex_unlock(&wilc->txq_add_to_head_cs);
   677  
   678          *txq_count = wilc->txq_entries;
   679          return ret;
   680  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
