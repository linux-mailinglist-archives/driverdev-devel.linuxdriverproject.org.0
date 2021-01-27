Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DC730581C
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 11:19:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9020386718;
	Wed, 27 Jan 2021 10:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pP+RQrxN8skN; Wed, 27 Jan 2021 10:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACD05866D2;
	Wed, 27 Jan 2021 10:19:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5240B1BF405
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E88A866D7
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 10:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKHdikuysBi0 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 10:19:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F3187866D2
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 10:19:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7AF320723;
 Wed, 27 Jan 2021 10:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611742779;
 bh=d2h1EgBQMOjE5+8onjr7Xk6n8e+j+afxZeaitVsthDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d3XzXb/8FnxZ1Z+z/5HUsE1VWiFD1iFv7la249QYlq0mttvihgZY54uYl71wX/v3J
 rZnaGR6hUIp5u8D7f9DT9gQ1py/w3RRjWVJ96amv9pSOuUeGKhWT2FHh4iLA7tSVxv
 VYBz7WHULvVOjJ0hVgvY+RJayodaHXT6vS0A7tgE=
Date: Wed, 27 Jan 2021 11:19:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <YBE+OFwLj31qo/ss@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
 <YBErBByYD8lNIWAX@kroah.com> <20210127100816.GH4903@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127100816.GH4903@dell>
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
 linux-arm-msm@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 10:08:16AM +0000, Lee Jones wrote:
> On Wed, 27 Jan 2021, Greg Kroah-Hartman wrote:
> 
> > On Tue, Jan 26, 2021 at 06:11:24PM +0000, Mark Brown wrote:
> > > On Tue, Jan 26, 2021 at 07:02:39PM +0100, Greg Kroah-Hartman wrote:
> > > > On Tue, Jan 26, 2021 at 05:57:52PM +0000, Mark Brown wrote:
> > > 
> > > > > Is there a branch we can pull from?
> > > 
> > > > Once 0-day passes, you can pull from my staging-testing branch from
> > > > staging.git on git.kernel.org if you want.  Give it 24 hours to pass
> > > > before it hits that location.
> > > 
> > > Thanks.
> > 
> > Should be out there now if you want to pull.
> > 
> > > > Do you need a tag to pull from?
> > > 
> > > It'd be nice but not essential.
> > 
> > Why do you want/need this?  Having these changes in your tree is good,
> > but what about other coding style cleanups that I will end up applying
> > over time before the 5.12-rc1 merge window opens?  Are you wanting to
> > take the moved driver in your tree, or something else?
> > 
> > Traditionally moving drivers out of staging can be done 2 ways:
> > 	- all happens in the staging tree, I take an ack from the
> > 	  subsystem maintainer that this is ok to do.
> > 	- A new driver enters the "real" subsystem tree, and then I
> > 	  delete the driver in the staging tree.  This doesn't preserve
> > 	  history as well (not at all), but can be easier for trees that
> > 	  move quickly (like networking.)
> > 
> > Which ever works for you is fine with me, but relying on the code to
> > stay "not touched" in my tree after you pull it almost never happens due
> > to the number of drive-by coding style cleanups that end up in the
> > staging tree every week.
> 
> I would have expected the whole set to be merged as a set into a
> single tree, placed on an immutable branch and a pull-request to be
> sent out for the other maintainers to pull from (if they so wished).
> 
> This would ensure development could continue on any/all of the
> affected drivers/files.
> 
> If it's not too late, I'd be more than happy to facilitate.

Given these patches are already in my public tree, that might be a bit
harder, why the huge work for this?  Worst case, I just keep all of the
patches that do not actually move the code in my tree, and then things
can move after 5.12-rc1.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
