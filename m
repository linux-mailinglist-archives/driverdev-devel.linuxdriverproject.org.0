Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175981123
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 06:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E5718641F;
	Mon,  5 Aug 2019 04:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSiqsAGlyHqA; Mon,  5 Aug 2019 04:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC061863D0;
	Mon,  5 Aug 2019 04:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4FAC1BF2C9
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 04:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1C8085C52
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 04:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nDzbSrYVcSNw for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 04:42:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34F6785C4C
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 04:42:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91A902086D;
 Mon,  5 Aug 2019 04:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564980148;
 bh=l8heV+yBr7W4zVRj4lEIIIi2/Clbco4UH053jKdIlVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MCa8+hFDCbW4J2P0sJ8WcHTEUECZxCS8PKeFRiqpvHeV7uGNdtpbM4iTJ9u7keYXl
 PhdICaSagJBt9sqR6rjXAfc2Lg8A91fW1/IuHRlmuIEIDC6qzTOHNvD08wIeSANvyc
 YLYnzQE0IoeN85gLXr48k6y6NIvsuMg2ddH8MW14=
Date: Mon, 5 Aug 2019 06:42:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Fernando Valle <phervalle@gmail.com>
Subject: Re: [PATCH] drivers:staging:isdn:hysdn brace same line if
Message-ID: <20190805044225.GA14087@kroah.com>
References: <20190802195105.27788-1-phervalle@gmail.com>
 <20190803063528.GC10186@kroah.com>
 <CACRBQB+wx3=3vQrvnxjcoiZaZjP7EOF+f0NYa4p-XKTHW79RiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRBQB+wx3=3vQrvnxjcoiZaZjP7EOF+f0NYa4p-XKTHW79RiA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Sun, Aug 04, 2019 at 10:04:40PM -0300, Fernando Valle wrote:
> Sorry Greg, it was my first submission.
> I followed the kernel newbies tutorial and some other found on the internet.

The best description of how to pick a subject line is in the section
entitled "The canonical patch format" in the kernel file,
Documentation/SubmittingPatches.  Please read that whole file as it
contains everything you need to know about writing good changelog texts
and everything else.

> So, the correct form of the subject would be -> "staging:isdn:hysdn open
> braces in correct location" !?

That's better than what you currently have, but I know you can do much
better than that :)

good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
