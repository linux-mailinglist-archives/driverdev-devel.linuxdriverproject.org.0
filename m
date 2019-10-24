Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 501DBE2E07
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 12:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FEC8868E8;
	Thu, 24 Oct 2019 10:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6VGoHgraWyW; Thu, 24 Oct 2019 10:00:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAB0A86911;
	Thu, 24 Oct 2019 10:00:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7F4E1BF33E
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 10:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9D6978788C
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 10:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mTxqWJIcvtRb for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 10:00:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87A4E87842
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 10:00:31 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id q7so14818411pfh.8
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Un8dozXGi1hBwrcyMyk9H9EF84fhz0PhjEtVbAbr1g0=;
 b=kjCSSh2XWmvn8CMJsbBOFPWBAaUKWR6ru7vss61PnWeUShh2WEMVYstKENB7UQIP6n
 4JwL616OEigeu3r1FY2QMKFTVlu/abv7HIrYMnVAhB+5gnMk0qg8QZq5BhYss1FnNW/Z
 r8JXUrOrH7f8PCaZ+S7Rd3+zr9NgYjoZdhLouR0mifoBLWzrE72lkPeHppSoGN04hL4k
 JHY77XrfEkw1js5feDxR5f/P2ts/V0wMspJSos5JCXiycPtJBqMIA7akXdP0MkPbLtMs
 PDeTcD69ImKjnd+k9orHMyMHRlDPzLTUV+2nwICZwbh+vCLww8YFRET5/9+4CQa0W1vw
 dpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Un8dozXGi1hBwrcyMyk9H9EF84fhz0PhjEtVbAbr1g0=;
 b=T9fwkpT/+ksH8m8HrhvOLW+8KKtymCm2ngIYG+oMkmJVZSoX5A3UPiAjpRrNpXVeD1
 GCNwGzXop8Nkxocl3Kjw1Md7KOY+rtVDqP1f1K715CpshP4FImKWLLsJDcyFvI9+sE7j
 BrjQj1wVNhHYWvd3/xCKH3mujAt0JM5AJYJwTUk686FIS2ra04HVI6eWIry4cu+fR+z6
 FJGoiFfWij/dVbxXwCdqpGEVopZ5WO74k6ZKixi918OesgfsEjAdKLFmKUVqMZqP1FQV
 oqgq6n16kLUy34V0pXju+Naag1z5lOO0VlBvo5Q+T16kmC0uukD8Y69bm38FMTJTRye6
 gaqA==
X-Gm-Message-State: APjAAAUCwcxtE/Yvbg8Y5WO8WVZAtRv16H0kCm6ukGOuo08r9XTgNVgu
 2VJgxhnK29diz5WAhcXNOxk=
X-Google-Smtp-Source: APXvYqxEyT4XClHCb2W6cq5qFcu+aP1RWWIfWj4rcME03pjh/52UE8YKoRPa0CqPdxayCPdhdMUdDg==
X-Received: by 2002:a63:934d:: with SMTP id w13mr12839626pgm.185.1571911230923; 
 Thu, 24 Oct 2019 03:00:30 -0700 (PDT)
Received: from wambui ([197.254.95.38])
 by smtp.gmail.com with ESMTPSA id j63sm10564453pfb.162.2019.10.24.03.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 03:00:30 -0700 (PDT)
Date: Thu, 24 Oct 2019 13:00:20 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
Message-ID: <20191024100020.GA13343@wambui>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
 <alpine.DEB.2.21.1910240722070.2771@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910240722070.2771@hadrien>
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
Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien.osuosl.org
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paulburton@kernel.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > If you're making significant changes to this driver, please test them
> > using the MIPS cavium_octeon_defconfig which is where this driver is
> > actually used.
> >
> > This driver has broken builds a few times recently which makes me very
> > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > The whole octeon-stubs.h thing is a horrible hack anyway...
> 
> Wambui,
> 
> Please figure out what went wrong here.  Are there two sets of typedefs
> that should have been updated?
>
I managed to reproduce these build errors and finally noticed that the
"octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
is not defined, therefore compiling properly for COMPILE_TEST but will
actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
the functions will try to use the definitions in
arch/mips/include/asm/octeon/ that don't have the changes.

Paul, please tell me if this is correct?

Thanks,
wambui

> Others,
> 
> Would it be reasonable to put the information about how the driver should
> be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> octeon directory turns up nothing.
> 
> thanks,
> julia
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910240722070.2771%40hadrien.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
