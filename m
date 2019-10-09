Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7A3D0F43
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 14:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EA1C8692B;
	Wed,  9 Oct 2019 12:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZIWDvzARExD; Wed,  9 Oct 2019 12:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1415F86916;
	Wed,  9 Oct 2019 12:56:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8B91BF2B3
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 055A187894
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iE1oZXp-WdXo for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 12:56:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26B6F87836
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 12:56:41 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4C2352441E001B4DC742;
 Wed,  9 Oct 2019 20:56:39 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 20:56:28 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <jerome.pouiller@silabs.com>, <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 1/3] staging: wfx: Make function 'sram_write_dma_safe',
 'load_firmware_secure' static
Date: Wed, 9 Oct 2019 21:03:37 +0800
Message-ID: <1570626219-37733-2-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570626219-37733-1-git-send-email-zhengbin13@huawei.com>
References: <1570626219-37733-1-git-send-email-zhengbin13@huawei.com>
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

Fix sparse warnings:

drivers/staging/wfx/fwio.c:83:5: warning: symbol 'sram_write_dma_safe' was not declared. Should it be static?
drivers/staging/wfx/fwio.c:229:5: warning: symbol 'load_firmware_secure' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/wfx/fwio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
index 8fb4a9f..39e1258 100644
--- a/drivers/staging/wfx/fwio.c
+++ b/drivers/staging/wfx/fwio.c
@@ -80,7 +80,8 @@ static const char * const fwio_error_strings[] = {
  * NOTE: it may also be possible to use 'pages' from struct firmware and avoid
  * bounce buffer
  */
-int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf, size_t len)
+static int
+sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf, size_t len)
 {
 	int ret;
 	const u8 *tmp;
@@ -226,7 +227,7 @@ static void print_boot_status(struct wfx_dev *wdev)
 	}
 }

-int load_firmware_secure(struct wfx_dev *wdev)
+static int load_firmware_secure(struct wfx_dev *wdev)
 {
 	const struct firmware *fw = NULL;
 	int header_size;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
