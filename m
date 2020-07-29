Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBB4231930
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 07:46:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E20E85E03;
	Wed, 29 Jul 2020 05:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NifIyAfukDaD; Wed, 29 Jul 2020 05:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3376785D4C;
	Wed, 29 Jul 2020 05:46:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C0691BF37F
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 05:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 35E4E87F34
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 05:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SKQvEBF1XxFL for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 05:46:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4EBD8757D
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 05:46:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E05042076E;
 Wed, 29 Jul 2020 05:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596001605;
 bh=pePAJ4Ia9ZHBwn/lH6/j1CE/q64jj5R/LOQFr37raXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r7OIaT4YSgbGCT8Sm9BK18kqONhv+6wxyKCKzRm4k8T1jE+ejTGXOA/TITV+pVVjX
 T+hfrA3ErOUDIuv1McMGwSesdssOW+zzdhwNrBApfwlbOXlz/Q2c7XgQlI3uDengld
 mBWgJm7Na/CIqeJG8HHu4JOFzO3RXh7hWbBjpj5I=
Date: Wed, 29 Jul 2020 07:46:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Subject: Re: [PATCH] staging: qlge: qlge_dbg: removed comment repition
Message-ID: <20200729054637.GA437093@kroah.com>
References: <20200728182610.2538-1-dhiraj.sharma0024@gmail.com>
 <CAPRy4h2Kzqj449PYPjPFmd7neKLR4TTZY8wq51AWqDrTFEFGJA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRy4h2Kzqj449PYPjPFmd7neKLR4TTZY8wq51AWqDrTFEFGJA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, manishc@marvell.com
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

On Wed, Jul 29, 2020 at 11:06:56AM +0530, Dhiraj Sharma wrote:
> Hello,

<snip>

It has been less than 24 hours for a simple comment cleanup patch.
Please give maintainers time, they deal with thousands of patches a
week.

Usually, if after 2 weeks, you have not gotten a response, you can
resend it.

>  I know that I should ask for reviews etc after a week but the change
> is for my eudyptula task and until it doesn't get merged little
> penguin will not pass the task for me so please look at it.

If you knew that you should wait for at least a week, and yet you did
not, that implies that you somehow feel this comment cleanup patch is
more important than everyone else, which is a bit rude, don't you think?

There are no such things as deadlines when it comes to upstream kernel
development, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
