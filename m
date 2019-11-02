Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 858CBECE04
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Nov 2019 11:35:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22E3F8AB78;
	Sat,  2 Nov 2019 10:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOiMy8kY3l00; Sat,  2 Nov 2019 10:35:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08B748AB66;
	Sat,  2 Nov 2019 10:35:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F34451BF287
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 10:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDE5F89FB4
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 10:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oZtUytF2stZ5 for <devel@linuxdriverproject.org>;
 Sat,  2 Nov 2019 10:35:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D044E89D41
 for <devel@driverdev.osuosl.org>; Sat,  2 Nov 2019 10:35:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 577EA20679;
 Sat,  2 Nov 2019 10:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572690917;
 bh=mbxbLsNycQLuE8Rszlxz5umA/C2he7utVAFoZom6eio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mnnZp8cgHwOL3Bklw15NKTAPy0z0ECSizzfhfDLGYPmHX8YE6yC4hExGqCyYunR2/
 wfcqjzLuC8+/U1jXFDDHTPo996opRuMc04Iw41Ox8Xot2gY+Ef+llKYx45ZvyzYnd5
 OetJZrUISpIrSB6ZYWKL8fkhh8dBRKx9lX1XU7xE=
Date: Sat, 2 Nov 2019 11:35:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH resend] staging: vc04_services: replace
 g_free_fragments_mutex with spinlock
Message-ID: <20191102103515.GA135926@kroah.com>
References: <20191028165909.GA469472@kroah.com>
 <20191101182949.21225-1-dave@stgolabs.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101182949.21225-1-dave@stgolabs.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 01, 2019 at 11:29:49AM -0700, Davidlohr Bueso wrote:
> There is no need to be using a semaphore, or a sleeping lock
> in the first place: critical region is extremely short, does not
> call into any blocking calls and furthermore lock and unlocking
> operations occur in the same context.
> 
> Get rid of another semaphore user by replacing it with a spinlock.
> 
> Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
> ---
> This is in an effort to further reduce semaphore users in the kernel.
> 
> This is a resend, which just seems simpler given the confusions.
> 
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

This patch does not apply to my tree at all, what did you make it
against?

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
