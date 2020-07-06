Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14077215832
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 15:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98A9325DA8;
	Mon,  6 Jul 2020 13:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4srP0zrPXey; Mon,  6 Jul 2020 13:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDEA325D29;
	Mon,  6 Jul 2020 13:20:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD7E81BF23F
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 13:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D931688C19
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 13:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GShHXBTkkqoz for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 13:20:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0AD3288C17
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 13:20:20 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jsR2f-0007tU-Ll; Mon, 06 Jul 2020 13:20:17 +0000
From: Colin King <colin.king@canonical.com>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: wfx: fix uninitialized variable bytes_done
Date: Mon,  6 Jul 2020 14:20:17 +0100
Message-Id: <20200706132017.487627-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The variable bytes_done is not initialized and hence the first
FIFO size check on bytes_done may be breaking prematurely from
the loop if bytes_done contains a large bogus uninitialized value.
Fix this by initializing bytes_done to zero.

Addresses-Coverity: ("Uninitialized scalar variable")
Fixes: a9408ad79ff3 ("staging: wfx: load the firmware faster")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/wfx/fwio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
index d9a886f3e64b..206c6cf6511c 100644
--- a/drivers/staging/wfx/fwio.c
+++ b/drivers/staging/wfx/fwio.c
@@ -177,7 +177,7 @@ static int wait_ncp_status(struct wfx_dev *wdev, u32 status)
 static int upload_firmware(struct wfx_dev *wdev, const u8 *data, size_t len)
 {
 	int ret;
-	u32 offs, bytes_done;
+	u32 offs, bytes_done = 0;
 	ktime_t now, start;
 
 	if (len % DNLD_BLOCK_SIZE) {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
