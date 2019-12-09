Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9E11170B4
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 16:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D3E6D2154C;
	Mon,  9 Dec 2019 15:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHDcGH7c8qJ4; Mon,  9 Dec 2019 15:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B692F2038D;
	Mon,  9 Dec 2019 15:41:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DA401BF3BD
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 712C78689B
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMS+sTzo0Iy8 for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 15:41:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D705386879
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 15:41:04 +0000 (UTC)
Received: from localhost (unknown [89.205.132.23])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E023C2073D;
 Mon,  9 Dec 2019 15:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575906064;
 bh=xchqQrFdZC9lF1bCvucvR91oCh8m2y80Hp0P0ydGrDk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T6ptTT5Dvl7Ke0t4vlq8m8f4XwnvIcTx03hZ7ubXpADtuyaQreXvuWT/F3tAUw0iO
 nv0m8FLvmrHqSej/FKphn7MbmX/ckC1wKOZ9PaDgJOXkqAH1c+1QVOtZrqdxcZIKLV
 S5/fZKB6PwdMdpgk8HQYC1Tf4PzP6toHs+047CQY=
Date: Mon, 9 Dec 2019 16:41:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 4/4] [RFC] staging/net: move AF_X25 into drivers/staging
Message-ID: <20191209154101.GB1284708@kroah.com>
References: <20191209151256.2497534-1-arnd@arndb.de>
 <20191209151256.2497534-4-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209151256.2497534-4-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, linux-x25@vger.kernel.org,
 netdev@vger.kernel.org, "R.J.Dunlop" <bob.dunlop@farsite.com>,
 linux-kernel@vger.kernel.org, Kevin Curtis <kevin.curtis@farsite.com>,
 Eric Biggers <ebiggers@kernel.org>,
 syzbot+429c200ffc8772bfe070@syzkaller.appspotmail.com,
 syzbot+eec0c87f31a7c3b66f7b@syzkaller.appspotmail.com,
 Andrew Hendry <andrew.hendry@gmail.com>, Zhao Qiang <qiang.zhao@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 04:12:56PM +0100, Arnd Bergmann wrote:
> syzbot keeps finding issues in the X.25 implementation that nobody is
> interested in fixing.  Given that all the x25 patches of the past years
> that are not global cleanups tend to fix user-triggered oopses, is it
> time to just retire the subsystem?
> 
> I looked a bit closer and found:
> 
> - we used to support x25 hardware in linux, but with WAN_ROUTER
>   removed in linux-3.9 and isdn4linux removed in 5.3, there is only hdlc,
>   ethernet and the N_X25 tty ldisc left. Out of these, only HDLC_X25 made
>   it beyond the experimental stage, so this is probably what everyone
>   uses if there are users at all.
> 
> - The most common hdlc hardware that people seem to be using are
>   the "farsync" PCIe and USB adapters. Linux only has drivers for the
>   older PCI devices from that series, but no hardware that works on
>   modern systems.
> 
> - The manufacturer still updates their own kernel drivers and provides
>   support, but ships that with a fork or rewrite of the subsystem
>   code now.  Kevin Curtis is also listed as maintainer, but appears to
>   have given up in 2013 after [1].
> 
> - The most popular software implementation appears to be X25 over TCP
>   (XOT), which is supported by Farsite and other out-of-tree stacks but
>   never had an implementation in mainline.
> 
> - Most other supported HDLC hardware that we supoprt is for the ISA or
>   PCI buses. There are newer PCIe or USB devices, but those all require
>   a custom device driver and often a custom subsystem, none of which got
>   submitted for mainline inclusion. This includes hardware from Microgate
>   (SyncLink), Comtrol (RocketPort Express) and Sealevel (SeaMAC).
> 
> - The X.25 subsystem is listed as "odd fixes", but the last reply on
>   the netdev mailing list from the maintainer was also in 2013[2].
> 
> - The HDLC subsystem itself is listed as maintained by Krzysztof Halasa,
>   and there were new drivers merged for SoC based devices as late as
>   2016 by Zhao Qiang: Freescale/NXP QUICC Engine and Maxim ds26522.
>   There has not been much work on HDLC or drivers/net/wan recently,
>   but both developers are still responsive on the mailing list and
>   work on other parts of the kernel.
> 
> Based on the above, I would conclude that X.25 can probably get moved
> to staging as keeping it in the kernel seems to do more harm than good,
> but HDLC below it should probably stay as there it seems there are still
> users of a small subset of the mainline drivers.
> 
> Move all of X.25 into drivers/staging for now, with a projected removal
> date set for Linux-5.8.
> 
> Cc: Eric Biggers <ebiggers@kernel.org>
> Cc: Andrew Hendry <andrew.hendry@gmail.com>
> Cc: linux-x25@vger.kernel.org
> Cc: Kevin Curtis <kevin.curtis@farsite.com>
> Cc: "R.J.Dunlop" <bob.dunlop@farsite.com>
> Cc: Zhao Qiang <qiang.zhao@nxp.com>
> Cc: Krzysztof Halasa <khc@pm.waw.pl>
> Reported-by: syzbot+429c200ffc8772bfe070@syzkaller.appspotmail.com
> Reported-by: syzbot+eec0c87f31a7c3b66f7b@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?id=5b0ecf0386f56be7fe7210a14d0f62df765c0c39
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ----
> 
> If anyone has different views or additional information, let us know.
> 
> If you agree with the above, please Ack.

ACK!

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
