Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 512501CB2D5
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 17:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE6EB8870A;
	Fri,  8 May 2020 15:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8O4jawomftoR; Fri,  8 May 2020 15:30:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7258688704;
	Fri,  8 May 2020 15:30:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4231BF2C0
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 15:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9768189790
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 15:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JCL3qMqyORqU for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 15:30:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E0328978D
 for <devel@driverdev.osuosl.org>; Fri,  8 May 2020 15:30:25 +0000 (UTC)
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id D1289655DC33477CB90C;
 Fri,  8 May 2020 16:30:22 +0100 (IST)
Received: from localhost (10.47.95.97) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 8 May 2020
 16:30:22 +0100
Date: Fri, 8 May 2020 16:30:00 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] staging: iio: ad5933: rework probe to use devm_
 function variants
Message-ID: <20200508163000.000016de@Huawei.com>
In-Reply-To: <20200508125746.GH4820@sirena.org.uk>
References: <20200428093128.60747-1-alexandru.ardelean@analog.com>
 <20200502192542.63cc25a2@archlinux> <20200507095016.GC9365@kadam>
 <20200508134307.0000233a@Huawei.com>
 <20200508125746.GH4820@sirena.org.uk>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.95.97]
X-ClientProxiedBy: lhreml743-chm.china.huawei.com (10.201.108.193) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 8 May 2020 13:57:46 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Fri, May 08, 2020 at 01:43:07PM +0100, Jonathan Cameron wrote:
> > Dan Carpenter <dan.carpenter@oracle.com> wrote:  
> 
> > > It feels like we should just make a devm_ version of regulator_enable().
> > > Or potentially this is more complicated than it seems, but in that case
> > > probably adding devm_add_action_or_reset() is more complicated than it
> > > seems as well.  
> 
> > It has been a while since that was last proposed.   At the time the
> > counter argument was that you should almost always be doing some form
> > of PM and hence the regulator shouldn't have the same lifetime as the
> > driver.   Reality is that a lot of simple drivers either don't do
> > PM or have elected to not turn the regulator off so as to retain state
> > etc.  
> 
> Same issue as before - I fear it's far too error prone in conjunction
> with runtime PM, and if the driver really is just doing an enable and
> disable at probe and remove then that seems fairly trivial anyway.  I
> am constantly finding abuses of things like regulator_get_optional()
> (which we do actually need) in drivers and it's not like I can review
> all the users, I don't have much confidence in this stuff especially
> when practically speaking few regulators ever change state at runtime so
> issues don't manifest so often.
> 

Fair enough.  We'll carry on doing it with devm_add_action_or_reset
which forces us to take a close look at why we always want the lifetime
to match that of the device.

Note the key thing here is we don't have a remove in these drivers.
Everything is managed.  Mixing and matching between managed and unmanaged
causes more subtle race conditions...

Jonathan


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
