Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8611B9568
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 05:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEAC086234;
	Mon, 27 Apr 2020 03:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEL7d7q72bOX; Mon, 27 Apr 2020 03:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E53C862C7;
	Mon, 27 Apr 2020 03:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA9FF1BF976
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D5AB620511
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hd0Fb8a-zcgc for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 1DEB3204F5
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 03:24:33 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8DC01B4CCD3A16D4929B;
 Mon, 27 Apr 2020 11:24:24 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Mon, 27 Apr 2020
 11:24:15 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <gregkh@linuxfoundation.org>, <wambui.karugax@gmail.com>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/7] staging: rtl8723bs: some code cleanup
Date: Mon, 27 Apr 2020 11:23:35 +0800
Message-ID: <20200427032342.27211-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some warnings of '-Wunused-but-set-variable'.

Jason Yan (7):
  staging: rtl8723bs: os_dep: remove set but not used 'uintRet'
  staging: rtl8723bs: os_dep: remove set but not used 'size'
  Staging: rtl8723bs: core: remove set but not used 'ptxservq'
  staging: rtl8723bs: core: remove set but not used 'algthm'
  staging: rtl8723bs: core: remove set but not used 'listen_interval'
  staging: rtl8723bs: core: remove set but not used 'pwrpriv'
  staging: rtl8723bs: core:  remove set but not used 'pframe'

 drivers/staging/rtl8723bs/core/rtw_mlme.c         |  6 +-----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c     |  7 ++-----
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c      |  2 --
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 11 -----------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    |  6 ++++--
 5 files changed, 7 insertions(+), 25 deletions(-)

-- 
2.21.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
