Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D10277588
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 17:36:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 858622E10E;
	Thu, 24 Sep 2020 15:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZE3ImWUntrhp; Thu, 24 Sep 2020 15:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 755C920486;
	Thu, 24 Sep 2020 15:36:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E04C41BF59B
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 15:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD36686B17
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 15:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j9HzriYprs-f for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 15:36:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 55CC786B2B
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 15:36:20 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49C6D221EB;
 Thu, 24 Sep 2020 15:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600961779;
 bh=WNZTZTSVuWO/IZHrM0LOYgxpeDcxocJGS0YFoO5Jgyk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cX8W6QKfoyUYTckQzaOtewjAWhre2Tpr3Dnlh95n4L4vGd5cV1+xjAbMvCPWWIQZw
 /8nu25+xQ4Bw98A3I5Yz+agLp8YJxsVo2PGVHSPxLamPBJ8lYnbZnSLMYUj/vpBtDi
 DiLSsu8nzASTO0St+GdpFQGb0HpOFMyUCh+cX8iE=
Date: Thu, 24 Sep 2020 17:36:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Srinivasan Raju <srini.raju@purelifi.com>
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
Message-ID: <20200924153636.GA1171035@kroah.com>
References: <20200924151910.21693-1-srini.raju@purelifi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924151910.21693-1-srini.raju@purelifi.com>
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
 Rob Herring <robh@kernel.org>, pureLiFi Ltd <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, mostafa.afgani@purelifi.com,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 08:48:51PM +0530, Srinivasan Raju wrote:
> +PUREILIFI USB DRIVER
> +M:	pureLiFi Ltd <info@purelifi.com>

I need a real person here, having aliases as maintainers results in a
lack of accountability :(

> --- /dev/null
> +++ b/drivers/staging/purelifi/TODO
> @@ -0,0 +1,5 @@
> +TODO:
> +	- checkpatch.pl cleanups
> +
> +Please send any patches or complaints about this driver to pureLiFi Ltd
> +<info@purelifi.com>

Why not just do these fixups on your own right now and submit it to the
"real" part of the kernel?  That should take what, a day or so max?

Just sending stuff to staging because you don't want to do coding style
cleanups feels very odd.  It takes much more work and energy to do it
this way than to just do it right the first time and get it merged to
the networking subsystem, right?

So why do you want to send it to staging?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
