Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 094D61CAB5D
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 May 2020 14:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 535BD221B7;
	Fri,  8 May 2020 12:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZ-LyBKoi3BT; Fri,  8 May 2020 12:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 778B52043D;
	Fri,  8 May 2020 12:43:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C923B1BF330
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 12:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3C3E20411
 for <devel@linuxdriverproject.org>; Fri,  8 May 2020 12:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BP8cdzl8RPi for <devel@linuxdriverproject.org>;
 Fri,  8 May 2020 12:43:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E290203F9
 for <devel@driverdev.osuosl.org>; Fri,  8 May 2020 12:43:33 +0000 (UTC)
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 6032C5A5AE26CA40D204;
 Fri,  8 May 2020 13:43:30 +0100 (IST)
Received: from localhost (10.47.95.97) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 8 May 2020
 13:43:29 +0100
Date: Fri, 8 May 2020 13:43:07 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: iio: ad5933: rework probe to use devm_
 function variants
Message-ID: <20200508134307.0000233a@Huawei.com>
In-Reply-To: <20200507095016.GC9365@kadam>
References: <20200428093128.60747-1-alexandru.ardelean@analog.com>
 <20200502192542.63cc25a2@archlinux> <20200507095016.GC9365@kadam>
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
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 7 May 2020 12:50:16 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Sat, May 02, 2020 at 07:25:42PM +0100, Jonathan Cameron wrote:
> > On Tue, 28 Apr 2020 12:31:28 +0300
> > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:  
> > > +static void ad5933_cleanup(void *data)
> > > +{
> > > +	struct ad5933_state *st = data;
> > > +
> > > +	clk_disable_unprepare(st->mclk);
> > > +	regulator_disable(st->reg);  
> > 
> > Please do two separate callbacks so that these can be handled
> > in the correct places.  I.e. you do something then immediately
> > register the handler to undo it.
> > 
> > Currently you can end up disabling a clock you haven't enabled
> > (which I am fairly sure will give you an error message).  
> 
> Yeah.  It does.
> 
> It feels like we should just make a devm_ version of regulator_enable().
> Or potentially this is more complicated than it seems, but in that case
> probably adding devm_add_action_or_reset() is more complicated than it
> seems as well.
> 
> regards,
> dan carpenter

It has been a while since that was last proposed.   At the time the
counter argument was that you should almost always be doing some form
of PM and hence the regulator shouldn't have the same lifetime as the
driver.   Reality is that a lot of simple drivers either don't do
PM or have elected to not turn the regulator off so as to retain state
etc.

Mark what do you think?

Jonathan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
