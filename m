Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 206953EF9C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Aug 2021 07:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13A6580E3D;
	Wed, 18 Aug 2021 05:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNOvgAzfZ0fV; Wed, 18 Aug 2021 05:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13BE480E24;
	Wed, 18 Aug 2021 05:02:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 533EA1BF5E6
 for <devel@linuxdriverproject.org>; Wed, 18 Aug 2021 05:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AACF60668
 for <devel@linuxdriverproject.org>; Wed, 18 Aug 2021 05:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=challenge-bot.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFHPFBhGu1hz for <devel@linuxdriverproject.org>;
 Wed, 18 Aug 2021 05:02:22 +0000 (UTC)
X-Greylist: delayed 00:20:47 by SQLgrey-1.8.0
Received: from challenge-bot.com (challenge-bot.com
 [IPv6:2602:fffa:fff:108a:0:16:3e15:92b8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CF7360635
 for <devel@driverdev.osuosl.org>; Wed, 18 Aug 2021 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=challenge-bot.com; s=20180430; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5T2QETkmfGoDiWQT4JfTnoQNmDKxLKaqLzfd5nLplg=; b=AWN6VTWTuCLjVrLDnnawmpxVmT
 itYSi/mirl9Y65Q/FBWkckvw9vFJyjELSYeek/VweiCpHFrGCdrEvLW5OOZ6E7KKHoNa6HwKqeIHK
 FUJHpkA16q4W1vsswtATCSFFuZz4FylAJkfldxqMX1Jp7xpDq1+7BrZHZpE+YtI/ATlA=;
Received: from ozzloy by challenge-bot.com with local (Exim 4.92)
 (envelope-from <ozzloy@challenge-bot.com>)
 id 1mGDOP-000673-WE; Tue, 17 Aug 2021 21:41:34 -0700
From: daniel watson <ozzloy@challenge-bot.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: put '{' on struct's first line
Date: Tue, 17 Aug 2021 21:41:05 -0700
Message-Id: <20210818044105.23128-1-ozzloy@challenge-bot.com>
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
Cc: Daniel Watson <ozzloy@challenge-bot.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Daniel Watson <ozzloy@challenge-bot.com>

Moved the opening curly brace to the end of the opening
line of the phy_stat struct for style consistency.

Signed-off-by: Daniel Watson <ozzloy@challenge-bot.com>
---
 drivers/staging/rtl8723bs/include/rtl8192c_recv.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtl8192c_recv.h b/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
index c77d172de7d08..9664758e21bef 100644
--- a/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtl8192c_recv.h
@@ -13,8 +13,7 @@
 
 #define MAX_RECVBUF_SZ (10240)
 
-struct phy_stat
-{
+struct phy_stat {
 	unsigned int phydw0;
 
 	unsigned int phydw1;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
