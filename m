Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A9C30563A
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 09:57:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDE7E87103;
	Wed, 27 Jan 2021 08:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sA2zQ3UoKUL; Wed, 27 Jan 2021 08:57:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EEB087071;
	Wed, 27 Jan 2021 08:57:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7DFC1BF834
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 08:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D24C987083
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 08:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZIdh6d6Zc5n for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 08:57:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D109387071
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 08:57:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC32120759;
 Wed, 27 Jan 2021 08:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611737863;
 bh=CRsnxHURAngp2eekJSNGPVdgsCZ9RsnCKwPFaU4Sd6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zRObluJJlLWARaRpMYCN84a10arkVxS14A/oUfJ5UIAc5qjUwDPxyTz0p+S3i6468
 yO4j8HagADFhCkb5Bk9l0N7MJm/Npg12rxCX0U/rkl0ZxNxWpuHIGwOALhrSmqaNgs
 Hm/BAwV6hQrGeMdJhC2OPnaeyEP2lg2iCtSMs8HI=
Date: Wed, 27 Jan 2021 09:57:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <YBErBByYD8lNIWAX@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
 <YBBZP9LjXPi/rzfP@kroah.com> <20210126181124.GG4839@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126181124.GG4839@sirena.org.uk>
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
 Rob Herring <robh+dt@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 26, 2021 at 06:11:24PM +0000, Mark Brown wrote:
> On Tue, Jan 26, 2021 at 07:02:39PM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Jan 26, 2021 at 05:57:52PM +0000, Mark Brown wrote:
> 
> > > Is there a branch we can pull from?
> 
> > Once 0-day passes, you can pull from my staging-testing branch from
> > staging.git on git.kernel.org if you want.  Give it 24 hours to pass
> > before it hits that location.
> 
> Thanks.

Should be out there now if you want to pull.

> > Do you need a tag to pull from?
> 
> It'd be nice but not essential.

Why do you want/need this?  Having these changes in your tree is good,
but what about other coding style cleanups that I will end up applying
over time before the 5.12-rc1 merge window opens?  Are you wanting to
take the moved driver in your tree, or something else?

Traditionally moving drivers out of staging can be done 2 ways:
	- all happens in the staging tree, I take an ack from the
	  subsystem maintainer that this is ok to do.
	- A new driver enters the "real" subsystem tree, and then I
	  delete the driver in the staging tree.  This doesn't preserve
	  history as well (not at all), but can be easier for trees that
	  move quickly (like networking.)

Which ever works for you is fine with me, but relying on the code to
stay "not touched" in my tree after you pull it almost never happens due
to the number of drive-by coding style cleanups that end up in the
staging tree every week.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
