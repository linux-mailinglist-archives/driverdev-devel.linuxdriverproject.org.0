Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 368101C6DFB
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 12:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5CB087798;
	Wed,  6 May 2020 10:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91LZVDySGBE2; Wed,  6 May 2020 10:06:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 947AF8787C;
	Wed,  6 May 2020 10:06:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 103281BF471
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 10:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D146869D9
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 10:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvgLDYb30VUm for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 10:06:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 22A358672E
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 10:06:53 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E1564AF85;
 Wed,  6 May 2020 10:06:53 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
 id 6FC051E12B1; Wed,  6 May 2020 12:06:49 +0200 (CEST)
Date: Wed, 6 May 2020 12:06:49 +0200
From: Jan Kara <jack@suse.cz>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
Message-ID: <20200506100649.GI17863@quack2.suse.cz>
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
 <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Jan Kara <jack@suse.cz>, Linux-MM <linux-mm@kvack.org>,
 inux-ia64@vger.kernel.org,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, kuba@kernel.org,
 fenghua.yu@intel.com, John Hubbard <jhubbard@nvidia.com>,
 santosh.shilimkar@oracle.com,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>,
 Tony Luck <tony.luck@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 tee-dev@lists.linaro.org, Greg KH <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed 06-05-20 02:06:56, Souptick Joarder wrote:
> On Wed, May 6, 2020 at 1:08 AM John Hubbard <jhubbard@nvidia.com> wrote:
> >
> > On 2020-05-05 12:14, Souptick Joarder wrote:
> > > Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
> > > and no of pinned pages. The only case where these two functions will
> > > return 0, is for nr_pages <= 0, which doesn't find a valid use case.
> > > But if at all any, then a -ERRNO will be returned instead of 0, which
> > > means {get|pin}_user_pages_fast() will have 2 return values -errno &
> > > no of pinned pages.
> > >
> > > Update all the callers which deals with return value 0 accordingly.
> >
> > Hmmm, seems a little shaky. In order to do this safely, I'd recommend
> > first changing gup_fast/pup_fast so so that they return -EINVAL if
> > the caller specified nr_pages==0, and of course auditing all callers,
> > to ensure that this won't cause problems.
> 
> While auditing it was figured out, there are 5 callers which cares for
> return value
> 0 of gup_fast/pup_fast. What problem it might cause if we change
> gup_fast/pup_fast
> to return -EINVAL and update all the callers in a single commit ?

Well, first I'd ask a different question: Why do you want to change the
current behavior? It's not like the current behavior is confusing.  Callers
that pass >0 pages can happily rely on the simple behavior of < 0 return on
error or > 0 return if we mapped some pages. Callers that can possibly ask
to map 0 pages can get 0 pages back - kind of expected - and I don't see
any benefit in trying to rewrite these callers to handle -EINVAL instead...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
