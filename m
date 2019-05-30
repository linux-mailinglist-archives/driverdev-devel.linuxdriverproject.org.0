Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC52303B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:01:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0796877A7;
	Thu, 30 May 2019 21:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kh0qEtUd3Fwq; Thu, 30 May 2019 21:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7699C87781;
	Thu, 30 May 2019 21:01:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E711C1BF365
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E19E887775
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cBoGgDF7Q4WM for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:01:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69D6A8542B
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:01:08 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FB6626199;
 Thu, 30 May 2019 21:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559250068;
 bh=4CRc+10jq8qVPENaL49ZOmvgX81EDViorvcPAmtMOjk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I/sUjc8zxp9YfKOK2M+DyaZoC/i20s+3t+8JQaqfF/eqgCUHOQrx0QIfCvYN5OZnF
 NzFHe4FWOFwcZD2d0QOZbzerUScV8E298nZ5z33SGX6dh5Gm0IP9uwWykdiZ1tx07H
 LAB49dMS7fdpmZ6UrVFiAfmtV/QOkF8bWZoJHNMw=
Date: Thu, 30 May 2019 14:01:07 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 2/2] staging: kpc2000: add missing dependencies for kpc2000
Message-ID: <20190530210107.GA22336@kroah.com>
References: <20190524203058.30022-1-simon@nikanor.nu>
 <20190524203058.30022-3-simon@nikanor.nu>
 <20190525050017.GA18684@kroah.com>
 <20190525083918.dxa5qtomlu5yyqw5@dev.nikanor.nu>
 <20190525092404.go3qlfknra6g3fot@dev.nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525092404.go3qlfknra6g3fot@dev.nikanor.nu>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 25, 2019 at 11:24:04AM +0200, Simon Sandstr=F6m wrote:
> On Sat, May 25, 2019 at 10:39:18AM +0200, Simon Sandstr=F6m wrote:
> > On Sat, May 25, 2019 at 07:00:17AM +0200, Greg KH wrote:
> > > =

> > > This is already in linux-next (in a different form), are you sure you
> > > are working against the latest kernel tree?
> > > =

> > > thanks,
> > > =

> > > greg k-h
> > =

> > It's based on your staging tree. I think that I have to go back and read
> > about next trees again, because I thought it took longer time for things
> > to get from staging-next to linux-next.
> > =

> > Anyway, neither the MFD_CORE nor the typo fix is in linux-next so I
> > guess that I could just rebase this on linux-next and re-send as v2.
> > I'm not sure if MFD_CORE should be "depends on" or "select" though...
> > =

> > =

> > - Simon
> =

> Oh, it must be "select MFD_CORE" because there is no prompt for
> MFD_CORE? Should I just rebase it on linux-next and re-send as v2 then?

Yes please.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
