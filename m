Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DAE3237EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 08:30:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E32E6F5DF;
	Wed, 24 Feb 2021 07:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNfTc2VPPmoQ; Wed, 24 Feb 2021 07:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09363606AA;
	Wed, 24 Feb 2021 07:30:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E89851BF35E
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 07:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D870143077
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 07:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i97pp7zFvVrk for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 07:30:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16F9B414ED
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 07:30:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E69E64ECB;
 Wed, 24 Feb 2021 07:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614151838;
 bh=6KWcfVE7ehtOI43lndv+QRd+lKd96Y/+ShOkch0BvBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FZHdrLqNH9uYP4vwZ06tHXixoDEsOIIeNQG4EdVvL7nVAYr01/NALZADmr5WLBX66
 l/CUvVBaVrpsn08NRUIVUuwwsveAAi8h5jwjMVegQNhbR8i5Q+R8cJiwkJuFQJXMVP
 7HC8e6PCqBmVISCDhgKqnWm+eaXrYAY4YLFxEu1w=
Date: Wed, 24 Feb 2021 08:30:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: chakravarthi Kulkarni <chakravarthikulkarni2021@gmail.com>
Subject: Re: [PATCH] drivers: staging: comedi: Fixed side effects from macro
 definition.
Message-ID: <YDYAm4GeMD/M4gic@kroah.com>
References: <20210217142008.29699-1-chakravarthikulkarni2021@gmail.com>
 <3c1ddf91-da6c-5620-61e7-1ec453b2aa93@mev.co.uk>
 <CAEwrQWZEXYJDsTDiOAZLOr5jLXXyuZamwqRMquCyBdYPa8anow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEwrQWZEXYJDsTDiOAZLOr5jLXXyuZamwqRMquCyBdYPa8anow@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-kernel@vger.kernel.org, Ethan Edwards <ethancarteredwards@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Wed, Feb 24, 2021 at 12:47:26PM +0530, chakravarthi Kulkarni wrote:
> Hi,
> 
> I tested it will unit test cases it looks fine.
> int x = 10;
> NI_USUAL_PFI_SELECT(x++)
> 
> will not have side effects as it is taken care using local variable in
> macro.

You ignored what Ian said about why this change was not ok :(

It's long deleted from my review queue, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
