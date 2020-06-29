Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE6120CFEE
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 585E189367;
	Mon, 29 Jun 2020 15:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCCkFn-kmbRr; Mon, 29 Jun 2020 15:55:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C082389290;
	Mon, 29 Jun 2020 15:55:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E91A1BF388
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B6C989290
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNlI2z4t3jT0 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:55:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0FF7B8928B
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:55:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3DB7F2554B;
 Mon, 29 Jun 2020 15:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593446112;
 bh=4iXE6X6BH7Sxje+iISVf8jR0Is6iv3UfKTVAnMUZGaY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h2U+MILBVT23YaZGdGpLO6laSjCwUsbg1urnAwBg/mN+0QstKMt2rgVhJrjbvq5RT
 s6etxdPdTY1Mv4RLGYevq3RavmmS//9KWuBexp7reG+SFRlF4vhtx+Z2GYBUqhoUnK
 bgcM4W2IY97lLpe70xK5huDwRLE4lOXseGWjvwcM=
Date: Mon, 29 Jun 2020 17:55:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: media: atomisp: i2c: atomisp-ov2680.c: fixed a
 brace coding style issue.
Message-ID: <20200629155503.GB512815@kroah.com>
References: <20200628043833.3dodctrmkec6aoe5@pesu-pes-edu>
 <20200629144336.fhykjoqrhfhifmes@pesu-pes-edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629144336.fhykjoqrhfhifmes@pesu-pes-edu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 B K Karthik <karthik.bk2000@live.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
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

On Mon, Jun 29, 2020 at 10:43:36AM -0400, B K Karthik wrote:
> Did this get burried in along with a bunch of other patches? I am sending this email only because I did not recieve a negetive acknowledgement on the patch.
> 
> I apologize if this message was hurtful / disrespectfull in any manner,
> thank you for reading this message.
> 
> karthik
> 
> On 20/06/28 12:38AM, B K Karthik wrote:

You sent this one day ago.

Please be patient, some maintainers only get to patches every few weeks.
If, after 2 weeks, there has not been a response, then resend it.

Remember, maintainers have other work to do as well, and staging patches
are usually down the list of things they work on.

(hint, I'm not the maintainer of this part of the staging tree...)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
