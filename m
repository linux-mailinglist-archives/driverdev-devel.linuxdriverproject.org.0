Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D49C33A398
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 09:35:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5B966F491;
	Sun, 14 Mar 2021 08:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTbBx_gALLiX; Sun, 14 Mar 2021 08:35:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AF6F605A7;
	Sun, 14 Mar 2021 08:35:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2481D1BF46A
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 08:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1463D4011F
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 08:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIIExtoB1SUF for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 08:35:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDC6C400F3
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 08:35:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5923264EBE;
 Sun, 14 Mar 2021 08:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615710931;
 bh=3WtodJc3soLmQ9CqzHPdNBhJrEKF+Kgty8caa746n4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OLygglqo6bNd1UptwpYzp71gwsCEzci5o2/8NO0DmFclo7T0xe8ZDMzM4aRkyPzKK
 yKKUs0ySN/hwS1MKxAcNXWLH9HW1PxgFnd+AKAg/Icn6TqQUbUD1K4YvIUcLtEB8YT
 CROUH3EhtuSAwt93ViOTYIqmxiqCyIxQyS+ilHYQ=
Date: Sun, 14 Mar 2021 09:35:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Selvakumar E <selvakumar16197@gmail.com>
Subject: Re: [PATCH] staging: octeon-usb: fixed precedence issue
Message-ID: <YE3KzgnHyxdpMGZv@kroah.com>
References: <20210313173247.8676-1-selvakumar16197@gmail.com>
 <YE28Uzs6ZhHopk8J@kroah.com>
 <CAD=cR88u5o58NaL=z6NtMc2=N-hesKkFC8tkP3PJ4fu1Oaf-ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=cR88u5o58NaL=z6NtMc2=N-hesKkFC8tkP3PJ4fu1Oaf-ZQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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

On Sun, Mar 14, 2021 at 01:34:23PM +0530, Selvakumar E wrote:
> Hi Greg
>             I changed the line because of the checkpatch.pl warned for
> precedence issue.

But I fail to see how this:

> > > +#define CVMX_USBCXREG1((reg), bid) \

Does anything here at all.

What am I missing?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
