Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B41D319B6A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:46:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFACE8700A;
	Fri, 12 Feb 2021 08:46:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gi1OpGdpBtQI; Fri, 12 Feb 2021 08:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 065E986C92;
	Fri, 12 Feb 2021 08:46:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 370881BF3F6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33CC886D37
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:46:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAij-nqtjR-L for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4D4B86D08
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 08:46:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 183BC64DEA;
 Fri, 12 Feb 2021 08:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613119588;
 bh=bO137mz/8aJj4gBEHwiun0O1/gC0qRXtCtcKT7Nkfy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0H/ncv0AgbQiidabpL8pfcLbuP9+0o+CjvGLr1/FyYzD7wFuoYWtSkKARKmwBLPlp
 G9O1tmJ0+BwayVnu7vPz2FKtpJjMfkl3Z3I/KneluOOg6xB/TxFsDz2Bt80Z+dFFe9
 bezXBac7AofaLrbMOfDI5kHbDCU5CJNwoSqiNjV4=
Date: Fri, 12 Feb 2021 09:46:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [RESEND PATCH v5 5/6] staging: mt7621-dts: use valid vendor
 'mediatek' instead of invalid 'mtk'
Message-ID: <YCZAYhyJJRSi+axv@kroah.com>
References: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
 <20210212074330.4650-6-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212074330.4650-6-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, sboyd@kernel.org, linux-mips@vger.kernel.org,
 robh+dt@kernel.org, john@phrozen.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 08:43:29AM +0100, Sergio Paracuellos wrote:
> Vendor listed for mediatek in kernel vendor file 'vendor-prefixes.yaml'
> contains 'mediatek' as a valid vendor string. Some nodes in the device
> tree are using an invalid vendor string vfor 'mtk' instead. Fix all of
> them in dts file. Update also ralink mt7621 related code to properly
> match new strings. Even there are used in the device tree there are
> some strings that are not referred anywhere but have been also updated
> with new vendor name. These are 'mtk,mt7621-wdt', 'mtk,mt7621-nand',
> 'mtk,mt7621-mc', and 'mtk,mt7621-cpc'.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  arch/mips/ralink/mt7621.c              |  6 +++---
>  drivers/staging/mt7621-dts/mt7621.dtsi | 12 ++++++------
>  2 files changed, 9 insertions(+), 9 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
