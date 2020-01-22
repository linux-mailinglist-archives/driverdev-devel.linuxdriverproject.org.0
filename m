Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED84144C97
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 08:48:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D356E87B69;
	Wed, 22 Jan 2020 07:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXJUGTBKB4jk; Wed, 22 Jan 2020 07:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E359887B59;
	Wed, 22 Jan 2020 07:48:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB471BF397
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87683869D7
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 07:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yB7xPsyzrCPy for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 07:48:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E241C864D4
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 07:48:41 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4279924656;
 Wed, 22 Jan 2020 07:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579679321;
 bh=Y+3AIPhelZvMyzyyNgMwljM/N8u04hwazgjoLNG8NZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MGWrSViQ+Kqi84fNtmwtHLmei4RYl7jcYmtvd3GM985/iPGVHIgvVsnRh91ZzM4Z3
 Nh9z7YKPKQyVrsx11g2MQgmAr0DTbKjb/A1kmnp4/A9PswhItSSDqlH6RwdLHvGscA
 ya93dycoqf4X91OHpu+nPtszNZhqglzRMxCbJudA=
Date: Wed, 22 Jan 2020 08:48:39 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
Subject: Re: [External] Re: staging: Add MA USB Host driver
Message-ID: <20200122074839.GA2099857@kroah.com>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <20200122070312.GB2068857@kroah.com>
 <aba22f24-1124-2203-b9f6-4a5e9274a8a8@displaylink.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aba22f24-1124-2203-b9f6-4a5e9274a8a8@displaylink.com>
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
 Petar Kovacevic <petar.kovacevic@displaylink.com>,
 Nikola Simic <nikola.simic@displaylink.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marko Miljkovic <marko.miljkovic@displaylink.com>,
 Stefan Lugonjic <stefan.lugonjic@displaylink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 22, 2020 at 07:40:59AM +0000, Vladimir Stankovic wrote:
> Hi Greg,
> 
> Our intention was to follow Linux kernel development process and add our
> driver to staging first.

That's not the "normal" development process at all, where did you read
that?

staging is only for code that needs lots of work, and almost always
merging a driver through staging takes _more_ work from the submitter
than it does to submit it through the "normal" subsystem.

So if you want to do more work, hey, by all means, send it here :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
