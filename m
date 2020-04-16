Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBCE1ABDE0
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Apr 2020 12:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3766C86B90;
	Thu, 16 Apr 2020 10:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzL88cL4AEfv; Thu, 16 Apr 2020 10:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2041D8679A;
	Thu, 16 Apr 2020 10:29:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8BD1BF3F2
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 10:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A5D487089
 for <devel@linuxdriverproject.org>; Thu, 16 Apr 2020 10:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBPKvJdvXwhI for <devel@linuxdriverproject.org>;
 Thu, 16 Apr 2020 10:29:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4FC9861A2
 for <devel@driverdev.osuosl.org>; Thu, 16 Apr 2020 10:29:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 265482192A;
 Thu, 16 Apr 2020 10:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587032950;
 bh=OssfVZy2Gtzt3T7P0reeqZMpIV9JxrCPL2xhmitTd9E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0azUCD7j9RcZZiV9fqaX3mrmQxuFB5X+uVyL8ub/d/3Jq5rCsvrD/6RQAKxkop2lS
 j4FUnBxx+wMRujUOfJqV1bhPGXblv7c1o0DoGeu8Fr243fX6VxwL6R/Ign9lW35kSB
 /FIInuhbq4/sC5RnrupM6QhJ5cvYAf99B4nQjIAE=
Date: Thu, 16 Apr 2020 12:29:08 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlos Guerrero =?iso-8859-1?Q?=C1lvarez?= <carlosteniswarrior@gmail.com>
Subject: Re: [PATCH] Staging: Comedi: Drivers: das08: Fixed some coding style
 issues
Message-ID: <20200416102908.GC820251@kroah.com>
References: <20200413080555.29267-1-carlosteniswarrior@gmail.com>
 <20200413125140.GC3077651@kroah.com>
 <CAB_Ssx7B13Lm-twHuEOzP4EODQ7kqd5jA0mxZS5SnpqxJ65XBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB_Ssx7B13Lm-twHuEOzP4EODQ7kqd5jA0mxZS5SnpqxJ65XBg@mail.gmail.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

On Mon, Apr 13, 2020 at 04:55:08PM +0200, Carlos Guerrero =C1lvarez wrote:
> What do you mean with the From line?

Look at the patch you sent, the "From:" line on your email does not have
your name, only your email address.  Please fix that up when you resend
any future patches.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
