Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4A183B91
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 22:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0596E875D4;
	Thu, 12 Mar 2020 21:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBsgiJBe0wzy; Thu, 12 Mar 2020 21:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A1348748E;
	Thu, 12 Mar 2020 21:43:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D30F81BF3C8
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CCE322041B
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 21:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vAJfs5AjUjQX for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 21:43:46 +0000 (UTC)
X-Greylist: delayed 00:05:09 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by silver.osuosl.org (Postfix) with ESMTPS id 498B51FD90
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 21:43:46 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MsI0I-1jRHCQ2BFC-00tnmK; Thu, 12 Mar 2020 22:38:28 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 0/2] staging: bcm2835-camera: Improve bm2835_mmal_v4l2_ctrl
Date: Thu, 12 Mar 2020 22:37:37 +0100
Message-Id: <1584049059-6772-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:BfBaKtz+Mn0xGJ8wvufKLCBCN5jcKraI+D+u9LYsquxPkHOYi40
 YFAo15tQxUJAz5nTCs07TwzEDjqEMYLPTnisms5SvA/8/VMREtw4ec/i9ZpvLEd8pfrzpiu
 LoA3A15sEtCCkcwWT0gzCQESF0zdgIM0qt98xwcX21BJNU8/1s+GGtv+rmsSAx/p4EqvD4g
 yPLPpXo05+fL/gn7PBDiA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:rxKaE8Ekk0Q=:Sjw7JM18jFt4j9VHlccpZD
 5JIT6OoX5uvulDrckkkci/yXieFNXkaQsCYD6WECulzQth37POWvTkspCHWIg5vgM32y++I5Q
 DllS2XX4C757LrnuHSijYO46QUKv4YlLd2O4mYPH/ZBMrgXMhNhHihS5k8wY4p3cvKr4YB+u6
 JrimAtAB1UZ+UIlVngt/TiBTqOiSe1LrhncoHl7TFLvlKPYpJFmwpmF8Rujcv4HNWInrKYLZ6
 HKdsHuxvlaZr4Il5YZd7vjP9cYyx85cFWeYuCNKPcKx78gF6kCc/YPcTbBKFFAK8FTEFL0YYa
 Aw7XauXHfPucV78gxQm+ZDF/icoMR/aut0Q0V2CYorABhyxjofdHqwUawf0sIKGWcjouFXofx
 pyGrYgHYfPtCO7dxD+PVuIEvzo5wushDoGuBU6NikWu5Im9CUnGqPRMpn6jovrNNaSVJ9KMVp
 zxTqqHtqbp3Tc3E6ri8n7nk9aKN4yRe51pT8/wcV2SE+SddKPkEze1mjISGfvwjVTjT3dycuW
 I8r+0xFaq9+eTRogFsp/8PVM6BMEay/T5mDvVsdVe8dI3ozyAzgTXbXU8fWaVIvNpSIo/k/kq
 xwMPOmOr5f1c45rVHnaO1gLGatW+T9xY9fPhY1gWy4vXL047bX7tdAFI1DCNJZOmRwXaVX1rM
 EJN+Kco6/2+SQDegqdburqpNxlkvGQMrDUqUbw3tsCbOO2M/9B6F9aEULflfyP9uvAUjleETY
 Le7T0dKI6DYH223Pw0Xj0rd/hrAl6G9dxNmEWL3sS7LbGkPZqGli5acnZ8N0MMuE48JvVzdni
 SekIcYuqwKlP2gWDCNCuIxnP377ikiTn6/lyDQD6T/xj1t4oPsvzgFWq6ypUX/hq07AmXM/
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These 2 patches improves the V4L2 controls in the bcm2835 camera driver.

Stefan Wahren (2):
  staging: bcm2835-camera: Drop unused ignore_errors flag
  staging: bcm2835-camera: Use designators to init V4L2 controls

 .../vc04_services/bcm2835-camera/controls.c        | 458 +++++++++++++--------
 1 file changed, 278 insertions(+), 180 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
