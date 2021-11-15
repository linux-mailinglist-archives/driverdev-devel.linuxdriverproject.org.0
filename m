Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC59450171
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 10:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC87340462;
	Mon, 15 Nov 2021 09:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLf4m_TPCnhi; Mon, 15 Nov 2021 09:31:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F14F40458;
	Mon, 15 Nov 2021 09:31:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F38C31BF336
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E992840458
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 09:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJcU3BXCmZDN for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 09:31:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EE9840455
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 09:31:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6736363217;
 Mon, 15 Nov 2021 09:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636968674;
 bh=G0fTib9/0b1mnYKVkiUm8km36ge1tFdJyIdv966rJCk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O09OIJQiE0uZvSjBlH0bNRrmX2K6ZCEK3q+11SGdz5eN73cOMvhmpKj4uQIj37UOt
 OdQHlhgHuFhUxlJLVcJhHq5+zGuyyic/lFkPWwzPBp9UuI5k9nLiG97Wr6CQ2osG+C
 KpVrsuz3TvYhnZryaCsGM1Vkw5vvkK6fQujQNnCc=
Date: Mon, 15 Nov 2021 10:31:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: fix camelcase in wCurrentRate
Message-ID: <YZIo4HLyJ0TLT1I7@kroah.com>
References: <20211114090935.GA120704@t470p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211114090935.GA120704@t470p>
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

On Sun, Nov 14, 2021 at 10:09:35AM +0100, Alberto Merciai wrote:
> Replace camelcase word variable "wCurrentRate" into linux kernel coding
> style equivalent "current_rate".
> 
> References:
> https://www.kernel.org/doc/html/latest/process/coding-style.html

We all know the kernel coding style, no need to have a link to it in the
changelog text, right?

> https://www.cse.iitk.ac.in/users/dsrkg/cs245/html/Guide.htm

Why is this here?  That's a random college course web site.

And random links in changelog text do not age well, include the full
text of what matters in the changelog text itself, it should be
self-contained where ever possible as these live much longer than random
web site links will.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
