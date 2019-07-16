Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF91C69FC7
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 02:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D56C86BC6;
	Tue, 16 Jul 2019 00:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DgC3TY0B7KfM; Tue, 16 Jul 2019 00:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EF3A86B30;
	Tue, 16 Jul 2019 00:25:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F097F1BF97A
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED69C87BD3
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 00:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lZMCtIlnAMG for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 00:25:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from anchovy2.45ru.net.au (anchovy2.45ru.net.au [203.30.46.146])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6285D87BC2
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 00:25:07 +0000 (UTC)
Received: (qmail 25523 invoked by uid 5089); 16 Jul 2019 00:25:04 -0000
Received: by simscan 1.2.0 ppid: 25478, pid: 25481, t: 0.0488s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
X-RBL: $rbltext
Received: from unknown (HELO preid-c7.electromag.com.au)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy3.45ru.net.au with ESMTPA; 16 Jul 2019 00:25:04 -0000
Received: by preid-c7.electromag.com.au (Postfix, from userid 1000)
 id E4261200A395E; Tue, 16 Jul 2019 08:24:59 +0800 (AWST)
From: Phil Reid <preid@electromag.com.au>
To: gregkh@linuxfoundation.org, bhanusreemahesh@gmail.com,
 leobras.c@gmail.com, nsaenzjulienne@suse.de, nishadkamdar@gmail.com,
 preid@electromag.com.au, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH 0/2] Staging: fbtft: Fix probing of gpio descriptor
Date: Tue, 16 Jul 2019 08:24:35 +0800
Message-Id: <1563236677-5045-1-git-send-email-preid@electromag.com.au>
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

Changes from v2:
- Add fixes tag to "Fix reset assertion when using gpio descriptor"
- Add tested-by / reviewed-by tags

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
