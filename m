Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 057F4B478A
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 08:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EBA6204CE;
	Tue, 17 Sep 2019 06:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57ZjCyGQ7S53; Tue, 17 Sep 2019 06:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 260DC20409;
	Tue, 17 Sep 2019 06:34:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 334531BF301
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 06:34:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FD802035C
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 06:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wfrJVIKTo-t5 for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 06:34:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id A70882001A
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 06:34:04 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8H6T0rl062376;
 Tue, 17 Sep 2019 06:34:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=QZJbNWf++Z67872n7yW1uz2tRZW0AIL0w9a2DxTcWBI=;
 b=qNlof35rchTuf/b01+EmLMZk9Jpnl3mhF7p0gxiKclEdsUDHfz0VEAQPGVmJVgmcgxZA
 5aROcgVQaOkHu5txY2VKn1B5+/7TzgY1O0y/h23TGggJd9quAzjD5YFxQX4ZvHr56ds8
 OaW4Hq/km95Ti89WGpLCCVOccugeYFO6FGdglIOI+cgGDH85AQVrnA/zHVKTR5Kvhlc3
 BXTRBqRoaHyvgnBiPbsV9WUWyxxsN0P8CzDmCKYNR00UZP0q6muEkgnR1VpCg8KSiSTp
 Nfv35F/63Z7m0892sar9Da7agA1OtE6I9hKA9200eL5c19+/nKaNt5h6PKCKmveT98Mh nw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2v2bx2v7th-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Sep 2019 06:34:03 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8H6XaAn160795;
 Tue, 17 Sep 2019 06:34:03 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2v2jxgtkfa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Sep 2019 06:34:03 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8H6XvMo026025;
 Tue, 17 Sep 2019 06:33:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 16 Sep 2019 23:33:57 -0700
Date: Tue, 17 Sep 2019 09:33:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: comedi: drivers: prevent memory leak
Message-ID: <20190917063004.GG18977@kadam>
References: <20190917024147.26290-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917024147.26290-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=827
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909170071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=901 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909170071
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 emamd001@umn.edu, smccaman@umn.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 16, 2019 at 09:41:43PM -0500, Navid Emamdoost wrote:
> In das1800_attach, the buffer allocated via kmalloc_array needs to be
> released if an error happens.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Commedit calls ->detach() if the ->attach() fails so this patch would
lead to a double free.  See comedi_device_attach():

drivers/staging/comedi/drivers.c
   983          }
   984          if (!driv->attach) {
   985                  /* driver does not support manual configuration */
   986                  dev_warn(dev->class_dev,
   987                           "driver '%s' does not support attach using comedi_config\n",
   988                           driv->driver_name);
   989                  module_put(driv->module);
   990                  ret = -EIO;
   991                  goto out;
   992          }
   993          dev->driver = driv;
   994          dev->board_name = dev->board_ptr ? *(const char **)dev->board_ptr
   995                                           : dev->driver->driver_name;
   996          ret = driv->attach(dev, it);
                      ^^^^^^^^^^^^^^^^^^^^^
   997          if (ret >= 0)
   998                  ret = comedi_device_postconfig(dev);
   999          if (ret < 0) {
  1000                  comedi_device_detach(dev);
                        ^^^^^^^^^^^^^^^^^^^^^^^^^

  1001                  module_put(driv->module);
  1002          }
  1003          /* On success, the driver module count has been incremented. */

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
