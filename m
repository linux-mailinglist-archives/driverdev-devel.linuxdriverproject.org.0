Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D689105BE0
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 22:25:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A01D2871CA;
	Thu, 21 Nov 2019 21:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YU9RhiTBT-hH; Thu, 21 Nov 2019 21:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4BA908716B;
	Thu, 21 Nov 2019 21:25:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C80E1BF343
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 21:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 72E778842D
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 21:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waC1t44bCdCv for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 21:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6ACC88424
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 21:24:58 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id j12so2157375plt.9
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 13:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Q1XvMSicHqun/DjhHWSSizG6JWrFQYINK7GNPT/QL0=;
 b=NFNWzxqqE1dpNv8IW940dFk+Epi5Z9zg9xmSessf4XR7B9FzloqL6yv+3fMhkH06WV
 kJkBNR8akuIP6Wz7lHuF1wZsg2QkNbIsez5p6TGM2/32e6C28ayohtiaAsaiBi40EHI+
 2KTy/pYAe2C9C6hJF96DbJPf8wbI6MmewAQSY0iEkAcgQJTwkxNW4p4tD6B0jTKj+fFo
 qbSWlkHkTAm5N1XqGXFwG7UMtBJy+KWYySqV+AU1G9zhePhE9Qwlbqi+o/ivo4S6Sa3p
 8Be4Bsmy8di8x2K/GqJ17fb5D6KRY29IVfxjGrwaDaL8TIxp27i7+axpr+Ql5UOosFaP
 FiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Q1XvMSicHqun/DjhHWSSizG6JWrFQYINK7GNPT/QL0=;
 b=NUd7eKZNl0HkZP4kMCoaOlQthzvvqA75ye4+HZXj9eMdyyVX77d0UENOhea+MZmU+l
 vgSfxxIJXHG9RFPi9pMWrd749QwAfe5G1zdzfDOL1JP43hPQVO6/Umm94N+NfgyS4m4D
 XT2fhb9EGPqpdzb8KQpuUsCRcPWam6dqIEGigHEBYjdCyGIK3hFazI3ioka1/J8cMAD1
 Zh1j6i65MfTNFAtxBP3+MwOYcuT0wUHtYZjED/Tci7Ix4XCxxJvT7K0P54xKMHbAT1SI
 Zt3tISC6uI2NmRvehLeBR8sFID07aAFMrXQf0tn4HkQoTVCyM0/kUH0nDLj9Wr98SeKL
 IKRg==
X-Gm-Message-State: APjAAAXULtNqFFpuqB2hVjDHEbWpvNNHTnI+s8mFAaFGDF4ddHt3JBFO
 hnt7qMduB0QfmmJEUAZSEbM9xwYwVGOux6gma0Cimw==
X-Google-Smtp-Source: APXvYqwNgmmbg9MXeFk5n10MudpjFBaodL+110fQdIqTT0X3wVmLo6cOVDMkYzZbM2OsfnQM5vEA68C0zoTYPBs2HWQ=
X-Received: by 2002:a17:902:8206:: with SMTP id
 x6mr10753647pln.56.1574371497775; 
 Thu, 21 Nov 2019 13:24:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <20191120202102.249121-1-marcgonzalez@google.com>
 <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
In-Reply-To: <1a953395f7b231127fce6ca46fcf78ba6dc9bf4d.camel@suse.de>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 21 Nov 2019 16:24:46 -0500
Message-ID: <CAKvFj6r6VHZb-aaCqu_M5PbT9i5D=QtFT3yoOQ2bqi1J9EtrhQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] staging: vchiq: Fix vchiq_read return value in
 case of error
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>,
 eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 21, 2019 at 2:39 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Marcelo,
>
> On Wed, 2019-11-20 at 15:20 -0500, Marcelo Diop-Gonzalez wrote:
> > This is a proposed fix of an issue regarding the handling of positive
> > return values from copy_to_user() in vchiq_read(). It looks like the
> > struct dump_context passed to the vchiq_dump() function keeps track
> > of the number of bytes written in the context->actual field. When
> > copy_to_user() returns a positive value, this is set to -EFAULT. The
> > problem is that this is never returned to the user, and instead the
> > function continues, adding the number of bytes that should have
> > been copied to context->actual.
> >
> > Running the following program:
> >
> > #include <stdio.h>
> > #include <stdlib.h>
> > #include <fcntl.h>
> > #include <unistd.h>
> > #include <errno.h>
> >
> > int main(int argc, char **argv) {
> >         int fd = open("/dev/vchiq", 0);
> >         if (fd < 0)
> >                 exit(-1);
> >         sbrk(getpagesize());
> >         char *bad_buf = sbrk(0)-100;
> >         int x = read(fd, bad_buf, 2000);
> >         printf("%d %d\n", x, errno);
> >         puts(bad_buf);
> > }
> >
> > gives this output:
> >
> > -1 1
> > State 0: CONNECTED
> >   tx_po
> >
> >
> >   Remote: slots 2-32 tx_pos=578 recycle=1f
> >     Slots claimed:
> >
> > Note the mangled output and incorrect errno value. Messing with the
> > constants in that toy program changes the results. Sometimes read()
> > returns with no error, sometimes it returns with a wrong error code,
> > sometimes with the right one. But it seems that it only ever returns an
> > error at all accidentally, due to the fact that the comparison between
> > context->actual and context->space in vchiq_dump() is unsigned, so that
> > that function won't do anything else if it ever sets context->actual
> > to a negative value.
> >
> > After this patchset, the above program prints this:
> >
> > -1 14
> > State 0: CONNECTED
> >   tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
> >   Version: 8 (min 3)
> >   Stats
> >
> > Help with testing would be appreciated. So far I've basically just
> > diffed the output of 'cat /dev/vchiq', run the program above with
> > a few different values, and run vchiq_test a few times.
> >
> > These were applied to the staging-next branch of the tree
> > at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
> For the whole series:
>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks for reviewing!

-Marcelo
>
> Thanks,
> Nicolas
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
