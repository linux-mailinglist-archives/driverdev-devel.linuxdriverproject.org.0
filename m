Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF5EAC951
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 22:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FFCA87AB5;
	Sat,  7 Sep 2019 20:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h3ofNB8FyeoK; Sat,  7 Sep 2019 20:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1989878A8;
	Sat,  7 Sep 2019 20:57:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C67881BF312
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 20:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BEEA185DF1
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 20:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySzb3MmeFELB for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 20:57:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
 [217.26.49.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3560485DEC
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 20:57:26 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout012.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6hlq-0006Md-Bf; Sat, 07 Sep 2019 22:57:22 +0200
Received: from 145-126.cable.senselan.ch ([83.222.145.126] helo=volery)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i6hlq-000HWv-7v; Sat, 07 Sep 2019 22:57:22 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Sat, 7 Sep 2019 22:57:20 +0200
From: Sandro Volery <sandro@volery.com>
To: gregkh@linuxfoundation.org, osdevtc@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: wlan-ng: parenthesis at end of line fix
Message-ID: <20190907205720.GA25377@volery>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed open parenthesis at the end of the line on line 327.

Signed-off-by: Sandro Volery <sandro@volery.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index eee1998c4b18..0a4c7415f773 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -324,7 +324,8 @@ static int prism2_scan(struct wiphy *wiphy,
 		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
 		i++)
 		msg1.channellist.data.data[i] =
-			ieee80211_frequency_to_channel(
+			ieee80211_frequency_to_channel
+			(
 				request->channels[i]->center_freq);
 	msg1.channellist.data.len = request->n_channels;
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
