Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 061EA30EDB1
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 08:49:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE89A27384;
	Thu,  4 Feb 2021 07:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CH8ZfQfiJH40; Thu,  4 Feb 2021 07:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63C5920408;
	Thu,  4 Feb 2021 07:49:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EEAA1BF3BF
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1A3788085A
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMKQq95l3Dtn for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 07:49:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94DA885F52
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 07:49:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4956764F59;
 Thu,  4 Feb 2021 07:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612424947;
 bh=ow5324N+X0yX6Y++DQH8Ee4d23dUDvfZqkh3Y+REDTo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T60CgV3iWmtMePG9PaOF16n7zzvEozhEBDUnfGcX0uKML/AvPfAqMrI7H29ktWW7w
 7SR0mqi/fDx0TrKllkRQjZY4RjibrCUBtfkxNimS5pdeonw59KVQ7GYTUT6AoRllxT
 RecRizCWWLrYsKor5myS/0UEeMEZR+noehqrgQe67kDjLDAwfHtVqlvo7nmtinKPo7
 6HHGvihZA0cYspklJ0/cqZ+7JXN5XuXSk1bLeNI6NmA2Tad6IbXL7oVVFcRG3pST2I
 7lpW1gVofXkWWbZKOz6EnUsjS+RrkfHGZwmBYppjstNdsH3Uli/5i0UslefLN1Ob7V
 OwpGSqt6Xgt+g==
Date: Thu, 4 Feb 2021 13:19:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 0/5] Promote Hikey 970 USB phy out of staging
Message-ID: <20210204074903.GF3079@vkoul-mobl.Dlink>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
 <YBBWQeglmuDn1g11@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBBWQeglmuDn1g11@kroah.com>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 26-01-21, 18:49, Greg Kroah-Hartman wrote:
> On Tue, Jan 19, 2021 at 11:44:38AM +0100, Mauro Carvalho Chehab wrote:
> > Hi Vinod/Rob,
> > 
> > This series moves  the Hikey 970 USB PHY driver out of staging.
> > 
> > Patches 1 to 4 contain the fixes from staging. Patch 5 moves the
> > driver from staging:
> > 
> > 	$ git show 82ce73ac9a38 --summary
> > 	...
> > 	 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
> > 	 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)
> > 
> > I opted to use --no-renames on this series in order to make easier to
> > review via e-mail, as the entire driver and DT bindings will be seen
> > at the last patch on this series.
> 
> First 4 patches applied to my tree, thanks.

I have acked the last one, pls apply that one too

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
