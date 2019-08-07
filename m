Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DD685178
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 18:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48CDF22767;
	Wed,  7 Aug 2019 16:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9Sa31xZvdmY; Wed,  7 Aug 2019 16:52:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A1C2227AA;
	Wed,  7 Aug 2019 16:52:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 324621BF4E4
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 16:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F502865DB
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 16:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTNOa2IFYDJp for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 16:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 90D708647E
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 16:52:24 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id l15so49749815oth.7
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 09:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sPi9Lw9hTsJBEYs108zlDeMOmTTjfOUynKa82EaXNhE=;
 b=qRSw15n3xz+gD1D+HMmThXRe7Y5iSvC1GvI+Wqw1he1k0au5YKLd9rjLK9CoS6owXg
 u11Z+nthRS9L0cseyKzXV7jFamSjJJ3gTQIzBeNRm36bhAuhwHCp4QfdArnH4z5smDUZ
 cpc9IV/f6XczRjoR2u9bFXusSho8J0dTWlCAYeqfR+pgVNre1HUFvwepniR+/9qY0tV6
 HitFKbVZ4fVDcyHA5MkCib28XPd9qfIXnRrESqM5HHKOy7F2c3XQxz3uZTUFDnPhHYOc
 nXknftdVF7vA/cRHaOE6nqCRn6grkUldckxzLV2KD0n8+jrP6lS6VxmzjkO4EBjYxg1u
 VJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sPi9Lw9hTsJBEYs108zlDeMOmTTjfOUynKa82EaXNhE=;
 b=ViwdO3571T/SFmn6i2Aed1Zqk538jH2w2U17Dp2UMy9jRKGTowDXC2nqrkl4DuVY8q
 VVPSUZSvvLEvIrh/FjuBVM2DBO3Fyb2oIiuF4fS2xhwYg+L4pl7PNfFMZzTbWwXOPMId
 ReYnjM6uaQr7jeMnkOVmjxdqsIxFt/o4AnLXZTVxbjeG7bkXmGj02cdqyswB+pQt5n/S
 Z2qmHd7Yce5JhnXJKzi29gwkKHaj25VoWMc5R+gAbKiGPb9/6W7K2zWTg/h0BQnqMf1h
 pKx8vU3VtAwKK6U5eG1cTCOaz2LWmXCLoatDBtWzBoKPdluFvrsXoO3N+MBYAEd2sDtU
 Cbdw==
X-Gm-Message-State: APjAAAVp9DnGXlLZRY9IFgvcrFop04/cKdF3Fpd513EiN0SvyZAXDXnh
 46PPt21Yi9CKOVONY0Y3NkaojUKrPBbpqcfn5niIYg==
X-Google-Smtp-Source: APXvYqztRokDDB/HAPtEnq7xZ9nL4QPdYlCFh1c4QQpB6lPX31rwuirChchc4RDvgJOjvaH4EThIIZqmucx9V7c7K3g=
X-Received: by 2002:a05:6830:95:: with SMTP id
 a21mr9248712oto.35.1565196743500; 
 Wed, 07 Aug 2019 09:52:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190806184007.60739-1-hridya@google.com>
 <20190806184007.60739-2-hridya@google.com>
 <20190807110204.GL1974@kadam>
In-Reply-To: <20190807110204.GL1974@kadam>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 7 Aug 2019 09:51:46 -0700
Message-ID: <CA+wgaPNSWbJi3feygHixJX5cLUnQFH0tVSnBrrGQYtE7LUZPzQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] binder: Add default binder devices through
 binderfs when configured
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 7, 2019 at 4:02 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Aug 06, 2019 at 11:40:05AM -0700, Hridya Valsaraju wrote:
> > @@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >       int ret;
> >       struct binderfs_info *info;
> >       struct inode *inode = NULL;
> > +     struct binderfs_device device_info = { 0 };
> > +     const char *name;
> > +     size_t len;
> >
> >       sb->s_blocksize = PAGE_SIZE;
> >       sb->s_blocksize_bits = PAGE_SHIFT;
> > @@ -521,7 +523,24 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
> >       if (!sb->s_root)
> >               return -ENOMEM;
> >
> > -     return binderfs_binder_ctl_create(sb);
> > +     ret = binderfs_binder_ctl_create(sb);
> > +     if (ret)
> > +             return ret;
> > +
> > +     name = binder_devices_param;
> > +     for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > +             strscpy(device_info.name, name, len + 1);
> > +             ret = binderfs_binder_device_create(inode, NULL, &device_info);
> > +             if (ret)
> > +                     return ret;
>
> We should probably clean up before returning...  The error handling code
> would probably be tricky to write though and it's not super common.

Thank you for taking a look Dan. Did you mean cleaning up the default
devices that were already created? They will actually be cleaned up by
binderfs_evict_inode() during the super block's cleanup since the
mount operation will fail due to an error here.

>
> > +             name += len;
> > +             if (*name == ',')
> > +                     name++;
> > +
> > +     }
> > +
> > +     return 0;
> > +
>
> Remove this extra blank line.

Will do in v3, thanks for catching this Dan!

>
> >  }
>
> regards,
> dan carpenter
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
