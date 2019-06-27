Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F9358250
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 14:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 428A187EE8;
	Thu, 27 Jun 2019 12:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1NYOhES11Re; Thu, 27 Jun 2019 12:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9799C87EA9;
	Thu, 27 Jun 2019 12:15:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A044B1BF9B5
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B468861C9
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQLNKbob7S9u for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 12:15:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C633861C8
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 12:15:41 +0000 (UTC)
Received: from faui01a.informatik.uni-erlangen.de
 (faui01a.informatik.uni-erlangen.de [IPv6:2001:638:a000:4160:131:188:60:127])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 6776F241589;
 Thu, 27 Jun 2019 14:15:17 +0200 (CEST)
Received: by faui01a.informatik.uni-erlangen.de (Postfix, from userid 30063)
 id 56D19F40079; Thu, 27 Jun 2019 14:15:17 +0200 (CEST)
From: Lukas Schneider <lukas.s.schneider@fau.de>
To: mchehab@kernel.org, gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 st5pub@yandex.ru, gabrielfanelli61@gmail.com, code@wizofe.uk,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: bcm2048: Macros with complex values should be enclosed
 in parentheses
Date: Thu, 27 Jun 2019 14:15:15 +0200
Message-Id: <20190627121515.32029-1-lukas.s.schneider@fau.de>
X-Mailer: git-send-email 2.19.1
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
Cc: Jannik Moritz <jannik.moritz@fau.de>, linux-kernel@i4.cs.fau.de,
 Lukas Schneider <lukas.s.schneider@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix ERROR: Macros with complex values should be enclosed in parentheses,
reported by checkpatch.

Add a do {...} while (0) loop around the macro.

Signed-off-by: Lukas Schneider <lukas.s.schneider@fau.de>
Signed-off-by: Jannik Moritz <jannik.moritz@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 2c60a1fb6350..206f2a662f92 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2001,8 +2001,10 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 }
 
 #define DEFINE_SYSFS_PROPERTY(prop, prop_type, mask, check)		\
-property_write(prop, prop_type, mask, check)				\
-property_read(prop, mask)						\
+do {									\
+	property_write(prop, prop_type, mask, check)			\
+	property_read(prop, mask)					\
+} while (0)								\
 
 #define property_str_read(prop, size)					\
 static ssize_t bcm2048_##prop##_read(struct device *dev,		\
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
