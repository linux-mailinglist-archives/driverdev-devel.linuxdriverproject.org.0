Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC7A216EB1
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jul 2020 16:27:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C21289A09;
	Tue,  7 Jul 2020 14:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cE9LPoB-p-bf; Tue,  7 Jul 2020 14:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71DED899FB;
	Tue,  7 Jul 2020 14:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E10051BF3C4
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 14:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE9F820477
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 14:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGjWPMd52sCV for <devel@linuxdriverproject.org>;
 Tue,  7 Jul 2020 14:27:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id D637720366
 for <devel@driverdev.osuosl.org>; Tue,  7 Jul 2020 14:27:47 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 067ERkbM128986;
 Tue, 7 Jul 2020 14:27:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : sender
 : to : cc : subject : message-id : mime-version : content-type;
 s=corp-2020-01-29; bh=4/u4U7jK1VK0xejwbRx/+sf3ijmyInp/T6rdQ1y4D+Q=;
 b=owfM7Li3Uw91OPywA42kQrOt5oI1Wq9V9AyvLQea/xo0KUKHxD+GJGB+fsmE4jtYOke7
 pJ+tE/E+6svShagee0UBT4b77LJ45sR7Qjgfhf+pbXRVYNn+SfeGvUdl41/sZTY6JZ8Y
 38t8CqOcSV+Dx+W2T2sTgYCzj259vgItnYfhQRWN8fMxWWJVN70Tg68hrW0D8vOotxLf
 8jYWDd5DQCmR60sfww0OkT5JE5FE4eB2eFswWKRZaqf3cir0TtuNmFTIGQlLi+aMpvRw
 33s/AMMOJ5cxcjaNXy4u2gZ0ozAWKLvyveUU3ZBqHdehVciMjpQ5TnTCKHYGKfiCVaDm BQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 323wacgmua-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 07 Jul 2020 14:27:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 067EOFxI175165;
 Tue, 7 Jul 2020 14:27:45 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3233px88kq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Jul 2020 14:27:45 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 067ERgBV010953;
 Tue, 7 Jul 2020 14:27:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 Jul 2020 07:27:41 -0700
Date: Tue, 7 Jul 2020 17:27:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jacopo Mondi <jacopo@jmondi.org>
Subject: [staging:staging-testing 32/135]
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: warning:
 Variable 'ret' is reassigned a value before the old one has been used.
Message-ID: <20200707142736.GD2549@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9674
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 spamscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007070107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9674
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 priorityscore=1501
 phishscore=0 spamscore=0 mlxlogscore=999 adultscore=0 cotscore=-2147483648
 suspectscore=0 impostorscore=0 bulkscore=0 mlxscore=0 clxscore=1011
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007070108
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
 kbuild-all@lists.01.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   14442181d20490945f341644bb8257e334b01447
commit: b18ee53ad297264a79cf4ea566663f20786b6455 [32/135] staging: bcm2835: Break MMAL support out from camera
compiler: gcc-9 (Debian 9.3.0-14) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

cppcheck warnings: (new ones prefixed by >>)

>> drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: warning: Variable 'ret' is reassigned a value before the old one has been used. [redundantAssignment]
    ret = destroy_component(instance, component);
        ^
   drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1720:7: note: Variable 'ret' is reassigned a value before the old one has been used.
     ret = disable_component(instance, component);
         ^
   drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c:1722:6: note: Variable 'ret' is reassigned a value before the old one has been used.
    ret = destroy_component(instance, component);
        ^

vim +/ret +1722 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c

7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1711  int vchiq_mmal_component_finalise(struct vchiq_mmal_instance *instance,
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1712  				  struct vchiq_mmal_component *component)
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1713  {
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1714  	int ret;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1715  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1716  	if (mutex_lock_interruptible(&instance->vchiq_mutex))
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1717  		return -EINTR;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1718  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1719  	if (component->enabled)
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1720  		ret = disable_component(instance, component);
                                                                                                                ^^^^^^
Not used.

7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1721  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27 @1722  	ret = destroy_component(instance, component);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1723  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1724  	mutex_unlock(&instance->vchiq_mutex);
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1725  
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1726  	return ret;
7b3ad5abf027b7 drivers/staging/media/platform/bcm2835/mmal-vchiq.c   Eric Anholt  2017-01-27  1727  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
