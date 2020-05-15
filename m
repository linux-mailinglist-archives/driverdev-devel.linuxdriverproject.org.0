Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7255D1D47AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 10:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9DE988D86;
	Fri, 15 May 2020 08:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pd-yO74PQRCp; Fri, 15 May 2020 08:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFDC688B8F;
	Fri, 15 May 2020 08:05:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3D01BF285
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8667C87CDB
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:04:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiOjmiGEhXQD for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 08:04:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D357E86221
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 08:04:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12F4C20643;
 Fri, 15 May 2020 08:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589529889;
 bh=RYqKuKGzbUvQmW0XH5Ion4mSR3O73xunIq1eJoxhrrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2IsDpecLwPNDImk6t9lquyyDcIzhZCt8az8Ttb9L9iF+PQCNBqzqtM3jqdSDKbcUN
 f8vr87KAlJE7SnbyRzPueswRLMm4Cy1671Fuq1ZoPR7qZmcz7zmn93D/IE7d/FQAxE
 YyjPezQwCZzWnfOMpfMbz08FfLSqWrOVs18S0o9s=
Date: Fri, 15 May 2020 10:04:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anmol karn <anmol.karan123@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Fixed a issue related to
 file_operations
Message-ID: <20200515080446.GA1398375@kroah.com>
References: <20200513114116.26410-1-user@debian>
 <20200513120218.GA982037@kroah.com>
 <CAC+yH-boJnUbnhkLdkZ3Vj8_1D0OMBLKsBYbrcJ2sr29_ekeJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC+yH-boJnUbnhkLdkZ3Vj8_1D0OMBLKsBYbrcJ2sr29_ekeJQ@mail.gmail.com>
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

On Fri, May 15, 2020 at 01:16:12PM +0530, Anmol karn wrote:
> Hello sir,
> Thank you for your response,
> 
> Did you properly build this change?
> 
> 
> I have build the *linux_stable* according to the LFD103 course (By Linux
> Foundation) and the kernel they used in their tutorial was *5.2.21  *so, my
> question is can I use this kernel for the patch or do I need to switch to
> the recent mainline kernel release. Because in the recent patch I have used
> *5.2.21.*

Working on a 6 month old kernel is not going to help at all, you need to
work on the latest tree at the least.  linux-next is best.  Otherwise
you end up making changes that can not be applied, or have already been
done by others, which is just a waste of time.

But what I asked is if you actually test built the change you made.  As
the kbuild bot showed you, you obviously did not :(

Please always do that, you can not add new warnings to the kernel, nor
break the build with any change.

Also work on your knowledge of C before doing more kernel work, as the
change is not correct for the obvious reasons that it is not allowed by
the language.  checkpatch is just a perl script, sometimes it give
incorrect information, like this time.

> Also, always use your full name for kernel changes, as the Documentation
> > states to.
> 
> 
>  Sir, my legal full name is 'Anmol' only.

That does not match what your email "From:" says :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
