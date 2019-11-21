Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8092F105BE2
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 22:25:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C767188942;
	Thu, 21 Nov 2019 21:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6V+8PClU6Hk; Thu, 21 Nov 2019 21:25:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01B768842D;
	Thu, 21 Nov 2019 21:25:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E52AB1BF343
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 21:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DCF5B8810D
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 21:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WT6K8MEf6i4E for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 21:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62EB5880E9
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 21:25:32 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id o9so2166721plk.6
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 13:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kBYoGW6pslzpDWF+e4NaY7GXTypsHdcIulpf1km4Z08=;
 b=D4NaKQFWFIx1FJkfG2zVoB6NEmd758nicUXM4RLquUXKlfCEh5OyD9dHvLpH0Huwh7
 0chf6G9m1hDwDeXAn9vS2s4jyUw7c648YOaaq+GVdRrIVZ0nZyQQflC13lKt58rILz7I
 /R4NNBLvouI6fSS0DVflVUiYgdBbmEk517cRYiq+acNX9e3nLq8Xq3+5XP4zLh8/Kada
 hj1CiaqneKtdlEbKwyXRdCjfiFlSEybat4kvhQKmQTf62KzqRLTsv7BtZzBPktfY8hWg
 BpinsX+F/7sUe97sIGHtwRadnDB65GJPmiSa+ZnYswTTsk1GuYXlVfgvvQMc1LR2pX8y
 FxjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kBYoGW6pslzpDWF+e4NaY7GXTypsHdcIulpf1km4Z08=;
 b=KuK6TNV2wBilnzEEVRWTjvYeloQ4aApP4+U27X/mTwKS884F5gaLK1nJiNgDlOQ6Jg
 Kua7EBpreXQQZOzpBoxQJqrvtP6LeiCkEQdAb1B7ugs6rR/NVP4bHTuVHWaXx5sA4Sn1
 AzTBcbWTlY33rGtlpN2zHniSHobsVtD8m87Xe/C1Br3gCsOkr+IjxZqF7FWJvY97MLwr
 CIvQfNpxhgBcWJxxEHydTOUtd9dTzOpoqgpQ1LNuRZfPxz5rC9SLPgzLAku/fHcnTXS9
 izFUjHWbDzDSymSkZu8gYAyiXd2AkR4QrXhkIu9KOoIGvB3hPmBEhD+wFwlfOLv8vVN9
 94fw==
X-Gm-Message-State: APjAAAU/v/kE2SVrYDwAXGiG71DM3T2AcHYKRDaZasvVB9BccHFOnhvx
 RYYWo5AWRPf006R2MmRdA0ShLCf3PIw4YGu4grOZ7+tXXQs=
X-Google-Smtp-Source: APXvYqy7/OGRq/YShQ3QVFQiadGctIcoLXl6MaICG/3+wS54kuULTu2WiucVQ75Pfzbe/yte8Z+TfrHvR7m4lBc8odY=
X-Received: by 2002:a17:90a:80cc:: with SMTP id
 k12mr14633384pjw.58.1574371531606; 
 Thu, 21 Nov 2019 13:25:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
 <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
 <20191120185047.GE5604@kadam>
In-Reply-To: <20191120185047.GE5604@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 21 Nov 2019 16:25:20 -0500
Message-ID: <CAKvFj6q8wrnmWBqnw8btYwoFzF4dkL2+L2EzBytR+PiVu5sFxQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] staging: vchiq: Have vchiq_dump_* functions return an
 error code
To: Dan Carpenter <dan.carpenter@oracle.com>
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

On Wed, Nov 20, 2019 at 1:51 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Thanks for the patch.  Looks good.
>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Appreciate the review!

-Marcelo
>
> On Wed, Nov 20, 2019 at 10:36:48AM -0500, Marcelo Diop-Gonzalez wrote:
> >       copy_bytes = min_t(int, len, context->space - context->actual);
> >       if (copy_bytes == 0)
> > -             return;
> > +             return 0;
> >       if (copy_to_user(context->buf + context->actual, str,
> >                        copy_bytes))
> > -             context->actual = -EFAULT;
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^
>
> > +             return -EFAULT;
> >       context->actual += copy_bytes;
>         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
> In the original code we saved the error code to context->actual, then
> we added some bytes
>
> >       len -= copy_bytes;
> >
> > @@ -2109,8 +2108,9 @@ vchiq_dump(void *dump_context, const char *str, int len)
> >
> >               if (copy_to_user(context->buf + context->actual - 1,
>                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> and then we tried to use the result to corrupt the user space program.
> So this patch is a nice bug fix.
>
> >                                &cr, 1))
> > -                     context->actual = -EFAULT;
> > +                     return -EFAULT;
> >       }
> > +     return 0;
> >  }
>
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
