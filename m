Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 975B3F0101
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 16:15:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1F18221F0;
	Tue,  5 Nov 2019 15:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWJFRoclnqT0; Tue,  5 Nov 2019 15:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24F36204DA;
	Tue,  5 Nov 2019 15:15:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14DDE1BF4E5
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 15:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08B8886C53
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 15:15:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jw04RD3TYM8Q for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 15:15:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7B0289E2E
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 15:15:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7B601AFB1;
 Tue,  5 Nov 2019 15:15:47 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 04675DA796; Tue,  5 Nov 2019 16:15:50 +0100 (CET)
Date: Tue, 5 Nov 2019 16:15:50 +0100
From: David Sterba <dsterba@suse.cz>
To: Dave Chinner <david@fromorbit.com>
Subject: Re: [RFC] errno.h: Provide EFSCORRUPTED for everybody
Message-ID: <20191105151550.GK3001@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Dave Chinner <david@fromorbit.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gao Xiang <xiang@kernel.org>, Chao Yu <chao@kernel.org>,
 Theodore Ts'o <tytso@mit.edu>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Jaegeuk Kim <jaegeuk@kernel.org>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 linux-xfs@vger.kernel.org, Jan Kara <jack@suse.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-erofs@lists.ozlabs.org,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net,
 Linux-Arch <linux-arch@vger.kernel.org>
References: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
 <CAMuHMdXzyVBa4TZEc5eRaBzu50thgJ2TrHJLZqwhbQ=JASgWOA@mail.gmail.com>
 <20191101213823.GW4614@dread.disaster.area>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101213823.GW4614@dread.disaster.area>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
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
Reply-To: dsterba@suse.cz
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, Arnd Bergmann <arnd@arndb.de>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Gao Xiang <xiang@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 linux-erofs@lists.ozlabs.org, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 02, 2019 at 08:38:23AM +1100, Dave Chinner wrote:
> On Fri, Nov 01, 2019 at 09:57:31PM +0100, Geert Uytterhoeven wrote:
> > Hi Valdis,
> > 
> > On Thu, Oct 31, 2019 at 2:11 AM Valdis Kletnieks
> > <valdis.kletnieks@vt.edu> wrote:
> > > Three questions: (a) ACK/NAK on this patch, (b) should it be all in one
> > > patch, or one to add to errno.h and 6 patches for 6 filesystems?), and
> > > (c) if one patch, who gets to shepherd it through?
> > >
> > > There's currently 6 filesystems that have the same #define. Move it
> > > into errno.h so it's defined in just one place.
> > >
> > > Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
> > 
> > Thanks for your patch!
> > 
> > > --- a/include/uapi/asm-generic/errno.h
> > > +++ b/include/uapi/asm-generic/errno.h
> > > @@ -98,6 +98,7 @@
> > >  #define        EINPROGRESS     115     /* Operation now in progress */
> > >  #define        ESTALE          116     /* Stale file handle */
> > >  #define        EUCLEAN         117     /* Structure needs cleaning */
> > > +#define        EFSCORRUPTED    EUCLEAN
> > 
> > I have two questions:
> > a) Why not use EUCLEAN everywhere instead?
> >     Having two different names for the same errno complicates grepping.
> 
> Because:
> 	a) EUCLEAN is horrible for code documentation. EFSCORRUPTED
> 	describes exactly the error being returned and/or checked for.
> 
> 	b) we've used EFSCORRUPTED in XFS since 1993. i.e. it was an
> 	official, published error value on Irix, and we've kept it
> 	in the linux code for the past ~20 years because of a)
> 
> 	c) Userspace programs that include filesystem specific
> 	headers have already been exposed to and use EFSCORRUPTED,
> 	so we can't remove/change it without breaking userspace.
> 
> 	d) EUCLEAN has a convenient userspace string description
> 	that is appropriate for filesystem corruption: "Structure
> 	needs cleaning" is precisely what needs to happen. Repair of
> 	the filesystem (i.e. recovery to a clean state) is what is
> 	required to fix the error....

The description is very confusing to users that are also not filesystem
developers. "Structure needs cleaning" says what needs to be done but
not what happened. Unlike other error codes like "not enough memory",
"IO error" etc. We don't have EBUYMEM / "Buy more memory" instead of
ENOMEM.

Fuzzing tests and crafted images produce most of the EUCLEAN errors and
in this context "structure needs cleaning" makes even less sense.

> > b) Perhaps both errors should use different values?
> 
> That horse bolted to userspace years ago - this is just formalising
> the practice that has spread across multiple linux filesystems from
> XFS over the past ~10 years..

EFSCORRUPTED is a appropriate name but to share the number with EUCLEAN
was a terrible decision and now every filesystem has to suffer and
explain to users what the code really means and point to the the sad
story when asked "So why don't you have a separate code?".

I wonder what userspace package really depends on the value, that would
eg. change code flow. Uncommon error values usually lead to a message
and exit.

Debian code search shows only jython, e2fsprogs, xfsprogs, python2.7,
pypy, linux, partclone using EFSCORRUPTED. So 2 of them are filesystem
packages that can handle that, python/jython only defines the value for
IRIX platform. The rest is linux kernel, not relevant.

So please give me one example where userspace will break.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
