Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333F72B5C31
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 10:51:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC62F87102;
	Tue, 17 Nov 2020 09:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEnTCV3IY0tW; Tue, 17 Nov 2020 09:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6C50870D4;
	Tue, 17 Nov 2020 09:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41F9B1BF340
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 09:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 396152046F
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 09:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QRzQleQPXL3X for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 09:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F360203FD
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 09:51:53 +0000 (UTC)
Received: from localhost (unknown [122.171.203.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7B8F2078E;
 Tue, 17 Nov 2020 09:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605606712;
 bh=iHE9RAnQLkyx8y3cmGgcwjxd7Z4g7wQ3Exd7zWtOw5M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NpT1yoy1UrT6V+QTgn6JElcmwV3hdG2JGBsFWVJ3cdcuIn+O8ubigST8UBcGamAY+
 M3QSzyzq+JY1EtZ5xo1Opub0cj/O7qlU9gtd+IrXX+J9xbD62hB7vA0gCw9p9EjkGt
 Xq+k76QlnKaMYoJzxPyUG7xqFr8o58rdFqKG7cBM=
Date: Tue, 17 Nov 2020 15:21:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/8] phy: phy-hi3670-usb3: move driver from staging into
 phy
Message-ID: <20201117095148.GE50232@vkoul-mobl>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <420faf39bb03d07f8823b03bc55a429e975e23a0.1605530560.git.mchehab+huawei@kernel.org>
 <20201116153106.GA1682049@bogus> <20201117075542.734f429b@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117075542.734f429b@coco.lan>
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linuxarm@huawei.com, Krzysztof Kozlowski <krzk@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 Alex Dewar <alex.dewar90@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17-11-20, 07:55, Mauro Carvalho Chehab wrote:
> Em Mon, 16 Nov 2020 09:31:06 -0600
> Rob Herring <robh@kernel.org> escreveu:
> 
> > On Mon, Nov 16, 2020 at 01:59:27PM +0100, Mauro Carvalho Chehab wrote:
> > > The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> > > for mainstream. Mode it from staging into the main driver's  
> > 
> > s/Mode/Move/
> > 
> > > phy/ directory.
> > > 
> > > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > > ---
> > >  .../bindings/phy/phy-hi3670-usb3.yaml         |  72 ++
> > >  MAINTAINERS                                   |   9 +-
> > >  drivers/phy/hisilicon/Kconfig                 |  10 +
> > >  drivers/phy/hisilicon/Makefile                |   1 +
> > >  drivers/phy/hisilicon/phy-hi3670-usb3.c       | 671 ++++++++++++++++++
> > >  drivers/staging/hikey9xx/Kconfig              |  11 -
> > >  drivers/staging/hikey9xx/Makefile             |   2 -
> > >  drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 671 ------------------
> > >  drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --  
> > 
> > I assume this is only a move? Use '-M' option.
> 
> This is a move, although I explicitly disabled -M on this series, as both
> the driver code and DT may still require some review, as those patches
> are for subsystems that I haven't made any relevant contributions
> so far.

I for one am appreciating the intent here, it helps to review the patch
coming in from staging

Thanks
-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
