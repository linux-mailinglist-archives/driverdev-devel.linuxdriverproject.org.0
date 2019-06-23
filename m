Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3187C4FA6E
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 07:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42CC284042;
	Sun, 23 Jun 2019 05:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUCfGzJq-h8Y; Sun, 23 Jun 2019 05:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBF9E82462;
	Sun, 23 Jun 2019 05:59:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D474C1BF20D
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 05:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE0EF81C39
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 05:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9NkV7Xl6ywD
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 05:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C10F81926
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 05:59:03 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 65so7434581oid.13
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 22:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vjO1VumWjK6Ff9bRZ29tC9aXvxE0EpWgTzKOIw9NKoA=;
 b=u39ldoOQrz/JHO/Ic7+AVS8AdsjmjPQa9pP1y+iIkCCUCzL9WLZyN9EoAEpmsGnF5w
 hK3cCVDQnQFb22vYIsD/KESz7Ubecpz55r67nj65RllIYiQOGchbG/jTF3gs9++JF0nD
 9oEHCvg/3RTsP7jkzQ0qLr1wqu8ii7gGrROyTm1ayaVVdybdA8UEHIzQXmDtfbXFNzpC
 8mxwSMM/rhrxiy9q4iUycW3SOwM9DPiv3e1l9H1fFdAm7dkPPXwS2lQw4HmC6m6XImF1
 iKoTVDs2lTG88g0vc41x3pRarpde1/XLNWU7BLisdmBM/RDcPd9UNtoe8lOL1xJFPnno
 u6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vjO1VumWjK6Ff9bRZ29tC9aXvxE0EpWgTzKOIw9NKoA=;
 b=JUVf9SldYLdNY38jIj+GC6GVn2E4SZ5AbEgF6PKgAUwnhOk9khwyTCJfEeOeAFQyE5
 4z6pv1ygiHW9zzd8gVXfob5k9/BTZnE10uwW105jOaoO4Un3sQdf/ZCqX70+aHTBXCi4
 W/McMTKABDwmt0I7viLqAI5kh4qmElUrJmPjd6HyNU5J+1LIbciW3gcayUzeZmQLTgLD
 XJG//sjjyQm3UGQkS4VYMSyFcl/DJmG2+sNCLkGvGA+joDaCcwGFHkg6/MP3HEbW4Nt3
 hGX6INSMupDKpjT9qQhdHc5U5sBZ+rN6RJg6nfr4+HIoLJDT2xSmfeaMUAxgn6WUQRsR
 37Zg==
X-Gm-Message-State: APjAAAUajW6uLd4cF4084mjpX9q9yMRRLclv/AfR1wqjeTLikMr7e1dN
 qRCVYISLUXeqfdOYRafq+IGxau10lFtb6UFaIdk=
X-Google-Smtp-Source: APXvYqz3/QQrkejmt2dFRHjZJToYzPEx/Cvf2LDPbBd6+eLuqWz/umA+9zUrQY5xfft1oR57T7TSEJyGiEguYqp6Zd8=
X-Received: by 2002:aca:4383:: with SMTP id q125mr7597009oia.29.1561269542405; 
 Sat, 22 Jun 2019 22:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
 <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
In-Reply-To: <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 23 Jun 2019 07:58:51 +0200
Message-ID: <CAMhs-H_c8sq=mX-rPRDHtkqyRj1fQcSNY_8M7Y5ZGU2FV9_zSA@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Brett Neumeier <bneumeier@gmail.com>
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
Cc: Neil Brown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 Greg Ungerer <gerg@kernel.org>, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Brett,

On Sun, Jun 23, 2019 at 4:15 AM Brett Neumeier <bneumeier@gmail.com> wrote:
>
> On Fri, Jun 21, 2019 at 7:35 AM Greg Ungerer <gerg@kernel.org> wrote:
> >
> > Hi Sergio,
> >
> > On 21/6/19 4:15 pm, Sergio Paracuellos wrote:
> > > This patch series properly handle minor issues in this driver. These are:
> > > * Disable pcie port clock on pci dirver instead of doing it in the phy
> > >    driver. The pci driver is the correct place to do this.
> > > * Add a missing call to phy_exit function to properly handle the function
> > >    'mt7621_pcie_init_port' error path.
> > > * Move driver to init in a later stage using 'module_init' instead of using
> > >    'arch_initcall'.
> > >
> > > Patches are only compile-tested. It would be awasome to be tested before applied
> > > them (mainly the change to 'module_init' stuff).
>
> I have similar results to Greg -- on GnuBee PC1 and PC2, six boot
> attempts each on a kernel built from staging-next, I have four hangs
> and eight successful boots. The hanging patterns are similar to
> previous results. If the full boot logs would be helpful let me know,
> I can provide them.

Thanks for letting me know. One thing we can try is check init order
in v4.20 kernel. Can you please try to compile pci driver for the
kernel v4.20 tag changing
driver's last line 'arch_initcall' into 'module_init'? Just to know if
at that working driver putting all the stuff in a later stage stills
work as expected.

Full dmesg's of this v4.20 wih the change would be helpful.

Best regards,
    Sergio Paracuellos

>
> --
> Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
