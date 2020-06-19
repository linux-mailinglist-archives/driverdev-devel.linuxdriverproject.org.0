Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E67200B7F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 16:31:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 020AA2288E;
	Fri, 19 Jun 2020 14:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72Hagds9a-Hc; Fri, 19 Jun 2020 14:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA56721F76;
	Fri, 19 Jun 2020 14:31:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3101BF860
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 14:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C00A87293
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 14:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3GToERxga3s for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 14:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B96E386F99
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 14:31:40 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JEBuqI170324;
 Fri, 19 Jun 2020 14:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=jcaWTu8TTCJeW29NCwS+6EkwN/A4iYHkwPeu7/XE5+w=;
 b=HB16Npk3IdUUXMSCubMX27cGZ5Zz/7geIv+Cwo8d9vCVNpO0Ra7n/MjO2i0sqNiyffer
 LN5FylgO8zg8yyL5+uj8JF2FEgOTptnaURKmf1g7hg80T7UfQHY0bx1SaCZK4nPbNpeu
 PvMuf5y/zc5b2FaW4Izqu5nswgQLatEGsj43TnUnGalKqLz9j3HSMTJHm/SoDsEthbCK
 aKiYoSrJ2RsgYzv4dZ60Yy82LRsZoGsOqAlUsONPtuMxPixz55r4d5gZqKj/g+2wuAMp
 Hzu3EM4g9pso0jqn6KLCawECehVTeNafxgY+omGwal6/8NY6vjgDm1eyRTiCQf8Ciy1h /g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31q66071be-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 14:31:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JEDHj2140785;
 Fri, 19 Jun 2020 14:31:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 31q66rjw5f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jun 2020 14:31:38 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05JEVb3K028572;
 Fri, 19 Jun 2020 14:31:38 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 07:31:37 -0700
Date: Fri, 19 Jun 2020 17:31:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: nsaenzjulienne@suse.de
Subject: [bug report] staging: vchiq_arm: use list_for_each_entry when
 accessing bulk_waiter_list
Message-ID: <20200619143132.GE267142@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=3
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006190106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 suspectscore=3 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190106
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Nicolas Saenz Julienne,

The patch 46e4b9ec4fa4: "staging: vchiq_arm: use list_for_each_entry
when accessing bulk_waiter_list" from Nov 20, 2018, leads to the
following static checker warning:

	drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:427 vchiq_blocking_bulk_transfer()
	warn: iterator used outside loop: 'waiter'

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
   417          mutex_lock(&instance->bulk_waiter_list_mutex);
   418          list_for_each_entry(waiter, &instance->bulk_waiter_list, list) {
                ^^^^^^^^^^^^^^^^^^^^^^^^^^
The list iterator is always non-NULL.

   419                  if (waiter->pid == current->pid) {
   420                          list_del(&waiter->list);
   421                          break;
   422                  }
   423          }
   424          mutex_unlock(&instance->bulk_waiter_list_mutex);
   425  
   426          if (waiter) {
                    ^^^^^^
In the original code "waiter" was only non-NULL if we found the correct
pid, but now it's always non-NULL.

   427                  struct vchiq_bulk *bulk = waiter->bulk_waiter.bulk;
   428  
   429                  if (bulk) {
   430                          /* This thread has an outstanding bulk transfer. */
   431                          if ((bulk->data != data) ||
   432                                  (bulk->size != size)) {
   433                                  /* This is not a retry of the previous one.
   434                                   * Cancel the signal when the transfer
   435                                   * completes.
   436                                   */
   437                                  spin_lock(&bulk_waiter_spinlock);
   438                                  bulk->userdata = NULL;
   439                                  spin_unlock(&bulk_waiter_spinlock);
   440                          }
   441                  }
   442          }
   443  
   444          if (!waiter) {
                    ^^^^^^^
This is dead code now.  I'm a bit surprised this bug didn't show up
during testing.

   445                  waiter = kzalloc(sizeof(struct bulk_waiter_node), GFP_KERNEL);
   446                  if (!waiter) {
   447                          vchiq_log_error(vchiq_core_log_level,
   448                                  "%s - out of memory", __func__);
   449                          return VCHIQ_ERROR;
   450                  }
   451          }
   452  
   453          status = vchiq_bulk_transfer(handle, data, size, &waiter->bulk_waiter,

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
