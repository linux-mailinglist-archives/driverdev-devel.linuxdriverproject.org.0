Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B141D332A11
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 16:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C73C76F5EE;
	Tue,  9 Mar 2021 15:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiiRzf9qeo4b; Tue,  9 Mar 2021 15:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F2196F4FD;
	Tue,  9 Mar 2021 15:17:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A53F1BF3A4
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 15:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 461594C2BD
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 15:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlQpHLxPxzQS for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 15:17:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from elvis.franken.de (elvis.franken.de [193.175.24.41])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C8FF4C27B
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 15:17:32 +0000 (UTC)
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1lJe70-0002C8-00; Tue, 09 Mar 2021 16:17:30 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
 id E2D1AC1BA6; Tue,  9 Mar 2021 16:07:29 +0100 (CET)
Date: Tue, 9 Mar 2021 16:07:29 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v11 5/6] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Message-ID: <20210309150729.GA12267@alpha.franken.de>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
 <20210309052226.29531-6-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309052226.29531-6-sergio.paracuellos@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 09, 2021 at 06:22:25AM +0100, Sergio Paracuellos wrote:
> Vendor listed for mediatek in kernel vendor file 'vendor-prefixes.yaml'
> contains 'mediatek' as a valid vendor string. Some nodes in the device
> tree are using an invalid vendor string vfor 'mtk' instead. Fix all of
> them in dts file. Update also ralink mt7621 related code to properly
> match new strings. Even there are used in the device tree there are
> some strings that are not referred anywhere but have been also updated
> with new vendor name. These are 'mtk,mt7621-wdt', 'mtk,mt7621-nand',
> 'mtk,mt7621-mc', and 'mtk,mt7621-cpc'.
> 
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  arch/mips/ralink/mt7621.c              |  6 +++---

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
