Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7380164077
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 07:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9612C87D14;
	Wed, 10 Jul 2019 05:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nn9Y466zYS8R; Wed, 10 Jul 2019 05:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE39287BC8;
	Wed, 10 Jul 2019 05:12:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05E021BF3B5
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 05:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02EA387BC8
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 05:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNtdGpqpExl0 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 05:12:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0039.hostedemail.com
 [216.40.44.39])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15E7E87B94
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 05:12:43 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 8E2AD1803A17C
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 05:04:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id F29BF1803A16D;
 Wed, 10 Jul 2019 05:04:56 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1345:1359:1437:1534:1540:1568:1711:1714:1730:1747:1777:1792:2198:2199:2393:2559:2562:3138:3139:3140:3141:3142:3867:4321:5007:6261:6642:10004:10848:11026:11473:11657:11658:11914:12043:12048:12297:12438:12555:12895:12986:13069:13311:13357:14096:14181:14384:14394:14721:21080:21451:21627:30054,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: foot64_ddc8b497611c
X-Filterd-Recvd-Size: 1852
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 05:04:54 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 11/12] staging: media: cedrus: Fix misuse of GENMASK macro
Date: Tue,  9 Jul 2019 22:04:24 -0700
Message-Id: <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1562734889.git.joe@perches.com>
References: <cover.1562734889.git.joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Arguments are supposed to be ordered high then low.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index 3e9931416e45..ddd29788d685 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -110,7 +110,7 @@
 #define VE_DEC_MPEG_MBADDR			(VE_ENGINE_DEC_MPEG + 0x10)
 
 #define VE_DEC_MPEG_MBADDR_X(w)			(((w) << 8) & GENMASK(15, 8))
-#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(0, 7))
+#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(7, 0))
 
 #define VE_DEC_MPEG_CTRL			(VE_ENGINE_DEC_MPEG + 0x14)
 
-- 
2.15.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
