Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B36F8FB9F
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 09:03:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 929E38794A;
	Fri, 16 Aug 2019 07:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrNIXdPdWbHh; Fri, 16 Aug 2019 07:03:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56CCA81DFD;
	Fri, 16 Aug 2019 07:03:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 866201BF842
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BFC1860C1
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 07:03:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDU3kr4u9GKu for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 07:03:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D6E0E85F49
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 07:03:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A679206C1;
 Fri, 16 Aug 2019 07:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565939026;
 bh=harVtDZ3Mjw5P1AQ7Ik6ukdvdVe+6Ge5VYwU38+ajZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qsO94+A0bPL9zhDaWF3g9RCQFGvKtfFMVXDQK1TM9It4agcJIYZsnoGuBJqFDtc6v
 VRTpeHGWGg/PIR8H4OU2gS2T69sWzzHU4+zxgB80kb03Jm/gU8JxdGXa2L0r+6Ss1j
 ckeaXF8OL9nMl6/L5DCR7frYhxnngfZBfGcV0/uQ=
Date: Fri, 16 Aug 2019 09:03:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhao Yakui <yakui.zhao@intel.com>
Subject: Re: [RFC PATCH 00/15] acrn: add the ACRN driver module
Message-ID: <20190816070343.GA1368@kroah.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <20190816063925.GB18980@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816063925.GB18980@zn.tnic>
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
Cc: devel@driverdev.osuosl.org, x86@kernel.org, Borislav Petkov <bp@alien8.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 16, 2019 at 08:39:25AM +0200, Borislav Petkov wrote:
> On Fri, Aug 16, 2019 at 10:25:41AM +0800, Zhao Yakui wrote:
> > The first three patches are the changes under x86/acrn, which adds the
> > required APIs for the driver and reports the X2APIC caps. 
> > The remaining patches add the ACRN driver module, which accepts the ioctl
> > from user-space and then communicate with the low-level ACRN hypervisor
> > by using hypercall.
> 
> I have a problem with that: you're adding interfaces to arch/x86/ and
> its users go into staging. Why? Why not directly put the driver where
> it belongs, clean it up properly and submit it like everything else is
> submitted?
> 
> I don't want to have stuff in arch/x86/ which is used solely by code in
> staging and the latter is lingering there indefinitely because no one is
> cleaning it up...

I agree, stuff in drivers/staging/ must be self-contained, with no
changes outside of the code's subdirectory needed in order for it to
work.  That way it is trivial for us to delete it when it never gets
cleaned up :)

You never say _why_ this should go into drivers/staging/, nor do you
have a TODO file like all other staging code that explains exactly what
needs to be done to get it out of there.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
