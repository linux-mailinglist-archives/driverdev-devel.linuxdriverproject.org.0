Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CE1318877
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:46:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C88786DDA;
	Thu, 11 Feb 2021 10:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcsEppN5B6mP; Thu, 11 Feb 2021 10:46:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1C0A86DE1;
	Thu, 11 Feb 2021 10:46:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6501BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A22D87561
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:46:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5tj0-kccv6Go for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:46:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D862C8755C
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:46:04 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6EB2B64E30;
 Thu, 11 Feb 2021 10:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613040364;
 bh=LwGqfeqndjouoBOTmTl++2nGkzNAHPW3aZzYw4jG8Zw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mKG60i4HiYI/zfsUUtRI3tJ6nEJ9AoEqJeOLeXBBQhhfugS7tfIA3NWFg1JayAtYb
 lI9Ad/TTxQDveeD/07RGq1iJZx5moSlfZhiGvHR5/XzIxgx5F750g6nm94NnwSKND3
 JSerqobmuELONH2GkhSIGALGaSr4ATxTo/YvV7ZM=
Date: Thu, 11 Feb 2021 11:46:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: karthek <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <YCUK6Bi9lFziF6qG@kroah.com>
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
 <20210211075715.GD2696@kadam>
 <CAJ5zXr3ONFFHL7g8Xt=BjM9SJK16HEwiqhkBPTbrBTwa=DDqog@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ5zXr3ONFFHL7g8Xt=BjM9SJK16HEwiqhkBPTbrBTwa=DDqog@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
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

On Thu, Feb 11, 2021 at 04:00:04PM +0530, karthek wrote:
> Should i send them as patch series?

Please do.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
