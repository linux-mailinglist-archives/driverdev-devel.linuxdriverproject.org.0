Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA742777CC
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 19:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 12C3C2E0FA;
	Thu, 24 Sep 2020 17:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 395yklph2a3j; Thu, 24 Sep 2020 17:29:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEAA322E20;
	Thu, 24 Sep 2020 17:29:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0521BF859
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 17:29:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29C70869B9
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 17:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLfffE14EVEr for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 17:29:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95F6E869C9
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 17:29:06 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A515F238A1;
 Thu, 24 Sep 2020 17:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600968546;
 bh=EgHvoK5O8OM1wJYXIt7SsQoaYrj43DPOJHTVtzGAAXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=twuflN/niLRnVOY3qvybHXhGHKznfT/l5Nhr21+m8WEYXmeWhADvFqwF7vWVhknlF
 MGTymZQswDqRXI4AOC7B2Y1IN4s2M0dKtpzg0BaPbIYK6U+SmG+Vd91x00ncEwmd/I
 KXzF0nuadOJU12+UtclqGK3SlkDC2OQjjC5+XimM=
Date: Thu, 24 Sep 2020 19:29:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Srinivasan Raju <srini.raju@purelifi.com>
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
Message-ID: <20200924172922.GA1188119@kroah.com>
References: <20200924151910.21693-1-srini.raju@purelifi.com>
 <20200924153636.GA1171035@kroah.com>
 <CWLP265MB19727D19DE7D0498EEB2B1E4E0390@CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CWLP265MB19727D19DE7D0498EEB2B1E4E0390@CWLP265MB1972.GBRP265.PROD.OUTLOOK.COM>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, information <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Mostafa Afgani <mostafa.afgani@purelifi.com>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 05:24:14PM +0000, Srinivasan Raju wrote:
> 
> >> --- /dev/null
> >> +++ b/drivers/staging/purelifi/TODO
> >> @@ -0,0 +1,5 @@
> >> +TODO:
> >> +     - checkpatch.pl cleanups
> >> +
> >> +Please send any patches or complaints about this driver to pureLiFi Ltd
> >> +<info@purelifi.com>
> 
> >Why not just do these fixups on your own right now and submit it to the
> >"real" part of the kernel?  That should take what, a day or so max?
> >Just sending stuff to staging because you don't want to do coding style
> >cleanups feels very odd.  It takes much more work and energy to do it
> >this way than to just do it right the first time and get it merged to
> >the networking subsystem, right?
> 
> >So why do you want to send it to staging?
> 
> Thanks for the comments Greg, This is my first kernel patch, I was under  
> the impression that the staging area is the place to start for any new "Driver" code
> We will do the fixes and send an updated patch

No, staging is for things that people do not care about and want others
to help clean up and get merged properly :)

There's nothing in the "how to submit a driver/patch" documentation that
mentions that it has to go through staging first, does it?  If so, that
needs to be changed...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
