Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F49196F8A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 04:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED49E86C8C;
	Wed, 21 Aug 2019 02:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUlCSz5a1Vfs; Wed, 21 Aug 2019 02:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCFC786C59;
	Wed, 21 Aug 2019 02:37:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1DC1BF342
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22D9588527
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 02:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ayOYlWpHRljy for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 02:37:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A21B288494
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 02:37:11 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 777EE22D6D;
 Wed, 21 Aug 2019 02:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566355031;
 bh=yUqYmBlYs8yi0jOgFfyl4fHSRyQ+SZYpqNqqmfUkE9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NrNOQmVbCC00q0lK3C4aGBYtLYXQrRhch5/aaH0iOoSPVgAyF6jjVAG8OUezqFo3H
 mGxKVdgwBm1I8Iv9jm6nFi/fVXXsw4z032Uos3mbRARFoVlUzBLo6i4yv2oYqSzUzC
 rP7MQObZAbN5t7j9d+JIK8hhp1+L/aqlzzJDTDjs=
Date: Tue, 20 Aug 2019 19:37:06 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: me@ehuber.info
Subject: Re: [PATCH 1/2] comedi: remove camelcase
Message-ID: <20190821023706.GA28618@kroah.com>
References: <20190820234307.5234-1-me@ehuber.info>
 <20190820234307.5234-2-me@ehuber.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820234307.5234-2-me@ehuber.info>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 20, 2019 at 11:43:06PM +0000, me@ehuber.info wrote:
> From: Edmund Huber <me@ehuber.info>
> 
> ---
>  drivers/staging/comedi/drivers/ni_pcimio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

I don't think you read all of the issues that my patchbot sent you.

Please re-read that and fix up those issues and then resend the patch
series.  If you have any questions about the issues it found, please let
us know.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
