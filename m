Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9A03339C
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 17:34:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E7E985F8F;
	Mon,  3 Jun 2019 15:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4jUmvo9Ytw47; Mon,  3 Jun 2019 15:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A41185E09;
	Mon,  3 Jun 2019 15:34:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6EE11BF967
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 15:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D342222219
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 15:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtYmz2lec-7T for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 15:34:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs3.siol.net [185.57.226.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 81C5F220C1
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 15:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7973A521018;
 Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id I185maW5QRX1; Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 10534520F7B;
 Mon,  3 Jun 2019 17:34:05 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id A9764520F69;
 Mon,  3 Jun 2019 17:34:03 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Date: Mon, 03 Jun 2019 17:34:03 +0200
Message-ID: <8861995.Bqp6Xp4pol@jernej-laptop>
In-Reply-To: <20190603114620.vsvbxz6gyhg3tn7b@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-3-jernej.skrabec@siol.net>
 <20190603114620.vsvbxz6gyhg3tn7b@flea>
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca,
 paul.kocialkowski@bootlin.com, wens@csie.org, boris.brezillon@collabora.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 03. junij 2019 ob 13:46:20 CEST je Maxime Ripard napisal(a):
> On Thu, May 30, 2019 at 11:15:11PM +0200, Jernej Skrabec wrote:
> > Reference index count in VE_H264_PPS reg should come from PPS control.
> > However, this is not really important because reference index count is
> > in our case always overridden by that from slice header.
> > 
> > Cc: nicolas@ndufresne.ca
> > Cc: boris.brezillon@collabora.com
> > Cc: jonas@kwiboo.se
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> > ---
> > We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
> > and pps->num_ref_idx_l1_default_active_minus1 fields or add
> > num_ref_idx_l0_active_override_flag and
> > num_ref_idx_l0_active_override_flag
> > to slice control.

Actually only one flag is in bitstream valid for both l0 and l1 ref list.

> > 
> > Current control doesn't have those two flags, so in Cedrus override flag
> > is
> > always set and we rely on userspace to set
> > slice->num_ref_idx_l0_active_minus1 and
> > slice->num_ref_idx_l1_active_minus1 to correct values. This means that
> > values stored in PPS are not needed and always ignored by VPU.
> > 
> > If I understand correctly, algorithm is very simple:
> > 
> > ref_count = PPS->ref_count
> > if (override_flag)
> > 
> > 	ref_count = slice->ref_count
> > 
> > It seems that VAAPI provides only final value. In my opinion we should do
> > the same - get rid of PPS default ref index count fields.
> 
> The rationale was to be as conservative as possible and just expose
> everything that is in the bitstream in those controls to accomodate
> for as many weird hardware as possible.

Ok, so then we should add that override flag, which would align with h264 specs 
and you can still do same trick in VAAPI library which it's currently used in 
Cedrus driver - always set override flag and fill out only slice reflist count. 
At the end it shouldn't matter for proper decoding in any driver.

Best regards,
Jernej



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
