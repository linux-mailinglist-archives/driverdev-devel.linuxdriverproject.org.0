Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2F130394
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 169CA2045C;
	Sat,  4 Jan 2020 16:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CDeLMP2Gqomk; Sat,  4 Jan 2020 16:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F1F420369;
	Sat,  4 Jan 2020 16:29:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05BD81BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 023DE87A4F
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1DlMCiJ9fL8 for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:29:25 +0000 (UTC)
X-Greylist: delayed 00:09:58 by SQLgrey-1.7.6
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com [210.131.2.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3258B87A39
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:29:25 +0000 (UTC)
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id 004GSaoq029321;
 Sun, 5 Jan 2020 01:28:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 004GSaoq029321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578155317;
 bh=BCbtz6rrc6jSvrHHlVpTqOC3pSISW0eDFtaFXvtYM3o=;
 h=From:To:Cc:Subject:Date:From;
 b=JHz5tHHohM/sW7N+Cy4N3GCI3+kamahEwpbzEddjwuS5Nug2R0nzw43vbjAIhr90O
 Gy2IkEKWs4RB2G797wbNhcW3D1gLHSqfIH1O/7GravvV+o/g+J3bIZ+DTNIvYMndCk
 T+DCwzVJU8yloxqV1NiV1Et4xoxyftcLqJKC4ZZTSySgao5vW2PfjBdF1I8vAwPtxy
 8BhBjzxgx0Ct7GsHOZBrHTCapk6GMROxTG+PYwR7o476tlu+hlgZyQQ0yN2P6yShul
 wC8QuOiF2lkcQ0r3hDtc/Yaj+M+LULOmccX/EKCpiDaNoAnGNPgX4p5y0C2GeOW4vk
 l7jNVW0vI7dvA==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_service: remove unused header include path
Date: Sun,  5 Jan 2020 01:28:29 +0900
Message-Id: <20200104162829.20400-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I can build drivers/staging/vc04_services without this.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/vc04_services/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index afe43fa5a6d7..54d9e2f31916 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -13,5 +13,5 @@ vchiq-objs := \
 obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
 obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
 
-ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
+ccflags-y += -D__VCCOREVER__=0x04000000
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
