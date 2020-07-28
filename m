Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B87C231040
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 18:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6350A86833;
	Tue, 28 Jul 2020 16:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oe2PZvg9ERkq; Tue, 28 Jul 2020 16:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03F6F86917;
	Tue, 28 Jul 2020 16:59:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCEA1BF232
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74AEC8481F
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 16:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6vwzyYFJyIS for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 16:58:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B6F1847A7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 16:58:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DD502053B;
 Tue, 28 Jul 2020 16:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595955507;
 bh=eCkMT76O+xXbROm2ziLq2LEQ8IQGqoTiQPmsQE6GmSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RkLeWrMSP5SsQvlOglsFMOpx8DwH3ZewI0sb7ElO/NMoScbkZX3y6q6IpQ+9ai7HG
 MBuCCak3t9e8fWWzHEB2gMXerpDKrbJQ5WopWlPs6dohvcwOqzaptEonYk9ztUSE98
 0kMKtn5+ytWk3Z4IQj6LDv1JzAxyuvwAJFqe8ijw=
Date: Tue, 28 Jul 2020 18:58:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
Message-ID: <20200728165820.GA42656@kroah.com>
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <20200728145419.GA3537020@kroah.com>
 <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
 <20200728155311.GA4178776@kroah.com>
 <CAPRy4h2Zbw=QwJ7=0+FzGnK_o1esn2GTRSuv5ZE30Vu=Oj=x=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRy4h2Zbw=QwJ7=0+FzGnK_o1esn2GTRSuv5ZE30Vu=Oj=x=Q@mail.gmail.com>
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

On Tue, Jul 28, 2020 at 10:13:22PM +0530, Dhiraj Sharma wrote:
> > As the bot said, only do one type of thing per patch, and "fix all
> > checkpatch errors/warnings" is not one type of thing.
> 
> So should I send a fresh patch with minimal fixes? instead of replying
> to this mail with [PATCH 01]

Why are you ignoring what Hans said?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
