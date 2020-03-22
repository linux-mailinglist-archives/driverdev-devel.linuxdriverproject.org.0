Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B481618E781
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 09:15:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3AE220511;
	Sun, 22 Mar 2020 08:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MTfTdGnZj1YG; Sun, 22 Mar 2020 08:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC68920479;
	Sun, 22 Mar 2020 08:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BFAA1BF3AB
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 08:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3755E876F2
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 08:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HjYTwis3gKSl for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 08:15:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B0B8869C4
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 08:15:40 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id x82so6693044vsc.12
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 01:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ezcgfr720kBfY/HJS4uuB/t7vgSWU2iG9iLOlGLgKJI=;
 b=rcSLAkh7COROd7o4ApgHEMEtSLdExdWECEl2GabkxrsN+ajPA3EU8JS1OZl6Icyf7x
 Y0BQvlpEvAxK5C20AtiAX/TXpsBpjkpJIgWUSDfH/5jKlo/lIJ/o+cMJhOdBTdCMJBag
 0DyrmKqON8QcLvN80mh+5px3XsjyFARF4DCVyv1ScbEVYHs8sTEPKCKyZ/pN7gb29dAV
 +zBWweAs00EYhERPlLd2tNxp3Zr9RghPSPVQAbD2JF5PNlTCZtjOS2gQVN5h0OPQrnyE
 zpI5GEMYpCmNOLdPOy2G7kE4rS3sig50kY0YNG60CVNyvFuUJnnqyvZTgc9WoU9WNebr
 4mfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ezcgfr720kBfY/HJS4uuB/t7vgSWU2iG9iLOlGLgKJI=;
 b=XLBSnQGm2wBccnF/FFw50LuD3VFWUP4eZWJmMQuQmfzokApTgAoY3M9SLwvvBcEJZL
 YrKyiKSAb2+vtEinB/019tDoF0qROVcsLx8OuE3MVm8s7R4vdjhW9ZLB+N3mN+of2nz2
 oQf4eOMJ6oejUKAu1y5gWMVsJKEMOtVQdRQJSrgoJywx1DSmV7OA4PKtKLhZgcpZD2VV
 adRo66RsKIYXQdqSx2KxCsDGJBIlnbQxRV3Uf7VHATGbloSfTyJFz1pzIJ0hky2pUL3b
 5DdlbIM4k85+2gEkYaqFxHL3ggZDskj7oK9Y6Gz3G75Iu51DWQxGotLIrVpPSjaPjTNZ
 GB3Q==
X-Gm-Message-State: ANhLgQ3Z9jsMcbNhwxnXvSk3DIZB4HTAGJG7kqS8DbEmpuRC3RgIHsTh
 mGlusVQcskour1250OWW6FEGJSIGmIjsXNzx/tM=
X-Google-Smtp-Source: ADFU+vtkMCRgTxiszn+evIYmA8iNm7v4BrYphINlVDqn6EguH6H6hzPEt788R/4wOf7kBv6RpieQU0M9GuiJtSdGBX4=
X-Received: by 2002:a67:c189:: with SMTP id h9mr1262941vsj.91.1584864939578;
 Sun, 22 Mar 2020 01:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000001a033405a15e3acb@google.com>
 <CADG63jBdvJMAem7_VF3GbCUSXGRuFrrv6_GqFc=KcKkxcNebCA@mail.gmail.com>
 <20200322075850.GA68214@kroah.com>
In-Reply-To: <20200322075850.GA68214@kroah.com>
From: Qiujun Huang <anenbupt@gmail.com>
Date: Sun, 22 Mar 2020 16:15:28 +0800
Message-ID: <CADG63jD5vHoTqfmqeRjcYniBLk8reBRfKy+=ZT2aJfcRDa4S6A@mail.gmail.com>
Subject: Re: WARNING in hwahc_probe
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, tranmanphong@gmail.com,
 Andrey Konovalov <andreyknvl@google.com>, linux-usb@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot <syzbot+df767d588771697b0433@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 22, 2020 at 3:58 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, Mar 22, 2020 at 03:53:44PM +0800, Qiujun Huang wrote:
> > The return value of snprintf is longer than expected if the string is
> > truncated. Bytes need to be checked here.
> >
> > diff --git a/drivers/staging/wusbcore/host/hwa-hc.c
> > b/drivers/staging/wusbcore/host/hwa-hc.c
> > index 8d959e9..1475a48 100644
> > --- a/drivers/staging/wusbcore/host/hwa-hc.c
> > +++ b/drivers/staging/wusbcore/host/hwa-hc.c
>
> This file is no longer in the linux-next tree and will be deleted in the
> next kernel release.
>
> Also, no one has this hardware so there's no real security issue here at
> all.
>
> And finally, you forgot a signed-off-by line on your patch :(

Get that, thanks.

>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
