Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E34D3BF6
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 11:11:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B5F2255FC;
	Fri, 11 Oct 2019 09:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dG2fFTDWaK99; Fri, 11 Oct 2019 09:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88592204B7;
	Fri, 11 Oct 2019 09:11:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 805E81BF330
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CC7C203D4
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 09:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hE2YRzHeikjM for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 09:11:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 45795203AE
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 09:11:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AE5B21D6C;
 Fri, 11 Oct 2019 09:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570785073;
 bh=0b+19Hn7UbHkSSxLN4MXTvyEt2kAc48uoFb/JWDbo/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ocPh3/IRZQVb6NWWmgiy3Ewp0AlBTKWgVUlOD9k5lB1EdxY2kvluEZsmwGLFROwKo
 MK4ylNgMuOO+WVtdy0wLIimkuRJYbSy/adKfmNBJ3iilOZ2IXKLLU9JltHeihqpe1z
 QVufYp25TN4xae0NxTIaWAOUMesGXjxOu5+P9D94=
Date: Fri, 11 Oct 2019 11:11:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH 2/5] KPC2000: kpc2000_spi.c: Fix style issues (missing
 blank line)
Message-ID: <20191011091110.GA1124173@kroah.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
 <20191011055155.4985-2-chandra627@gmail.com>
 <20191011063321.GB986093@kroah.com>
 <CAEge-i7Va8NrVGYzssFqvuGEwV=xPu9VL5_ZewXn2985QbEmcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEge-i7Va8NrVGYzssFqvuGEwV=xPu9VL5_ZewXn2985QbEmcw@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>,
 Dan Carpenter <dan.carpenter@oracle.com>
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

On Fri, Oct 11, 2019 at 02:02:32AM -0700, Chandra Annamaneni wrote:
> The first set of patches were in a single commit. I started from scratch
> and built these patches from 5 different commits. Don't know if the first
> set of patches are relevant anymore.

They are not relevant to being applied, but this patch series has
changed based on the comments you received from the previous patch(s).
So it is relevant to how you got to this set of patches.

This makes it easier for reviewers to understand what changed and what
they need to focus on, or ignore, in your new set of patches.  This
isn't for you, it is for the people you are sending these patches to.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
