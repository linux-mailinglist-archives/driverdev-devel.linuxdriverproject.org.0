Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6372BBED3
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 13:10:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F1DD8484F;
	Sat, 21 Nov 2020 12:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrMbXNHGqgGh; Sat, 21 Nov 2020 12:10:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E586C84413;
	Sat, 21 Nov 2020 12:10:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AF771BF37A
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 12:10:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 37461874D5
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 12:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsljoOE5B3Ve for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 12:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9A22874C9
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 12:10:44 +0000 (UTC)
Received: from localhost (unknown [122.171.203.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FDC122226;
 Sat, 21 Nov 2020 12:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605960644;
 bh=pLtOpTjqaSBqVkIMo4IbPawnLHJWlqUmIWLK+EBv8j0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1hE4JGMV5qPuxoVu/sr0h3uY/XgZLXfFiYzLUZA1qnrKSCOyTbqG9WQZvL+HZhZZ2
 FBi7xXNgkfAkYfU4KeImXv8l9ntga8LO+XJUsGCJlmvIe92gg3r0R+Vqn0ms5PJnR+
 IX+yYyEShjoKB4AsQhRsG8j3MjoXpfNOXcmd+evg=
Date: Sat, 21 Nov 2020 17:40:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v5 0/4] MT7621 PCIe PHY
Message-ID: <20201121121039.GA8403@vkoul-mobl>
References: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
 <CAMhs-H8bUuSQ+ROr4PNJXYaGFnjG2=zpjGK7UAAfoPMPbFBb1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H8bUuSQ+ROr4PNJXYaGFnjG2=zpjGK7UAAfoPMPbFBb1Q@mail.gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 20-11-20, 17:20, Sergio Paracuellos wrote:
> Hi Vinod,
> 
> On Thu, Nov 19, 2020 at 4:43 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > This series adds support for the PCIe PHY found in the Mediatek
> > MT7621 SoC.
> >
> > There is also a 'mt7621-pci' driver which is the controller part
> > which is still in staging and is a client of this phy.
> >
> > Both drivers have been tested together in a gnubee1 board.
> >
> > This series are rebased on the top of linux-next:
> > commit 4e78c578cb98 ("Add linux-next specific files for 20201030")
> >
> > Changes in v5:
> >   - PATCH 1/4: Recollect Rob's Reviewed-by of bindings.
> >   - PATCH 4/4: Recollect Greg's Acked-by for removing stuff from
> >     staging area.
> >   - Make Vinod's review comments changes in [0]:
> >     * Use FIELD_GET and FIELD_PREP apis and avoid multiple *_VAL and
> >       *_SHIFT custom definitions.
> >     * Remove phy-read and phy-write internal functions and directly
> >       call regmap_read and regmap_write in 'mt7621_phy_rmw'.
> >     * Change some traces from info to debug log level.
> >     * Note that I have maintained 'mt7621_phy_rmw' instead of use
> >       'regmap_update_bits'. This is because in order to get a reliable
> >       boot registers must be written event the contained value in
> >       that register is the same. I have preferred doing in this way
> >       instead of using 'regmap_update_bits_base' passing 'false' for
> >       async and 'true' for the force write. If this way of using
> >       'regmap_update_bits_base' is preferred just let me know.
> 
> I notice we already have 'regmap_write_bits' function. I will use this
> and avoid mt7621_phy_rmw
> and send v6 of this series.
> 
> Also, do you have any preference of where you want this series to be rebased on?

Phy-next please

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
