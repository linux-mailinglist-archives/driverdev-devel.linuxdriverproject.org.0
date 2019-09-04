Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F20A809A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 12:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B851886BA4;
	Wed,  4 Sep 2019 10:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lre7CKwV1jZu; Wed,  4 Sep 2019 10:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B02F286E9E;
	Wed,  4 Sep 2019 10:49:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 830091BF47F
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 10:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7FF82232F2
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 10:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8qhPHYhaYc7 for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 10:49:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 562FD230ED
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 10:49:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABC1722CED;
 Wed,  4 Sep 2019 10:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567594182;
 bh=h+s6rycvfFv+wyqebtBSZ8t6YMUsIyt3gS91EibrwU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lh29m8Rhm4/S3/XcyZKiIUv0BHjv0mwQ5/dx3HjRi9E8jmlAUc8OMNtAaDKPnemH8
 9tXLJaD4IUl+tBnULHKh6AKAF9RBeej62vy+DC1P7nN0rLiglMjAp1HR0LkUPMQlRp
 oGpFSEB86q9xi5FDe4lbfajVNfAwPcOUMnG2/3Us=
Date: Wed, 4 Sep 2019 12:49:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH v3 2/2] binder: Validate the default binderfs device names.
Message-ID: <20190904104939.GA20711@kroah.com>
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-3-hridya@google.com>
 <20190809145508.GD16262@kroah.com>
 <20190809181439.qrs2k7l23ot4am4s@wittgenstein>
 <CA+wgaPPK0fY2a+pCEFHrw8p8WCb459yw41s_6xppWFfEa=P7Og@mail.gmail.com>
 <20190904071929.GA19830@kroah.com>
 <20190904104431.ehzyllugr6fr2vjz@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904104431.ehzyllugr6fr2vjz@wittgenstein>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 kernel-team@android.com, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 12:44:32PM +0200, Christian Brauner wrote:
> On Wed, Sep 04, 2019 at 09:19:29AM +0200, Greg Kroah-Hartman wrote:
> > On Fri, Aug 09, 2019 at 11:41:12AM -0700, Hridya Valsaraju wrote:
> > > On Fri, Aug 9, 2019 at 11:14 AM Christian Brauner
> > > <christian.brauner@ubuntu.com> wrote:
> > > >
> > > > On Fri, Aug 09, 2019 at 04:55:08PM +0200, Greg Kroah-Hartman wrote:
> > > > > On Thu, Aug 08, 2019 at 03:27:26PM -0700, Hridya Valsaraju wrote:
> > > > > > Length of a binderfs device name cannot exceed BINDERFS_MAX_NAME.
> > > > > > This patch adds a check in binderfs_init() to ensure the same
> > > > > > for the default binder devices that will be created in every
> > > > > > binderfs instance.
> > > > > >
> > > > > > Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > > > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > > > > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > > > > > ---
> > > > > >  drivers/android/binderfs.c | 12 ++++++++++++
> > > > > >  1 file changed, 12 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > > > > > index aee46dd1be91..55c5adb87585 100644
> > > > > > --- a/drivers/android/binderfs.c
> > > > > > +++ b/drivers/android/binderfs.c
> > > > > > @@ -570,6 +570,18 @@ static struct file_system_type binder_fs_type = {
> > > > > >  int __init init_binderfs(void)
> > > > > >  {
> > > > > >     int ret;
> > > > > > +   const char *name;
> > > > > > +   size_t len;
> > > > > > +
> > > > > > +   /* Verify that the default binderfs device names are valid. */
> > > > >
> > > > > And by "valid" you only mean "not bigger than BINDERFS_MAX_NAME, right?
> > > > >
> > > > > > +   name = binder_devices_param;
> > > > > > +   for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > > > > > +           if (len > BINDERFS_MAX_NAME)
> > > > > > +                   return -E2BIG;
> > > > > > +           name += len;
> > > > > > +           if (*name == ',')
> > > > > > +                   name++;
> > > > > > +   }
> > > > >
> > > > > We already tokenize the binderfs device names in binder_init(), why not
> > > > > check this there instead?  Parsing the same string over and over isn't
> > > > > the nicest.
> > > >
> > > > non-binderfs binder devices do not have their limit set to
> > > > BINDERFS_NAME_MAX. That's why the check has likely been made specific to
> > > > binderfs binder devices which do have that limit.
> > > 
> > > 
> > > Thank you Greg and Christian, for taking another look. Yes,
> > > non-binderfs binder devices not having this limitation is the reason
> > > why the check was made specific to binderfs devices. Also, when
> > > CONFIG_ANDROID_BINDERFS is set, patch 1/2 disabled the same string
> > > being parsed in binder_init().
> > > 
> > > >
> > > > But, in practice, 255 is the standard path-part limit that no-one really
> > > > exceeds especially not for stuff such as device nodes which usually have
> > > > rather standard naming schemes (e.g. binder, vndbinder, hwbinder, etc.).
> > > > So yes, we can move that check before both the binderfs binder device
> > > > and non-binderfs binder device parsing code and treat it as a generic
> > > > check.
> > > > Then we can also backport that check as you requested in the other mail.
> > > > Unless Hridya or Todd have objections, of course.
> > > 
> > > I do not have any objections to adding a generic check in binder_init() instead.
> > 
> > Was this patchset going to be redone based on this?
> 
> No, we decided to leave this check specific to binderfs for now because
> the length limit only applies to binderfs devices. If you really want to
> have this check in binder we can send a follow-up. I would prefer to
> take the series as is.
> 
> Btw, for the two binderfs series from Hridya, do you want me to get a
> branch ready and send you a PR for both of them together?

Patches in email is fine, but can someone resend this one as I no longer
have this series in my queue anymore?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
