Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE9988259
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 20:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30FC08843F;
	Fri,  9 Aug 2019 18:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4p9-gjDRxCn; Fri,  9 Aug 2019 18:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 867D787A33;
	Fri,  9 Aug 2019 18:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AA9D1BF2B0
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86A3D867F6
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 18:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tt5svuroITZ8 for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 18:24:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0335986582
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 18:24:07 +0000 (UTC)
Received: from 96-95-199-68-static.hfc.comcastbusiness.net ([96.95.199.68]
 helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1hw9PZ-0003Wb-Cz; Fri, 09 Aug 2019 18:14:45 +0000
Date: Fri, 9 Aug 2019 20:14:41 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/2] binder: Validate the default binderfs device names.
Message-ID: <20190809181439.qrs2k7l23ot4am4s@wittgenstein>
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-3-hridya@google.com>
 <20190809145508.GD16262@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809145508.GD16262@kroah.com>
User-Agent: NeoMutt/20180716
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
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 09, 2019 at 04:55:08PM +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 08, 2019 at 03:27:26PM -0700, Hridya Valsaraju wrote:
> > Length of a binderfs device name cannot exceed BINDERFS_MAX_NAME.
> > This patch adds a check in binderfs_init() to ensure the same
> > for the default binder devices that will be created in every
> > binderfs instance.
> > 
> > Co-developed-by: Christian Brauner <christian.brauner@ubuntu.com>
> > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > Signed-off-by: Hridya Valsaraju <hridya@google.com>
> > ---
> >  drivers/android/binderfs.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/android/binderfs.c b/drivers/android/binderfs.c
> > index aee46dd1be91..55c5adb87585 100644
> > --- a/drivers/android/binderfs.c
> > +++ b/drivers/android/binderfs.c
> > @@ -570,6 +570,18 @@ static struct file_system_type binder_fs_type = {
> >  int __init init_binderfs(void)
> >  {
> >  	int ret;
> > +	const char *name;
> > +	size_t len;
> > +
> > +	/* Verify that the default binderfs device names are valid. */
> 
> And by "valid" you only mean "not bigger than BINDERFS_MAX_NAME, right?
> 
> > +	name = binder_devices_param;
> > +	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> > +		if (len > BINDERFS_MAX_NAME)
> > +			return -E2BIG;
> > +		name += len;
> > +		if (*name == ',')
> > +			name++;
> > +	}
> 
> We already tokenize the binderfs device names in binder_init(), why not
> check this there instead?  Parsing the same string over and over isn't
> the nicest.

non-binderfs binder devices do not have their limit set to
BINDERFS_NAME_MAX. That's why the check has likely been made specific to
binderfs binder devices which do have that limit.

But, in practice, 255 is the standard path-part limit that no-one really
exceeds especially not for stuff such as device nodes which usually have
rather standard naming schemes (e.g. binder, vndbinder, hwbinder, etc.).
So yes, we can move that check before both the binderfs binder device
and non-binderfs binder device parsing code and treat it as a generic
check.
Then we can also backport that check as you requested in the other mail.
Unless Hridya or Todd have objections, of course.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
