Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A72C22C1
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 16:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4ADD8820F;
	Mon, 30 Sep 2019 14:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RL0sCs1NIqWq; Mon, 30 Sep 2019 14:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBE4F8818B;
	Mon, 30 Sep 2019 14:08:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 419F91BF4E3
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 259BA2079A
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 14:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmFX8+Z8V9fO for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 14:08:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 88A71204FD
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 14:08:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2220216F4;
 Mon, 30 Sep 2019 14:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569852517;
 bh=kJDFBY2wP/d0mmh5tm8pzMVU9gXTMQMN67O+To4duB0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WFs2pEicOoD0eFbTMEmox3Zj14a+LOh1AES0AAwN8AK3RjFftj8O5SVgRQe4T6FuB
 myb9GKVnlj7vJH9XgCKRlmpt/h3TbOR1ZjLW4s7pGSHVDyjy6ojrXQqcdNq66ZYdcc
 d7NU//lUG06xyR7eJ4Xs+2AZeIvF7ZeSgAdF0B7U=
Date: Mon, 30 Sep 2019 08:08:15 +0200
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Namjae Jeon <namjae.jeon@samsung.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190930060815.GA2029292@kroah.com>
References: <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV>
 <20190918082658.GA1861850@kroah.com>
 <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
 <20190918092405.GC2959@kadam>
 <042701d57747$0e200320$2a600960$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <042701d57747$0e200320$2a600960$@samsung.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>,
 'Sergey Senozhatsky' <sergey.senozhatsky.work@gmail.com>,
 'Ju Hyung Park' <qkrwngud825@gmail.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com,
 'Dan Carpenter' <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 30, 2019 at 01:25:13PM +0900, Namjae Jeon wrote:
> 
> > [..]
> > > Put it in drivers/staging/sdfat/.
> > >
> > > But really we want someone from Samsung to say that they will treat
> > > the staging version as upstream.  It doesn't work when people apply
> > > fixes to their version and a year later back port the fixes into
> > > staging.  The staging tree is going to have tons and tons of white space
> > > fixes so backports are a pain.  All development needs to be upstream
> > > first where the staging driver is upstream.  Otherwise we should just
> > > wait for Samsung to get it read to be merged in fs/ and not through the
> > > staging tree.
> > Quite frankly,
> > This whole thing came as a huge-huge surprise to us, we did not initiate
> > upstreaming of exfat/sdfat code and, as of this moment, I'm not exactly
> > sure that we are prepared for any immediate radical changes to our internal
> > development process which people all of a sudden want from us. I need to
> > discuss with related people on internal thread.
> > please wait a while:)
> We decide to contribute sdfat directly and treat upstream exfat.
> Perhaps more time is needed for patch preparation(exfat rename + vfat removal
> + clean-up) and internal processes. After contributing sdfat v2.2.0 as the base,
> We will also provide change-set of sdfat v2.3.0 later.

That's wonderful to hear!  If you need help getting patches into
mergable shape, just let us know.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
