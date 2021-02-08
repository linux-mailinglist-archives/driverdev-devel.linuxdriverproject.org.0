Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2606312F65
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 11:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE93A8705B;
	Mon,  8 Feb 2021 10:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLC7SF2t7hAc; Mon,  8 Feb 2021 10:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75DB786DEA;
	Mon,  8 Feb 2021 10:47:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2CB1BF3C9
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4724786DEA
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 10:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5wa07al-c-W for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 10:47:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1E5586DA3
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 10:47:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B3F9C64E8A;
 Mon,  8 Feb 2021 10:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612781242;
 bh=aEmETdAAaqlh641eroVBM3hnbdYUk9TPTg1/0fBiOdg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KoBZknK/t/arwDGGPinIqqLC5St7DRWfxSLKxzuC558dyJ+cvOVjamOGOZWxtAt9I
 Fnp6lqlbJiuFbz7XJG68VsKN6EjOgQHWjsBxKvY07Pe4CH8PIUoWlPNMYiXd6lDsDT
 Jedu9uJU1lZURZGGODarxd/SWVYCOvADEzIyrChE=
Date: Mon, 8 Feb 2021 11:47:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH 1/4] driver core: Use subdir-ccflags-* to inherit debug
 flag
Message-ID: <YCEWtxYgbRPET4Sr@kroah.com>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-2-git-send-email-yangyicong@hisilicon.com>
 <YB0Vk6ERJ3lFc3WD@kroah.com>
 <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com, linux-pm@vger.kernel.org,
 masahiroy@kernel.org, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 08, 2021 at 06:44:52PM +0800, Yicong Yang wrote:
> Hi Greg,
> 
> On 2021/2/5 17:53, Greg KH wrote:
> > On Fri, Feb 05, 2021 at 05:44:12PM +0800, Yicong Yang wrote:
> >> From: Junhao He <hejunhao2@hisilicon.com>
> >>
> >> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
> >> settings from Kconfig when traversing subdirectories.
> > 
> > That says what you do, but not _why_ you are doing it.
> 
> i'll illustrate the reason and reword the commit.
> 
> > 
> > What does this offer in benefit of the existing way?  What is it fixing?
> > Why do this "churn"?
> 
> currently we have added ccflags-$(CONFIG_DEBUG_DRIVER) := -DDEBUG in the Makefile
> of driver/base and driver/base/power, but not in the subdirectory
> driver/base/firmware_loader. we cannot turn the debug on for subdirectory
> firmware_loader if we config DEBUG_DRIVER and there is no kconfig option
> for the it.

Is that necessary?  Does that directory need it?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
