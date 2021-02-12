Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C021A3198A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 04:16:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA08587406;
	Fri, 12 Feb 2021 03:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OIoSCQrhqRPb; Fri, 12 Feb 2021 03:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4B9B87382;
	Fri, 12 Feb 2021 03:16:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5FBA1BF361
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 03:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF6E6873E6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 03:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBxbes5kiWsc for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 03:16:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C95F5873E4
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 03:16:40 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E12160235;
 Fri, 12 Feb 2021 03:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613099800;
 bh=L77YAfKIZA/WqECQl6K6SmlQ2SJ47//QvrQ5kodP6os=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hz0adJHesEs3nULeXANULTz4oJ3Ew0lKgbQXeVkFc22ssipDn1od44FJ02GuK0Vy3
 fw7EFTkugIEV5Tm5m2rDhv4/0Y8IIYNO82fzxTxotnFWsskb1stLfYLlrQVW/hZ6wI
 4k+PSiT1/s7/DRh/1E9M9MNY/ZC1kXhxGUOyzEm2+ZdYoKOyS+FqZIUGP/RLbmg9J3
 Xbn7DKrb1nnaUSrChcFZaVPzTrsxV+OQd5otHj+Nu3Cw/litSU77+zSEY82q6wXTiD
 lMsa6jYBTKOg5tURO060zRd1tXIvaBzECUuHW40iZxC1HlGx1M2RhMLk/a0USUQSRy
 D7wQnWjQV2aoQ==
MIME-Version: 1.0
In-Reply-To: <CAMhs-H92MHRO9RqkBW-c_+dVEtVUF-eHH4-zVXO2wCpdX0A55g@mail.gmail.com>
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
 <CAMhs-H92MHRO9RqkBW-c_+dVEtVUF-eHH4-zVXO2wCpdX0A55g@mail.gmail.com>
Subject: Re: [PATCH v5 0/6] MIPS: ralink: add CPU clock detection and clock
 driver for MT7621
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 11 Feb 2021 19:16:39 -0800
Message-ID: <161309979908.1254594.5215549085877905591@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg KH <gregkh@linuxfoundation.org>,
 STAGING SUBSYSTEM <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, MIPS <linux-mips@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>, COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2021-01-17 06:19:36)
> Hi all,
> 
> On Sun, Dec 20, 2020 at 10:37 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> >  - Hardcode "xtal" as parent in FIXED macro.
> >  - Change 'else if' clause into 'if' clause since a return statement was
> >    being used in 'mt7621_xtal_recalc_rate'.
> >
> >  NOTES:
> >    - Driver is still being declared using 'CLK_OF_DECLARE' for all the
> >      clocks. I have explored the possibility to make some of them available
> >      afterwards using 'CLK_OF_DECLARE_DRIVER' for top clocks and the rest
> >      using a platform driver. The resulting code was uglier since we only want
> >      to use the same device tree node and the top clocks must be copied again
> >      for the new platform register stuff to properly have a good hierarchy.
> >      New globals needs to be introduced and in this particular case I don't
> >      really see the benefits of doing in this way. I am totally ok to have all
> >      the clocks registered at early stage since from other drivers perspective
> >      we only really need to enable gates. So, I prefer to have them in that
> >      way if it is not a real problem, of course.
> 
> Any comments on this? Is ok to maintain this as it is done in this
> version or should I change this to any other approach taking into
> account my comments in device tree related PATCH? Nothing has been
> suggested there yet.
> 

Please resend. It seems to have fallen off of DT review list.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
