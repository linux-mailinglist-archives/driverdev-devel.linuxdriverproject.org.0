Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A34167B25
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2019 18:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE0DB87E4A;
	Sat, 13 Jul 2019 16:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2PK72JRc--b; Sat, 13 Jul 2019 16:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DFA987B60;
	Sat, 13 Jul 2019 16:01:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4A01BF3EE
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 16:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 33F6D20513
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 16:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgxXlY4O1MGc for <devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 16:01:19 +0000 (UTC)
X-Greylist: delayed 00:43:12 by SQLgrey-1.7.6
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
 by silver.osuosl.org (Postfix) with ESMTPS id 79E4020392
 for <devel@driverdev.osuosl.org>; Sat, 13 Jul 2019 16:00:31 +0000 (UTC)
Received: from p508fcc68.dip0.t-ipconnect.de ([80.143.204.104]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hmJlt-0006eI-7X; Sat, 13 Jul 2019 17:17:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 17:17:08 +0200
Message-ID: <2648434.ut0pN6mfR1@phil>
In-Reply-To: <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> I initially thought my machine was failing to boot entirely, but it
> turns out it was just failing to start the display manager. I managed to
> escape to a tty by hammering the keyboard a bit.
> 
> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> which has been renamed to hantro in this merge window. When I run startx
> from a terminal, X fails to start and Xorg segfaults (log here:
> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> issues in v5.1.

5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
sure if it already can support X11 yet and your X11 log mentions
libglamoregl in the segfault stack trace.

Apart from it bisect that Greg suggested you could also just try
blacklisting either panfrost or vpu kernel modules
/etc/udev/somewhere . This would prevent them from loading

Hope that helps
Heiko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
