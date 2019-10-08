Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2260FCF3F7
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 09:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 886F822268;
	Tue,  8 Oct 2019 07:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHj+2l1ScqCM; Tue,  8 Oct 2019 07:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8374522624;
	Tue,  8 Oct 2019 07:35:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7CB81BF287
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B365287632
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 07:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V8NHBoaCbcF8 for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 07:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E44E8759C
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 07:34:58 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B08C9760A3B28A2F2F3E;
 Tue,  8 Oct 2019 15:34:55 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 15:34:44 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 0/6] staging: Remove a bounch set of set but not used
 variables
Date: Tue, 8 Oct 2019 15:41:49 +0800
Message-ID: <1570520515-2186-1-git-send-email-zhengbin13@huawei.com>
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

v1->v2: need to judge the value of status, If status != 0, just return

zhengbin (6):
  staging: bcm2835-audio: Need to judge the return value of
    vchi_msg_dequeue in audio_vchi_callback
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
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 3 +++
 6 files changed, 7 insertions(+), 11 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
