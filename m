Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCDF159BE6
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 23:04:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51BD987AAF;
	Tue, 11 Feb 2020 22:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrR+pC7-Px4b; Tue, 11 Feb 2020 22:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 945158756C;
	Tue, 11 Feb 2020 22:04:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73B3C1BF980
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 22:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 69E4886786
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 22:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4DbUfrFCoWUX for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 22:04:24 +0000 (UTC)
X-Greylist: delayed 00:25:00 by SQLgrey-1.7.6
Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com
 [192.185.144.29])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3490F866F6
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 22:04:24 +0000 (UTC)
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway31.websitewelcome.com (Postfix) with ESMTP id 1E7C6859F0
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 15:14:49 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1croj7keJEfyq1crpjHind; Tue, 11 Feb 2020 15:14:49 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UxXLm2e5tI+unjVCZMlCPtSbwk/EQxrDUm9dV5vSwYM=; b=BfvKwi6nIvn6jAS8xL4I+BfQ6A
 Kt6HICeS/cN87mOJIZoWN8ukUE5bGFgZSZBBI6+OQYoQjyzK2ACiXNfK1uUR274QfOJmW2wIjMXID
 sp7gWOqOXPw2kC6komMHMfPjSxa6ml6jF/fMDHGJ0OhveAEoKOa9IRwsAS7HTipkkxi/F0k1xQpmF
 xS6WZsU9yBunn/lSUyrU9jYM6DzNixC4UFQCJjhqHxhnEeiswnHOWEJMV+TvRA9c/6fgLWu7KEP5c
 VNZ3P5NIWBwsvnbObFajjtKjS/pTR/G5PbXibcqOGAfpoi0ohorhBDnIR9DMuhJbX3DqY5UEZ1WkN
 dOuzA3mg==;
Received: from [200.68.140.36] (port=21551 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1crn-002Eb7-GS; Tue, 11 Feb 2020 15:14:47 -0600
Date: Tue, 11 Feb 2020 15:17:22 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: David Kershner <david.kershner@unisys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: unisys: visorinput: Replace zero-length array with
 flexible-array member
Message-ID: <20200211211722.GA1640@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1crn-002Eb7-GS
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:21551
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 32
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
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
Cc: devel@driverdev.osuosl.org, sparmaintainer@unisys.com,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/staging/unisys/visorinput/visorinput.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
index 9693fb559052..6d202cba8575 100644
--- a/drivers/staging/unisys/visorinput/visorinput.c
+++ b/drivers/staging/unisys/visorinput/visorinput.c
@@ -111,7 +111,7 @@ struct visorinput_devdata {
 	/* size of following array */
 	unsigned int keycode_table_bytes;
 	/* for keyboard devices: visorkbd_keycode[] + visorkbd_ext_keycode[] */
-	unsigned char keycode_table[0];
+	unsigned char keycode_table[];
 };
 
 static const guid_t visor_keyboard_channel_guid = VISOR_KEYBOARD_CHANNEL_GUID;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
