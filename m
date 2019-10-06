Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7279ACCFC5
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2445085F45;
	Sun,  6 Oct 2019 09:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GTqRh6dEB2qt; Sun,  6 Oct 2019 09:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9348C85EAF;
	Sun,  6 Oct 2019 09:03:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD98D1BF20D
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DADF885DF7
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z24uOKd4x_vb for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E25985BE4
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:03:00 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1C6F82017C889F685E9C;
 Sun,  6 Oct 2019 17:02:56 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 17:02:47 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <colin.king@canonical.com>,
 <hdegoede@redhat.com>, <hardiksingh.k@gmail.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 0/5] staging/rtl8723bs/core: Remove some set but not used
 variables
Date: Sun, 6 Oct 2019 17:09:54 +0800
Message-ID: <1570352999-45790-1-git-send-email-zhengbin13@huawei.com>
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
  staging: rtl8723bs: Remove set but not used variable 'i'
  staging: rtl8723bs: Remove set but not used variable 'tmp_aid'
  staging: rtl8723bs: Remove set but not used variable 'prwskeylen'
  staging: rtl8723bs: Remove set but not used variables
    'ppp','type','data'
  staging: rtl8723bs: Remove set but not used variable 'adapter'

 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 2 --
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 9 ++-------
 drivers/staging/rtl8723bs/core/rtw_security.c | 9 ---------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  | 3 ---
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 3 +--
 5 files changed, 3 insertions(+), 23 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
