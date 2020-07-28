Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E30E230E6C
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 17:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB2BE8800D;
	Tue, 28 Jul 2020 15:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bINL4U6CqMul; Tue, 28 Jul 2020 15:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D2D486D08;
	Tue, 28 Jul 2020 15:53:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 958781BF573
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9208786A63
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 15:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z06mGAEULr7e for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 15:53:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D99185F2D
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 15:53:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82F882065C;
 Tue, 28 Jul 2020 15:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595951598;
 bh=OuxCoUV/Gm9xGmt005BF7ghh+V5TDaF/FvZpjT7+Pn0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SaWxadHSweB5pY8xDgYABO2l9O5HRBSD+QJqCdZcxCi8HKaoS+5z8El+0pznGlsOL
 oPYnRsC0p1aJQyCuzQ/C868Y+JrjTyFND5q1SQ0EfJ+kfp0+/t8ddf5PwONqR+s4Jo
 FRx4UkDHL8TNF4TC0GFFpUZv1eA+KpaESL4W3ZxI=
Date: Tue, 28 Jul 2020 17:53:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
Message-ID: <20200728155311.GA4178776@kroah.com>
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <20200728145419.GA3537020@kroah.com>
 <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, stern@rowland.harvard.edu,
 jrdr.linux@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 28, 2020 at 09:14:24PM +0530, Dhiraj Sharma wrote:
> Sorry, I didn't realize that I committed a mistake by not replying to
> all. It was an accidental mistake which will not be committed in
> future now.
> 
> >
> > That is not needed in a changelog text.
> >
> 
> Alright Sir.
> 
> > Neither is this, please be specific about what you have fixed.  My bot
> > should kick in soon with more specifics...
> 
> Sir there were checkpatch.pl styling issues and I fixed them all
> together, so should I write a proper changelog as what all I fixed i.e
> errors and warnings thrown by checkpatch.pl

As the bot said, only do one type of thing per patch, and "fix all
checkpatch errors/warnings" is not one type of thing.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
