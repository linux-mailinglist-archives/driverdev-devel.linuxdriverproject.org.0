Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A68306248
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 18:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 818B6860CD;
	Wed, 27 Jan 2021 17:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZr3fyGQpUFo; Wed, 27 Jan 2021 17:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF9486073;
	Wed, 27 Jan 2021 17:41:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 970D21BF392
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9345786027
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 17:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PN0zAtmuo-Dx for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 17:41:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 12B9285FA8
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 17:41:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DE9F64DA3;
 Wed, 27 Jan 2021 17:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611769302;
 bh=ccTYH2EDWJwjCqgjMOwT8emAY3jhxENLNE9fZ1tIX50=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=p170fHNm+U8QcFUVjsMI4G/bsDyQmOyvglCZvtsmV0jIqq+lcVjv3T0czV4MXXJoX
 GyPiN0yLplbsvdHL8kra2a8irz4Y5J99EScXz9t74Kv/E4mCn1tiGCGWXIj7/oBnOF
 JHtys5oBgR+jnzTSpQUwuJFCKYKEKQlXJA4ja3IjFlIX2zJkveJ2+33OUw1c3F7srL
 jscXZ9H25mLxPMKhyipQCzL7yIXaX6DLOk7yGj99FH0ZC33/GGGl5IKOET4E5Acong
 zus0cZWM2QgD9UF0xJARD0JdxxPhGErNuttsQ0jXROgHHRqbikCBGjneUFt6DTQlc5
 Zu6f98c92dGEA==
Date: Wed, 27 Jan 2021 18:41:35 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <20210127184135.73dec9c3@coco.lan>
In-Reply-To: <YBE+OFwLj31qo/ss@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com> <20210127100816.GH4903@dell>
 <YBE+OFwLj31qo/ss@kroah.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 27 Jan 2021 11:19:36 +0100
Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:

> > This patch series finish addressing support for Hikey 970
> > SPMI controller, PMIC and regulators.
> > 
> > This version was generated with -M, in order to make easier
> > to merge upstream.  Also, rebased on the top of v5.10,
> > without any dependencies from the other patch series
> > I'm submitting for this board.
> > 
> > Yet,  patch 18 to 20 modifies drivers/staging/hikey9xx/Kconfig
> > and drivers/staging/hikey9xx/Makefile. So, trivial conflicts
> > will rise if they're applied via different trees, as they all
> > remove some lines from such files.   
> 
> I've applied the first 13 patches, except for patch 3, as that did not
> apply, to my tree, thanks.

Ok. I'll rebase the remaining patches on the top of staging-testing branch.

> On Wed, Jan 27, 2021 at 10:08:16AM +0000, Lee Jones wrote:
> > On Wed, 27 Jan 2021, Greg Kroah-Hartman wrote:
> >   
> > > On Tue, Jan 26, 2021 at 06:11:24PM +0000, Mark Brown wrote:  
> > > > On Tue, Jan 26, 2021 at 07:02:39PM +0100, Greg Kroah-Hartman wrote:  
> > > > > On Tue, Jan 26, 2021 at 05:57:52PM +0000, Mark Brown wrote:  
> > > >   
> > > > > > Is there a branch we can pull from?  
> > > >   
> > > > > Once 0-day passes, you can pull from my staging-testing branch from
> > > > > staging.git on git.kernel.org if you want.  Give it 24 hours to pass
> > > > > before it hits that location.  
> > > > 
> > > > Thanks.  
> > > 
> > > Should be out there now if you want to pull.
> > >   
> > > > > Do you need a tag to pull from?  
> > > > 
> > > > It'd be nice but not essential.  
> > > 
> > > Why do you want/need this?  Having these changes in your tree is good,
> > > but what about other coding style cleanups that I will end up applying
> > > over time before the 5.12-rc1 merge window opens?  Are you wanting to
> > > take the moved driver in your tree, or something else?
> > > 
> > > Traditionally moving drivers out of staging can be done 2 ways:
> > > 	- all happens in the staging tree, I take an ack from the
> > > 	  subsystem maintainer that this is ok to do.
> > > 	- A new driver enters the "real" subsystem tree, and then I
> > > 	  delete the driver in the staging tree.  This doesn't preserve
> > > 	  history as well (not at all), but can be easier for trees that
> > > 	  move quickly (like networking.)
> > > 
> > > Which ever works for you is fine with me, but relying on the code to
> > > stay "not touched" in my tree after you pull it almost never happens due
> > > to the number of drive-by coding style cleanups that end up in the
> > > staging tree every week.  
> > 
> > I would have expected the whole set to be merged as a set into a
> > single tree, placed on an immutable branch and a pull-request to be
> > sent out for the other maintainers to pull from (if they so wished).
> > 
> > This would ensure development could continue on any/all of the
> > affected drivers/files.
> > 
> > If it's not too late, I'd be more than happy to facilitate.  
> 
> Given these patches are already in my public tree, that might be a bit
> harder, why the huge work for this?  Worst case, I just keep all of the
> patches that do not actually move the code in my tree, and then things
> can move after 5.12-rc1.

Whatever works best for Lee/Mark.

From my side, I can re-submit the move patches and the DTS ones to
be applied after 5.12-rc1, if this would be the preferred way.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
