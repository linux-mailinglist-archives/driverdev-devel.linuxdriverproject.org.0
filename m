Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 455C062F36C
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Nov 2022 12:15:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB49A61052;
	Fri, 18 Nov 2022 11:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB49A61052
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGXc-wWbO4oL; Fri, 18 Nov 2022 11:15:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91A4861031;
	Fri, 18 Nov 2022 11:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91A4861031
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D48D1BF2BE
 for <devel@linuxdriverproject.org>; Fri, 18 Nov 2022 11:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 236C282174
 for <devel@linuxdriverproject.org>; Fri, 18 Nov 2022 11:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 236C282174
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3t8V8DfLk1S for <devel@linuxdriverproject.org>;
 Fri, 18 Nov 2022 11:15:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B338481F2B
Received: from mx.swemel.ru (mx.swemel.ru [95.143.211.150])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B338481F2B
 for <devel@driverdev.osuosl.org>; Fri, 18 Nov 2022 11:15:28 +0000 (UTC)
From: Denis Arefev <arefev@swemel.ru>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rts5208: Added value check
Date: Fri, 18 Nov 2022 14:15:23 +0300
Message-Id: <20221118111523.123463-1-arefev@swemel.ru>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=swemel.ru; s=mail; t=1668770123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=oJ+C4azwrz0T1Xq/DoyYfvD0U7Rp9/tHMKhuIZvRgnw=;
 b=UXv93xb3Ze7gwRU/niYHPo3H8MG295UqhEN+zk73xSRUqM4ciw45FZo1nKtqpHh2Mrc7PH
 ZdievLhBH4bgiNb6TJQfqxrW2fw//08XMDpZHa6QtTe2f36gylCDqp1OmZDUvT40AtTbI6
 RQhB8KS7LvQMYv8ILX/jQ56hazsUb+Y=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=swemel.ru header.i=@swemel.ru
 header.a=rsa-sha256 header.s=mail header.b=UXv93xb3
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
Cc: devel@driverdev.osuosl.org, vfh@swemel.ru, trufanov@swemel.ru,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added value check.
Return value of a function 'ms_set_rw_reg_addr'
called at ms.c:1770 is not checked,
but it is usually checked for this function

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Signed-off-by: Denis Arefev <arefev@swemel.ru>
---
 drivers/staging/rts5208/ms.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 9001570a8c94..e884ee5da317 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -1769,6 +1769,8 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
 
 		retval = ms_set_rw_reg_addr(chip, OVERWRITE_FLAG, MS_EXTRA_SIZE,
 					    SYSTEM_PARAM, (6 + MS_EXTRA_SIZE));
+		if (retval != STATUS_SUCCESS)
+			return STATUS_FAIL;
 
 		ms_set_err_code(chip, MS_NO_ERROR);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
