Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 048DD309C0C
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 13:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A2F485B94;
	Sun, 31 Jan 2021 12:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7wYgkyv0OL8u; Sun, 31 Jan 2021 12:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD8DB8462A;
	Sun, 31 Jan 2021 12:43:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF7A61BF2BC
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 12:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA3DD84812
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 12:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcTpXR4BP3Ll for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 12:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 806E68462A
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 12:43:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7712A64E09;
 Sun, 31 Jan 2021 12:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612097032;
 bh=yOfrM4/gd3A2HsbAbSmBciknAKqFeNdVCFkijAGQElw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m+aky6PJ+d9dfH5SXhRSiycuy2xqH/vfZaxZd0ATEM4H+T6xuglsi/kCLQWJqXtHq
 /rNWH1oVArQhB5ZZ4uWgO2aff9NIR7hvD05J2WQjkF/LT5/KzpVH3TmUNirnHahZ4v
 yrX/BlcRg1JRoMW0stYU8xFswwb/cfeg0POOZoy4=
Date: Sun, 31 Jan 2021 13:43:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v8 00/14] Move Hisilicon 6421v600 SPMI and USB drivers
 out of staging
Message-ID: <YBamBfrr+cSqwjE1@kroah.com>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>, Stephen Boyd <sboyd@kernel.org>,
 Yu Chen <chenyu56@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Mark Brown <broonie@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>, David Gow <davidgow@google.com>,
 Colin Ian King <colin.king@canonical.com>, Alex Dewar <alex.dewar90@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lee Jones <lee.jones@linaro.org>,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 29, 2021 at 08:51:46PM +0100, Mauro Carvalho Chehab wrote:
> Hi Greg/Mark/Lee/Vinod,
> 
> Another rebase , also the top of staging-testing.
> 
> This series contain the remaining patches for USB to start working,
> except for a final DTS patch.
> 
> Patches 1 and 2 convert the SPMI and regulator
> drivers to use regmap and simplifies the logic by using
> regmap helpers.
> 
> Patches 3 to 9 address some issues pointed by Lee at the MFD driver.
> 
> I guess the best would be if Greg could apply patches 1 to 9
> via the staging tree.

I've taken these first 9 patches in my staging tree.  If any other
subsystem maintainer wants to ack the move of the files out of staging
to their respective subsystems, I'll gladly apply those patches here as
well.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
