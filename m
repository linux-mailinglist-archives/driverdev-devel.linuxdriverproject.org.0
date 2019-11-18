Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B160FFFFAD
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 08:39:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 176EB87AFA;
	Mon, 18 Nov 2019 07:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XN7xQAuzZx5Q; Mon, 18 Nov 2019 07:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6373287A2F;
	Mon, 18 Nov 2019 07:38:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78CF31BF424
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F4F985C43
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 07:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4VxenYx2UEd9 for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9671185C28
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 07:38:52 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id ED46E34F34FF26CF560C;
 Mon, 18 Nov 2019 15:38:47 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 15:38:38 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <nishkadg.linux@gmail.com>,
 <hariprasad.kelam@gmail.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH 0/5] staging: rtl8723bs: remove some unused variables
Date: Mon, 18 Nov 2019 15:45:51 +0800
Message-ID: <1574063156-68155-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

zhengbin (5):
  staging: rtl8723bs: remove set but not used variable
    'pHalData','pregistrypriv'
  staging: rtl8723bs: remove set but not used variable
    'pHalData','pdmpriv'
  staging: rtl8723bs: remove set but not used variable
    'pmlmeinfo','pHalData'
  staging: rtl8723bs: remove set but not used variable
    'notify_ielen','notify_ie','notify_interval','notify_capability'
  staging: rtl8723bs: remove set but not used variable 'change','pos'

 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c      | 10 ----------
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c |  6 ------
 drivers/staging/rtl8723bs/hal/sdio_halinit.c      |  5 -----
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 15 +--------------
 4 files changed, 1 insertion(+), 35 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
