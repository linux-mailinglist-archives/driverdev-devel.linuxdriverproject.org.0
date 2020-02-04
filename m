Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2A0151656
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 08:15:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62E022051A;
	Tue,  4 Feb 2020 07:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IomhP1hwMuLJ; Tue,  4 Feb 2020 07:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEE532050C;
	Tue,  4 Feb 2020 07:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CBE71BF2B4
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5706286DE2
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 07:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iv1UByMI0xhr for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 07:15:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAD1086DEA
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 07:15:50 +0000 (UTC)
Received: from localhost (unknown [167.98.85.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39F7621582;
 Tue,  4 Feb 2020 07:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580800550;
 bh=K79BsejKQ50ooIm4cS9/TH4bKCFwVULRlWaG1bw1O3g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MJ8LifNB43rUOT4G3OQdF9A7P8ClC6nqiWgyxcO+68PtUHKi0uaXE+On8By4kSPjH
 j7LPyxfEbj9xf5tjAgzsSvqpXGQQo9VlyvScilYKOG9JMjFMKVzTleteVTvcrj9rBI
 ZVJOsOebEvGU7vO7rXRVJ6zKPmEVxOgaQ+rAQ/MA=
Date: Tue, 4 Feb 2020 07:15:48 +0000
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 2/2] staging: octeon-usb: delete the octeon usb host
 controller driver
Message-ID: <20200204071548.GB966981@kroah.com>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <20191210091509.3546251-2-gregkh@linuxfoundation.org>
 <e97e28140b8c46cde93f40b93e2e0614943e96fc.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e97e28140b8c46cde93f40b93e2e0614943e96fc.camel@alliedtelesis.co.nz>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "ddaney.cavm@gmail.com" <ddaney.cavm@gmail.com>,
 "pundirsumit11@gmail.com" <pundirsumit11@gmail.com>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nishkadg.linux@gmail.com" <nishkadg.linux@gmail.com>,
 "frank@generalsoftwareinc.com" <frank@generalsoftwareinc.com>,
 "laura.lazzati.15@gmail.com" <laura.lazzati.15@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 04, 2020 at 04:06:51AM +0000, Chris Packham wrote:
> On Tue, 2019-12-10 at 10:15 +0100, Greg Kroah-Hartman wrote:
> > This driver was merged back in 2013 and shows no progress toward every
> > being merged into the "correct" part of the kernel.  The code doesn't
> > even build for anyone unless you have the specific hardware platform
> > selected, so odds are it doesn't even work anymore.
> > 
> > Remove it for now and is someone comes along that has the hardware and
> > is willing to fix it up, it can be reverted.
> > 
> > Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
> > Cc: David Daney <ddaney.cavm@gmail.com>
> > Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > Cc: Himadri Pandya <himadri18.07@gmail.com>
> > Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
> > Cc: Sumit Pundir <pundirsumit11@gmail.com>
> > Cc: Laura Lazzati <laura.lazzati.15@gmail.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> 
> Similarly we'd really like to keep this too.

Great, same thing here!

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
