Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC28D305D44
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 14:32:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 98FF522844;
	Wed, 27 Jan 2021 13:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u430tzyVh9wy; Wed, 27 Jan 2021 13:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 666BC226EA;
	Wed, 27 Jan 2021 13:32:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B70DF1BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B07858683A
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xOw5vQgqSg0 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 13:32:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F324386824
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 13:32:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C12A5207B1;
 Wed, 27 Jan 2021 13:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611754357;
 bh=Hvdj/TnKmUGUDvd5D0ucCsJxgPxWAmML6NC1NFEiusw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u15m2WoKpaM2iRwFCDTC0Id9jWPw061bwZFZVpyaROia9HdMUZpooYN6buBoxdlwy
 6NL+OCZ4TYv3aWLNwta4GI1HP+QQwqWP4lbYbH/HIzFjrmmoE268Uz7/dgLdi9COTS
 Kz7z8I8j1c9WoCqZbzrhR5Psr3s97OHDrK6ehxlE=
Date: Wed, 27 Jan 2021 14:32:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <YBFrc/yk7uvh9HX8@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com> <20210127120426.GB4387@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127120426.GB4387@sirena.org.uk>
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
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-arm-msm@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 12:04:26PM +0000, Mark Brown wrote:
> On Wed, Jan 27, 2021 at 09:57:40AM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Jan 26, 2021 at 06:11:24PM +0000, Mark Brown wrote:
> 
> > > > Do you need a tag to pull from?
> 
> > > It'd be nice but not essential.
> 
> > Why do you want/need this?  Having these changes in your tree is good,
> > but what about other coding style cleanups that I will end up applying
> > over time before the 5.12-rc1 merge window opens?  Are you wanting to
> > take the moved driver in your tree, or something else?
> 
> I want to apply the regulator driver so I stop being sent this patch
> series which will help keep my backlog more manageable.
> 
> > Traditionally moving drivers out of staging can be done 2 ways:
> > 	- all happens in the staging tree, I take an ack from the
> > 	  subsystem maintainer that this is ok to do.
> > 	- A new driver enters the "real" subsystem tree, and then I
> > 	  delete the driver in the staging tree.  This doesn't preserve
> > 	  history as well (not at all), but can be easier for trees that
> > 	  move quickly (like networking.)
> 
> The whole reason the driver is in the staging tree is that Mauro has a
> requirement to do things in a way that preserves history and so won't
> send any non-incremental patches.

Ok, should we wait until after 5.12-rc1 is out then?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
