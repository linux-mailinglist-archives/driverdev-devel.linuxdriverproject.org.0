Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BF93183DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 04:13:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EE04873F7;
	Thu, 11 Feb 2021 03:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WC41-Zue5Yns; Thu, 11 Feb 2021 03:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEB10873F9;
	Thu, 11 Feb 2021 03:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E81551BF85D
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 03:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4F1C873D7
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 03:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqsgTVYLk1NP for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 03:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from qq.com (out203-205-221-231.mail.qq.com [203.205.221.231])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C434873D4
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 03:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1613013162;
 bh=knNJrx3LVxOuEdABE50vJvQR8RErcZaar4R94plm5JE=;
 h=From:To:Cc:Subject:Date;
 b=JfT117oRG0f5yKphgpVZm0kFmhEwF7lqIDEEIB2zM9KMX4j1cidDQ88ciV4HnR1J8
 pLHhJBOWroxs8RTE9p19/+gXhR+Hb6pkFMpq07Tg7R20IrwC0VEy7cDRwT2DrVq0hU
 7SK5iYImWIVymc3YNMkBliT4jOHIJ/4KMkzZl0NU=
Received: from sig.localdomain ([1.193.79.12])
 by newxmesmtplogicsvrsza8.qq.com (NewEsmtp) with SMTP
 id 32719440; Thu, 11 Feb 2021 11:12:39 +0800
X-QQ-mid: xmsmtpt1613013159toexcuqn7
Message-ID: <tencent_21CFC58E6013D47A55691E4F4C6C4CF20706@qq.com>
X-QQ-XMAILINFO: MgmB7lY4LTHyqn6kOSvJxgv3sMkhNOvcSt1AQHuzwmipRLc5qr+aOhkrsQ6wUv
 EJUjgkwEHU2rioI6vqgDM5STFeWGltCxvD3Ua06Z8TL1Boi6VzBoSWN46BwVm/tTWVO0Pd34+9jH
 Ewln/0YC573T896GQNAhmlt80fiEi1VY6P2YmF3z+wpt2u7SJ/kS8ToY8x1+O70Dr0b+0cf/usHH
 Re/xPi8WQHOwOwWNYfQmLKqNkkZ6bfLYo9T7jDDvAm/OyGLkNbchFAii9iruhMUaDieWtbynV2zv
 BpuRV2Lhf2+l2rptnKOBgHEr5begJrW0R8V5T7xzyr++GxK7lXnGeu8tQNom+9glc1stLEodkWd7
 smLR4x2Cp0uQlIaW9whmr/UcVcstSpklPQqZlSvdFWTmO0HLjU5S9WYofytpCQMkV58Ox1aQVt7L
 1wtEMu3Dnz5D0BMNs9T46ZUsGZGLaxXuoebvBioPn+O68DZ04TCstbJ/KfVkBm2vQAjbUFyV/Rlm
 sXbll2axSr9agzSkacOvr34FPGT8wtLiDxLoXRMyTxhUR/OGHX0pUUEBlIVkqSsWSaL0v8iWCh4D
 rrXJ93V3Y/kGaStWOtw/7qEi7Z0kjLS7ymS+T+SbaFdpLXPtm7jaOlD9u5wd1vZlBZ2WIl9fBB1y
 VxoF7pg7ZhKMsoxdzBWScH2mS7ItQB6JXS9EanuJM5tEjmRYpypWVOMsURa4g77H9r/Kzrm/o6a8
 QecyvHoEXFpKlfe6C47KbPYIFF/GQnsqUkFALVu7EQMJ87IFQijy2rYW4ML2dtwPzkLNkcB2yqWZ
 AfQOCKLiBBIA==
From: Yujia Qiao <rapiz@foxmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH] Staging: vt6655: Replace a camel case variable name
Date: Thu, 11 Feb 2021 11:12:39 +0800
X-OQ-MSGID: <20210211031239.629129-1-rapiz@foxmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace camel case variable names with snake case in baseband.c.

Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
---
So I screwed up last two emails too. One with no subject and one with
the wrong commit message. This times...I hope it's the last email for
this patch. Sorry for the bother again.

 drivers/staging/vt6655/baseband.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 6b25d75d2501..1aa675241599 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1683,7 +1683,7 @@ static unsigned char byVT3253B0_AGC[CB_VT3253B0_AGC][2] = {
 	{0xF0, 0x00},
 };
 
-static const unsigned short awcFrameTime[MAX_RATE] = {
+static const unsigned short awc_frame_time[MAX_RATE] = {
 		10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };
 
@@ -1716,7 +1716,7 @@ unsigned int bb_get_frame_time(unsigned char by_preamble_type,
 	if (rate_idx > RATE_54M)
 		return 0;
 
-	rate = (unsigned int)awcFrameTime[rate_idx];
+	rate = (unsigned int)awc_frame_time[rate_idx];
 
 	if (rate_idx <= 3) {		    /* CCK mode */
 		if (by_preamble_type == 1) /* Short */
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
