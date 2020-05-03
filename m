Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A04011C2A99
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 09:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EA2A87587;
	Sun,  3 May 2020 07:47:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPOSR-jqcWra; Sun,  3 May 2020 07:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BD5F86FBE;
	Sun,  3 May 2020 07:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE9491BF427
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5A0A2049E
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7yjU7S04IONq for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 07:47:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E863A203E9
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 07:47:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 132492078E;
 Sun,  3 May 2020 07:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588492047;
 bh=dFV2e4YWFSavsf0eXpuyLOj5IEY9P9HmvZlhRFbJusM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cmWdjcWmqB5orlckKy6/wpOZpiYxX44UDsCoKYHqEQXDwrM5wOJBL3A+n48FhAeci
 Fq0da8AyvouA1ntX+V5+fdppYTv3sPhehD/L08sVrELUwlnaK/fowNKi6BlFLOGdmp
 O9eE3bQ5uwTFBKvhAv5yd6hWtGB4L24IuPiGSpxQ=
Date: Sun, 3 May 2020 09:47:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Richard Yeh <rcy@google.com>
Subject: Re: [PATCH] staging: gasket: Check the return value of
 gasket_get_bar_index()
Message-ID: <20200503074725.GC536697@kroah.com>
References: <20200501155118.13380-1-oscar.carter@gmx.com>
 <CANJCoRvCUFkRuSSM0egkMuAd5+kzve4CWvhQ3KkppZBSM8PGkw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANJCoRvCUFkRuSSM0egkMuAd5+kzve4CWvhQ3KkppZBSM8PGkw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 John Joseph <jnjoseph@google.com>, linux-kernel@vger.kernel.org,
 Simon Que <sque@chromium.org>, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 02, 2020 at 05:59:18PM -0400, Richard Yeh wrote:
> Hi, as a new maintainer, I thought I would try to handle this one.

Great, as a start:

A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

> This patch looks good to me. This new check properly protects against using
> a negative return value from gasket_get_bar_index() to index into a
> pointer. The gasket_get_bar_index function is called in two other places
> (old lines 845 and 1044) and both other places check the bar_index return
> value for negative values and return error values.
> 
> What is the next step in the process? How do I test the patch? Does Greg
> K-H take these patches directly, or is there something else I should do
> (looking at
> https://github.com/gregkh/presentation-linux-maintainer/blob/master/maintainer.pdf
> page
> 5: clone from
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git, ...)?

Just send a "Reviewed-by:" to the patch and I can take it from there.
Also, I strongly suggest going and talking to your co-maintainers for
exactly how to do this, normally at this point in the process you
already know this as it is usually an experienced developer doing the
maintaining.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
