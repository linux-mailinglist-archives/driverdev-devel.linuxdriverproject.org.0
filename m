Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43236751D3
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 16:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C03E863E2;
	Thu, 25 Jul 2019 14:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6JiuLN_J4kod; Thu, 25 Jul 2019 14:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F37ED8638F;
	Thu, 25 Jul 2019 14:52:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEDF01BF322
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB5E68638F
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 14:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 844BY3ZEdNCc for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 14:52:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 492658616A
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 14:52:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B4E421734;
 Thu, 25 Jul 2019 14:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564066372;
 bh=UiAPxBMDA0i/iMkH2fdA0nFfj4Rn3c8p0jAXHIvZ0og=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qI7UPyLJQ98A3zSspuu8RTVksaDq1QaMKEkkw7btW+Aj4OCcSqpUxLcys6FN/ctNf
 ZxrqUa+qWaSzdtNjYKLdto+bbh0+HjEuSAbH4vhDNqyhcp92mdZ7sGuW6Ucol5y1Ds
 zmVnX+Gywp1MH4/lE9cQ3GEbGP6Cb/cQusPgDVmo=
Date: Thu, 25 Jul 2019 16:52:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] staging: rtl8723bs: Disable procfs debugging by default
Message-ID: <20190725145249.GA32271@kroah.com>
References: <20190718092522.17748-1-kai.heng.feng@canonical.com>
 <20190725075503.GA16693@kroah.com>
 <83A2CB3F-B0C4-43C6-A3A6-B6E8B440BECC@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83A2CB3F-B0C4-43C6-A3A6-B6E8B440BECC@canonical.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 10:48:42PM +0800, Kai-Heng Feng wrote:
> at 15:55, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Thu, Jul 18, 2019 at 05:25:22PM +0800, Kai-Heng Feng wrote:
> > > The procfs provides many useful information for debugging, but it may be
> > > too much for normal usage, routines like proc_get_sec_info() reports
> > > various security related information.
> > > 
> > > So disable it by defaultl.
> > > 
> > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > ---
> > >  drivers/staging/rtl8723bs/include/autoconf.h | 4 ----
> > >  1 file changed, 4 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/include/autoconf.h
> > > b/drivers/staging/rtl8723bs/include/autoconf.h
> > > index 196aca3aed7b..8f4c1e734473 100644
> > > --- a/drivers/staging/rtl8723bs/include/autoconf.h
> > > +++ b/drivers/staging/rtl8723bs/include/autoconf.h
> > > @@ -57,9 +57,5 @@
> > >  #define DBG	0	/*  for ODM & BTCOEX debug */
> > >  #endif /*  !DEBUG */
> > > 
> > > -#ifdef CONFIG_PROC_FS
> > > -#define PROC_DEBUG
> > > -#endif
> > 
> > What?  Why?  If you are going to do this, then rip out all of the code
> > as well.
> 
> Or make it a Kconfig option? Which one do you think is better?

No new config options please.

> > And are you _sure_ you want to do this?
> 
> Yes. The procfs of rtl8723bs is useful to Realtek to decode but not to
> others.

If no one else needs this, then rip out all of the code that uses it,
not just the single #define.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
