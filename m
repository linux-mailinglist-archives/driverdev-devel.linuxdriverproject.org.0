Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC3A310866
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:54:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE8428713D;
	Fri,  5 Feb 2021 09:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBNB6gyUGWUQ; Fri,  5 Feb 2021 09:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1CC16870E5;
	Fri,  5 Feb 2021 09:54:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D68941BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2C0B8711C
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lcjAutq1JLa for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF87F870E5
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:54:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 90E2564FBC;
 Fri,  5 Feb 2021 09:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612518855;
 bh=qqGS/sqwAf0mec/vUlbRuCasqOYPkR2xSCTJXt2Iw34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XdQGGIPtSw1Aw+LVyu9t22n8gc1Z9YOhrLUMXol8pNxflAQoCjfkuW2yC888XeU6C
 lNFY8zgQZ5Vv4kvhlufhrLZOVc2xr4DlttWtp5jWM0SkLgFFJ8bpH0WR/rVKlpgq3o
 REwZWF8Q3xTTTI9u2nAfSxab4wNc2KGHBEvKWg8w=
Date: Fri, 5 Feb 2021 10:54:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH 4/4] staging: comedi: Use subdir-ccflags-* to inherit
 debug flag
Message-ID: <YB0VxBrYM3BSoxrc@kroah.com>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-5-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1612518255-23052-5-git-send-email-yangyicong@hisilicon.com>
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

On Fri, Feb 05, 2021 at 05:44:15PM +0800, Yicong Yang wrote:
> From: Junhao He <hejunhao2@hisilicon.com>
> 
> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
> settings from Kconfig when traversing subdirectories.

Again, explain _why_.

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for what a proper changelog
should look like.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
