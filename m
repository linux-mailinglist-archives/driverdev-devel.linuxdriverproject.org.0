Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0976457078
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 15:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27460409CC;
	Fri, 19 Nov 2021 14:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nf4C7J3fRA3j; Fri, 19 Nov 2021 14:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928D2404B8;
	Fri, 19 Nov 2021 14:18:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14D611BF48B
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 14:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04AAF401F5
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 14:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXkUtLhysZrQ for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 14:17:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC3FE400B6
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 14:17:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0833061211;
 Fri, 19 Nov 2021 14:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637331472;
 bh=+RxiXEg7wGSS27hAwXjldJTMuDaXaWKo5W+XpV+nLIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X5pl7hmgXITGNrGn8MBKChKd+6SyJQ34Q5p5oyD0fO05IkisYR52kHFE8dGhsK+2L
 nXiPJCAPzdfHtTBaXEkDnaU/ZKl5+v7xDPkzh2eyAjt3pbgbUsFekgRVtgoIvJbLDs
 HzaF4Bqx2tsSy6VPfqS29snc0xH9zA7r8PbAdF7c=
Date: Fri, 19 Nov 2021 15:17:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <YZeyDSa6ujv6rPMT@kroah.com>
References: <20211118202718.GA152832@t470p> <YZdGaAVSVM8/4ZB2@kroah.com>
 <20211119133644.GB2519@alb3rt0-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119133644.GB2519@alb3rt0-VirtualBox>
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
Cc: devel@driverdev.osuosl.org, forest@alittletooquiet.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 19, 2021 at 02:36:44PM +0100, Alberto Merciai wrote:
> driver-core$ ./scripts/get_maintainer.pl drivers/staging/vt6655/device.h
> Forest Bond <forest@alittletooquiet.net> (odd fixer:STAGING - VIA VT665X DRIVERS)
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM)
> Alberto Merciai <alb3rt0.m3rciai@gmail.com> (commit_signer:2/2=100%,authored:2/2=100%,added_lines:2/2=100%,removed_lines:2/2=100%)
> devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
> linux-kernel@vger.kernel.org (open list)

What kernel version is that?

The driverdev mailing list is very old and should not be used anymore.

Please always work against the latest version of the kernel, and for
development stuff, linux-next is usually best so you do not duplicate
any work that anyone else has done.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
