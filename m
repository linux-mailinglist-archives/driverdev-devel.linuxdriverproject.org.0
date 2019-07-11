Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B9465336
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 10:32:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F5F48560E;
	Thu, 11 Jul 2019 08:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxI1M2vgm0E9; Thu, 11 Jul 2019 08:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF7B6854E0;
	Thu, 11 Jul 2019 08:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58B651BF330
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55BA9877FF
 for <devel@linuxdriverproject.org>; Thu, 11 Jul 2019 08:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3ODR3762UBA for <devel@linuxdriverproject.org>;
 Thu, 11 Jul 2019 08:32:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy1.45ru.net.au (anchovy1.45ru.net.au [203.30.46.145])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA4388733B
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 08:32:07 +0000 (UTC)
Received: (qmail 12548 invoked by uid 5089); 11 Jul 2019 08:32:04 -0000
Received: by simscan 1.2.0 ppid: 12384, pid: 12387, t: 0.1091s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy1.45ru.net.au with ESMTPA; 11 Jul 2019 08:32:03 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id 5EAC120971BA7; Thu, 11 Jul 2019 16:32:00 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nishadkamdar@gmail.com, preid@electromag.com.au,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 devel@driverdev.osuosl.org, nsaenzjulienne@suse.de
Subject: [PATCH 0/2] Staging: fbtft: Fix probing of gpio descriptor
Date: Thu, 11 Jul 2019 16:31:51 +0800
Message-Id: <1562833913-10510-1-git-send-email-preid@electromag.com.au>
X-Mailer: git-send-email 1.8.3.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

GPIO probing and reset polarity are broken.
Fix them.

Fixes: c440eee1a7a1 ("Staging: fbtft: Switch to the gpio descriptor interface")

Phil Reid (2):
  Staging: fbtft: Fix probing of gpio descriptor
  Staging: fbtft: Fix reset assertion when using gpio descriptor

 drivers/staging/fbtft/fbtft-core.c | 43 ++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 23 deletions(-)

-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
