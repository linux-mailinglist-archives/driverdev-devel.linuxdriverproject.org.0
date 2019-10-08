Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FA4CF224
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 07:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A555D875AD;
	Tue,  8 Oct 2019 05:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U93P5W7KvAyw; Tue,  8 Oct 2019 05:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76AF186FFF;
	Tue,  8 Oct 2019 05:32:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A61591BF2A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D3BF87E43
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mOD9uu9KARz for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 05:32:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B547087DBB
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 05:32:03 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D0DFFFDC051DF426E9E4;
 Tue,  8 Oct 2019 13:31:59 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 13:31:51 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 0/6] staging: Remove a bounch set of set but not used variables
Date: Tue, 8 Oct 2019 13:38:56 +0800
Message-ID: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
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

zhengbin (6):
  staging: bcm2835-audio: Remove set but not used variable 'status'
  staging: sm750fb: Remove set but not used variable 'uiActualPixelClk'
  staging: sm750fb: Remove set but not used variable 'actual_mx_clk'
  staging: comedi: Remove set but not used variable 'data'
  staging: comedi: Remove set but not used variable 'hi'
  staging: comedi: Remove set but not used variable 'aref'

 drivers/staging/comedi/drivers/dt2814.c                     | 3 ---
 drivers/staging/comedi/drivers/dt2815.c                     | 3 +--
 drivers/staging/comedi/drivers/dt3000.c                     | 3 +--
 drivers/staging/sm750fb/ddk750_chip.c                       | 3 +--
 drivers/staging/sm750fb/ddk750_mode.c                       | 3 +--
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 5 ++---
 6 files changed, 6 insertions(+), 14 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
