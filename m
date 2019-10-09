Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B88B7D107A
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:44:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 507CE8660D;
	Wed,  9 Oct 2019 13:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id slQHteG2r2Lb; Wed,  9 Oct 2019 13:44:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BBB2860A8;
	Wed,  9 Oct 2019 13:44:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C278C1BF9B5
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD7D08691E
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xxs9akStriRs for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8B1B8671C
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:43:31 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 40BF86E7D7C08ADAD69E;
 Wed,  9 Oct 2019 21:43:25 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 21:43:19 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <jerome.pouiller@silabs.com>, <gregkh@linuxfoundation.org>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 0/3] staging: wfx: Make some functions static
Date: Wed, 9 Oct 2019 21:50:27 +0800
Message-ID: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
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

v1->v2: keep the declaration style consistent within the file

zhengbin (3):
  staging: wfx: Make function
    'sram_write_dma_safe','load_firmware_secure' static
  staging: wfx: Make function 'wfx_tx_queue_get' static
  staging: wfx: Make some functions static in sta.c

 drivers/staging/wfx/fwio.c  |  5 +++--
 drivers/staging/wfx/queue.c |  4 +++-
 drivers/staging/wfx/sta.c   | 16 ++++++++--------
 3 files changed, 14 insertions(+), 11 deletions(-)

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
