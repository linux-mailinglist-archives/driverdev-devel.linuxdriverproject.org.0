Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CA0B285
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 05:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E430685D26;
	Sat, 27 Apr 2019 03:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8APeNKRti6dp; Sat, 27 Apr 2019 03:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7937F85C56;
	Sat, 27 Apr 2019 03:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 490901BF59A
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 03:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42ADD85A80
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 03:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zIXJAQYPjP5w for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 03:33:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www.osadl.org (www.osadl.org [62.245.132.105])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 515EA85A56
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 03:33:03 +0000 (UTC)
Received: from debian01.hofrr.at (178.115.242.59.static.drei.at
 [178.115.242.59])
 by www.osadl.org (8.13.8/8.13.8/OSADL-2007092901) with ESMTP id x3R3WuZF012005;
 Sat, 27 Apr 2019 05:32:56 +0200
From: Nicholas Mc Guire <hofrat@osadl.org>
To: David Lin <dtwlin@gmail.com>
Subject: [PATCH] staging: greybus: use proper return type for
 wait_for_completion_timeout
Date: Sat, 27 Apr 2019 05:27:25 +0200
Message-Id: <1556335645-7583-1-git-send-email-hofrat@osadl.org>
X-Mailer: git-send-email 2.1.4
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, Nicholas Mc Guire <hofrat@osadl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

wait_for_completion_timeout() returns unsigned long (0 on timeout or
remaining jiffies) not int. 

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
---
Problem located with experimental API conformance checking cocci script

Patch was compile-tested with: x86_64_defconfig + GREYBUS=m

Patch is against 5.1-rc6 (localversion-next is next-20190426)

 drivers/staging/greybus/uart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index b3bffe9..ff18112 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -323,7 +323,7 @@ static int send_break(struct gb_tty *gb_tty, u8 state)
 
 static int gb_uart_wait_for_all_credits(struct gb_tty *gb_tty)
 {
-	int ret;
+	unsigned long ret;
 
 	if (gb_tty->credits == GB_UART_FIRMWARE_CREDITS)
 		return 0;
-- 
2.1.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
