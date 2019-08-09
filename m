Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE48D882C8
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 20:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B0D887799;
	Fri,  9 Aug 2019 18:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yiTA0nn2dHTo; Fri,  9 Aug 2019 18:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A920877EA;
	Fri,  9 Aug 2019 18:41:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA451BF2B0
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 99582868DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Zo_dNlbvBPe for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 18:41:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8B48868A6
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 18:41:49 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id n5so136396533otk.1
 for <devel@driverdev.osuosl.org>; Fri, 09 Aug 2019 11:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=65V1JuI2VA80cQiA+hQRPmXIFv0sktRgZklgyYT7uA0=;
 b=DWPweNNhV4+ruQv9Ddd4zqB9w0vtKDVgapB/ZVHrS05Sn8qP4BmMIriNe0wx9XQBGH
 hOF76QgLBKdnwg6w3+Dkuq+ngwyXRP42e/T1eL02kQNGDu00IXab7lmWTo0QiBysr9E/
 TeZlVF/M1hklUCmW09cFplmzLG5DScXSOgnbkJACjKVnylHr2s87Eta7YTGr9m2xvVN8
 qRoINJQcSrSlsguzfhx7xCQRiujtA2/A+kve2xletz9rb8leO26rubFGhWdtoxPAfIJS
 QrRzC4jGVAGQLe/Khw7yFoWPIhCpLPo4hC5Ujj2mu3KCwC/8PxZjQ2eu95XsZzEB7vE8
 Y8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=65V1JuI2VA80cQiA+hQRPmXIFv0sktRgZklgyYT7uA0=;
 b=pEiNu71aHQ19hGLKd/CXdiggRw6wXaxHslyngC/zrMJgCKOWnYc1pxXSy5munhUf7t
 H+ErfMu5K+n+ra0wS93LNlsOmtYNEobG47Q1TuXo4hoPiA8K9H3VQCW4PiUfuD7qCx0L
 W2WejaI+MKvwzZFBrcmP6RQesZP9HEoFGjYrWc9A18UMS28oY9314xN+A5ql8m5xRvmA
 /Z4rZYHwNsHkUH80DC/QAmUUMAhea2XbrbddDqVUOA6ggrFSQfTcx5Wk/Nrcs1SuJQ3t
 eAo9PTCzRnuR0vjMbikXsebZbvqUtBhs9HTq7d74ZW/OdGLqU4D6h6UBcrEImnDu7j/P
 c92A==
X-Gm-Message-State: APjAAAUSeBEA6zIuhSnmy9G2frWHLNIX3jDoGwfjIXh3KSREaEKvYmZI
 xSuIpYvL/XUDgq77RxXvuAkLpZc8Up6svRC+N9mWpA==
X-Google-Smtp-Source: APXvYqxofUvcQ8atqUEUAeawzR1iYVttn85OBd+PtUiLhtQNlBMyJ9X3QlcGqVql+JVlFOO7UV4cffGfKEsIucd9ydw=
X-Received: by 2002:a9d:73d0:: with SMTP id m16mr20182380otk.190.1565376108768; 
 Fri, 09 Aug 2019 11:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-3-hridya@google.com>
 <20190809145508.GD16262@kroah.com>
 <20190809181439.qrs2k7l23ot4am4s@wittgenstein>
In-Reply-To: <20190809181439.qrs2k7l23ot4am4s@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 9 Aug 2019 11:41:12 -0700
Message-ID: <CA+wgaPPK0fY2a+pCEFHrw8p8WCb459yw41s_6xppWFfEa=P7Og@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] binder: Validate the default binderfs device names.
To: Christian Brauner <christian.brauner@ubuntu.com>
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
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 9, 2019 at 11:14 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Fri, Aug 09, 2019 at 04:55:08PM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Aug 08, 2019 at 03:27:26PM -0700, Hridya Valsaraju wrote:
> > > Length of a binderfs device name cannot exceed BINDERFS_MAX_NAME.
> > > This patch adds a check in binderfs_init() to ensure the same
> > > for the default binder devices that will be created in every
> > > binderfs instance.
> > >
> > > Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > > ---
> > >  drivers/android/binderfs.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > > index aee46dd1be91..55c5adb87585 100644
> > > --- a/drivers/android/binderfs.c
> > > +++ b/drivers/android/binderfs.c
> > > @@ -570,6 +570,18 @@ static struct file_system_type binder_fs_type = {
> > >  int __init init_binderfs(void)
> > >  {
> > >     int ret;
> > > +   const char *name;
> > > +   size_t len;
> > > +
> > > +   /* Verify that the default binderfs device names are valid. */
> >
> > And by "valid" you only mean "not bigger than BINDERFS_MAX_NAME, right?
> >
> > > +   name = binder_devices_param;
> > > +   for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > > +           if (len > BINDERFS_MAX_NAME)
> > > +                   return -E2BIG;
> > > +           name += len;
> > > +           if (*name == ',')
> > > +                   name++;
> > > +   }
> >
> > We already tokenize the binderfs device names in binder_init(), why not
> > check this there instead?  Parsing the same string over and over isn't
> > the nicest.
>
> non-binderfs binder devices do not have their limit set to
> BINDERFS_NAME_MAX. That's why the check has likely been made specific to
> binderfs binder devices which do have that limit.


Thank you Greg and Christian, for taking another look. Yes,
non-binderfs binder devices not having this limitation is the reason
why the check was made specific to binderfs devices. Also, when
CONFIG_ANDROID_BINDERFS is set, patch 1/2 disabled the same string
being parsed in binder_init().

>
> But, in practice, 255 is the standard path-part limit that no-one really
> exceeds especially not for stuff such as device nodes which usually have
> rather standard naming schemes (e.g. binder, vndbinder, hwbinder, etc.).
> So yes, we can move that check before both the binderfs binder device
> and non-binderfs binder device parsing code and treat it as a generic
> check.
> Then we can also backport that check as you requested in the other mail.
> Unless Hridya or Todd have objections, of course.

I do not have any objections to adding a generic check in binder_init() instead.

>
> Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
