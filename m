Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A27F31ECEC
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 18:11:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7881868D3;
	Thu, 18 Feb 2021 17:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uR6n_mvUwQUt; Thu, 18 Feb 2021 17:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B28886637;
	Thu, 18 Feb 2021 17:11:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 971891BF47E
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D77E87311
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juTgBXjtDfIV for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 17:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 999478730F
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 17:11:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F28A764EB1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 17:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613668265;
 bh=RV2hABDdoHPmTI0yk3PA6j+sQ8ooG6Zveggz914ksQc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hZu8V3IiKGJNRC2hWCTiDosKbM1VpF97VfyoLIp7sq44xZ3QJ1QfjN7W2bPQQ52hR
 nAe7g8CNo7WC9a4rkRiN7hA1M23fxwwjiIXXB47UPDJTQibkgDpJFxhXskzylnEhdC
 1ypnANg/fUUstF080YePGLpJSjy5eZ5LF9iKIMPydk9NcmpZo73sAKOsgVJ8X8k9wV
 COVTxEksHnF4YGe+lvfhvr1tS0V0g8eFNk7PuzzQ5ySeD0PUJ9xjKUOpiz8ySfu9je
 lX41mgqvHEvgj8cjtAfk2vejA58UqfAVr3qS1PULTGt4PccR+tw31/5N9Hqw64VfVn
 IA7IpGvU73MTA==
Received: by mail-oo1-f47.google.com with SMTP id z36so619105ooi.6
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:11:04 -0800 (PST)
X-Gm-Message-State: AOAM5339/DU9n3GpV3mcvftak+TJGuxgDvHZ4nrUEGiIft/vYWE95E3e
 Pna87Bwo6wEp9cMBikOzDZ9XeF8MODwVSJmfgbU=
X-Google-Smtp-Source: ABdhPJz8VRVCKvefO1jPsDKa4MFdmrN50u9t1R6eTFJ5dhrMXI94Qd70DLHRPSk+UkR1C91U9eJLLX0bkfG34EH8cCw=
X-Received: by 2002:a4a:870c:: with SMTP id z12mr3736151ooh.15.1613668264033; 
 Thu, 18 Feb 2021 09:11:04 -0800 (PST)
MIME-Version: 1.0
References: <20210218091015.92467-1-pritthijit.nath@icloud.com>
 <YC41yC7+TYXaD/R+@kroah.com>
In-Reply-To: <YC41yC7+TYXaD/R+@kroah.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 18 Feb 2021 18:10:48 +0100
X-Gmail-Original-Message-ID: <CAK8P3a09TXVwZYz+ohU1uJh5XvEJ=aHqUq+hs2K-4nvppbTPSA@mail.gmail.com>
Message-ID: <CAK8P3a09TXVwZYz+ohU1uJh5XvEJ=aHqUq+hs2K-4nvppbTPSA@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Fixed address type mismatch in
 vchiq_arm.c
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Pritthijit Nath <pritthijit.nath@icloud.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Amarjargal Gundjalam <amarjargal16@gmail.com>,
 Phil Elwell <phil@raspberrypi.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 10:39 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 18, 2021 at 02:40:15PM +0530, Pritthijit Nath wrote:
> > This change fixes a sparse address type mismatch warning "incorrect type
> > in assignment (different address spaces)".
> >
> > Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> > ---
> >  .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index 59e45dc03a97..3c715b926a57 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -1214,11 +1214,7 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
> >                   !instance->use_close_delivered)
> >                       unlock_service(service);
> >
> > -             /*
> > -              * FIXME: address space mismatch, does bulk_userdata
> > -              * actually point to user or kernel memory?
> > -              */
> > -             user_completion.bulk_userdata = completion->bulk_userdata;
> > +             user_completion.bulk_userdata = (void __user *)completion->bulk_userdata;
>
> So, this pointer really is user memory?
>
> How did you determine that?
>
> If so, why isn't this a __user * in the first place?
>
> You can't just paper over the FIXME by doing a cast without doing the
> real work here, otherwise someone wouldn't have written the FIXME :)

Agreed. I added the FIXME as part of a cleanup work I did last year.
The obvious step is to mark the corresponding field in
vchiq_completion_data_kernel as a __user pointer, and then check
all assignments *to* that members to ensure they all refer to __user
pointers as well.

At some point I gave up here, as far as I recall there were certain
assignments that were clearly kernel data, in particular the
vchiq_service_params_kernel->callback() argument seems to
sometimes come from kmalloc() and must not be passed down
to user space.

The alternative would be to look at the user space side to figure
out how the returned data is actually used. If user space doesn't
rely on it, it can simply get set to NULL, and if it does use it,
then the question is which code path in the kernel correctly
assigns it.

        Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
