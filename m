Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D5B80175
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A490203CE;
	Fri,  2 Aug 2019 19:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fggo6R2tlZCc; Fri,  2 Aug 2019 19:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4C83B20427;
	Fri,  2 Aug 2019 19:56:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC8981BF2A3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E9297203CE
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbG04CYaHnMM for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:56:35 +0000 (UTC)
X-Greylist: delayed 00:08:22 by SQLgrey-1.7.6
Received: from mail3.marvil07.net (mail3.marvil07.net [139.162.190.158])
 by silver.osuosl.org (Postfix) with ESMTP id 367EE203C2
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 19:56:35 +0000 (UTC)
Received: from noir.ime.usp.br (unknown [143.107.45.1])
 by mail3.marvil07.net (Postfix) with ESMTPSA id 4105A1EF34;
 Fri,  2 Aug 2019 19:48:09 +0000 (UTC)
From: Marco Villegas <git@marvil07.net>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8712: Add spaces around <<
Date: Fri,  2 Aug 2019 16:47:37 -0300
Message-Id: <20190802194737.12252-1-git@marvil07.net>
X-Mailer: git-send-email 2.20.1
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
Cc: Marco Villegas <git@marvil07.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error "CHECK: spaces preferred around that '<<'".

Signed-off-by: Marco Villegas <git@marvil07.net>
---
 drivers/staging/rtl8712/rtl871x_xmit.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index 4199cb586fb1..c5c55967164b 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -41,7 +41,7 @@ do { \
 	pattrib_iv[0] = txpn._byte_.TSC0;\
 	pattrib_iv[1] = txpn._byte_.TSC1;\
 	pattrib_iv[2] = txpn._byte_.TSC2;\
-	pattrib_iv[3] = ((keyidx & 0x3)<<6);\
+	pattrib_iv[3] = ((keyidx & 0x3) << 6);\
 	txpn.val = (txpn.val == 0xffffff) ? 0 : (txpn.val+1);\
 } while (0)
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
