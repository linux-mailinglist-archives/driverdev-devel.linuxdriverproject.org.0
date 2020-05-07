Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D59A1C86C1
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 May 2020 12:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC24689372;
	Thu,  7 May 2020 10:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRT6km7n0aDY; Thu,  7 May 2020 10:32:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24D118935B;
	Thu,  7 May 2020 10:32:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35EF11BF38A
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 10:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E48B89197
 for <devel@linuxdriverproject.org>; Thu,  7 May 2020 10:32:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5hGScUI7tYw for <devel@linuxdriverproject.org>;
 Thu,  7 May 2020 10:32:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DB2C18899E
 for <devel@driverdev.osuosl.org>; Thu,  7 May 2020 10:32:25 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id b2so5738812ljp.4
 for <devel@driverdev.osuosl.org>; Thu, 07 May 2020 03:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lxR8iUX+nq/8LE2/542OxQ8ktlSJ6cXRsEzWoH8lfzA=;
 b=abEqiduRP5XA93Rx8i0WKwGEH53+CCt70vEpJwG+coIZSFwLyoUVgyzxNQnhjSMrhr
 6zKwL9MZfH+5sx9PZfTjosjryBVs8a7aq6aXudAxh15XVqz6iPDDQSVO08IHWKbBZFhH
 CYQgB0X/jVcaIR/7aGSsp0v7BTgC1XfXRGaRSP+5nSf409yP6qAEQupO9gEmqRFwLcEe
 H0pnccwikFJtaFyj3dxp7wVF9McYQ8TKb9l/rbtyEudKRCSQDWTnnKv9kipYQ+rsuQFD
 CS+QGZ/zIXq6iK4F2JEY1s6tyYuYIM07mjId6iMVZCrPXuWYp4/siWmeNVpn7W+WWJCx
 t9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lxR8iUX+nq/8LE2/542OxQ8ktlSJ6cXRsEzWoH8lfzA=;
 b=TcXzjoD/pgcKdxbciwuDvWInI3AngpvB6CEho7vkMNmcbSKhxkg4q2JW8zcxBcHUVY
 jJswwmPbpsFZcwOVoXHYlBxUt2mTsbq1aWXDnYu9lS0Nxe5eSmHxziUL+UMHnUmIWb8j
 3VbEndgq46jyUVUU8Htr48Qe/RwLMoaSIZ0ZkJVpUUoSaKknKrwcCxdmQMVIZPVmRHB+
 6dDMpd1h+1low0/x/ECd1m9AWs9y2qP4XxkmLyAEFWIDD4Ypa7CFKcxhn7QP2djvyYEO
 xZjVwRFVXUn1YgkX39zVAQ44BDVEGgcF2pZzgW9vRykBF9AnygbkDFTh6ih1yA+p/zi4
 Q03w==
X-Gm-Message-State: AGi0Pub9vNUTcZ5GPtwXlPRC8ub6uz0iZa0BNd2KvGLjMUH3XoHUHJXh
 3aSAOw7F/wK6d5JwqrOCXm9mmMInYrsfksK0Qho=
X-Google-Smtp-Source: APiQypLqntGlzwMTPnOwy1h5uEIH4hExzJxYqIPLwFHTltoybWYvpOoMaGdS9r61zRjkIUO9oVrCQTWqJErRd8MJv5U=
X-Received: by 2002:a2e:7613:: with SMTP id r19mr7726906ljc.29.1588847542720; 
 Thu, 07 May 2020 03:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <1588706059-4208-1-git-send-email-jrdr.linux@gmail.com>
 <0bfe4a8a-0d91-ef9b-066f-2ea7c68571b3@nvidia.com>
 <CAFqt6zZMsQkOdjAb2k1EjwX=DtZ8gKfbRzwvreHOX-0vJLngNg@mail.gmail.com>
 <20200506100649.GI17863@quack2.suse.cz>
 <CAFqt6zYaNkJ4AfVzutXS=JsN4fE41ZAvnw03vHWpdyiRHY1m_w@mail.gmail.com>
 <20200506125930.GJ17863@quack2.suse.cz>
 <CAFqt6zZztn_AiaGAhV+_uwrnVdKY-xLsxOwYBt-zGmLaat+OhQ@mail.gmail.com>
 <20200507101322.GB30922@quack2.suse.cz>
In-Reply-To: <20200507101322.GB30922@quack2.suse.cz>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Thu, 7 May 2020 16:02:10 +0530
Message-ID: <CAFqt6zZ2pj_6q=5kf9dxOsSkHc7vJEHgCjuRmSELQF9KnoKCxA@mail.gmail.com>
Subject: Re: [RFC] mm/gup.c: Updated return value of
 {get|pin}_user_pages_fast()
To: Jan Kara <jack@suse.cz>
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
Cc: Linux-MM <linux-mm@kvack.org>, inux-ia64@vger.kernel.org,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, kuba@kernel.org,
 fenghua.yu@intel.com, John Hubbard <jhubbard@nvidia.com>,
 santosh.shilimkar@oracle.com,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
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

On Thu, May 7, 2020 at 3:43 PM Jan Kara <jack@suse.cz> wrote:
>
> On Wed 06-05-20 21:38:40, Souptick Joarder wrote:
> > On Wed, May 6, 2020 at 6:29 PM Jan Kara <jack@suse.cz> wrote:
> > >
> > > On Wed 06-05-20 17:51:39, Souptick Joarder wrote:
> > > > On Wed, May 6, 2020 at 3:36 PM Jan Kara <jack@suse.cz> wrote:
> > > > >
> > > > > On Wed 06-05-20 02:06:56, Souptick Joarder wrote:
> > > > > > On Wed, May 6, 2020 at 1:08 AM John Hubbard <jhubbard@nvidia.com> wrote:
> > > > > > >
> > > > > > > On 2020-05-05 12:14, Souptick Joarder wrote:
> > > > > > > > Currently {get|pin}_user_pages_fast() have 3 return value 0, -errno
> > > > > > > > and no of pinned pages. The only case where these two functions will
> > > > > > > > return 0, is for nr_pages <= 0, which doesn't find a valid use case.
> > > > > > > > But if at all any, then a -ERRNO will be returned instead of 0, which
> > > > > > > > means {get|pin}_user_pages_fast() will have 2 return values -errno &
> > > > > > > > no of pinned pages.
> > > > > > > >
> > > > > > > > Update all the callers which deals with return value 0 accordingly.
> > > > > > >
> > > > > > > Hmmm, seems a little shaky. In order to do this safely, I'd recommend
> > > > > > > first changing gup_fast/pup_fast so so that they return -EINVAL if
> > > > > > > the caller specified nr_pages==0, and of course auditing all callers,
> > > > > > > to ensure that this won't cause problems.
> > > > > >
> > > > > > While auditing it was figured out, there are 5 callers which cares for
> > > > > > return value
> > > > > > 0 of gup_fast/pup_fast. What problem it might cause if we change
> > > > > > gup_fast/pup_fast
> > > > > > to return -EINVAL and update all the callers in a single commit ?
> > > > >
> > > > > Well, first I'd ask a different question: Why do you want to change the
> > > > > current behavior? It's not like the current behavior is confusing.  Callers
> > > > > that pass >0 pages can happily rely on the simple behavior of < 0 return on
> > > > > error or > 0 return if we mapped some pages. Callers that can possibly ask
> > > > > to map 0 pages can get 0 pages back - kind of expected - and I don't see
> > > > > any benefit in trying to rewrite these callers to handle -EINVAL instead...
> > > >
> > > > Callers with a request to map 0 pages doesn't have a valid use case. But if any
> > > > caller end up doing it mistakenly, -errno should be returned to caller
> > > > rather than 0
> > > > which will indicate more precisely that map 0 pages is not a valid
> > > > request from caller.
> > >
> > > Well, I believe this depends on the point of view. Similarly as reading 0
> > > bytes is successful, we could consider mapping 0 pages successful as well.
> > > And there can be valid cases where number of pages to map is computed from
> > > some input and when 0 pages should be mapped, it is not a problem and your
> > > change would force such callers to special case this with explicitely
> > > checking for 0 pages to map and not calling GUP in that case at all.
> > >
> > > I'm not saying what you propose is necessarily bad, I just say I don't find
> > > it any better than the current behavior and so IMO it's not worth the
> > > churn. Now if you can come up with some examples of current in-kernel users
> > > who indeed do get the handling of the return value wrong, I could be
> > > convinced otherwise.
> >
> > There are 5 callers of {get|pin}_user_pages_fast().
>
> Oh, there are *much* more callers that 5. It's more like 70. Just grep the
> source... And then you have all other {get|pin}_user_pages() variants that
> need to be kept consistent. So overall we have over 200 calls to some
> variant of GUP.

Sorry, I mean, there are 5 callers of {get|pin}_user_pages_fast() who
have interest in
return value 0, out of total 42.

>
> > arch/ia64/kernel/err_inject.c#L145
> > staging/gasket/gasket_page_table.c#L489
> >
> > Checking return value 0 doesn't make sense for above 2.
> >
> > drivers/platform/goldfish/goldfish_pipe.c#L277
> > net/rds/rdma.c#L165
> > drivers/tee/tee_shm.c#L262
> >
> > These 3 callers have calculated the no of pages value before passing it to
> > {get|pin}_user_pages_fast(). But if they end up passing nr_pages <= 0, a return
> > value of either 0 or -EINVAL doesn't going to harm any existing
> > behavior of callers.
> >
> > IMO, it is safe to return -errno for nr_pages <= 0, for
> > {get|pin}_user_pages_fast().
>
> OK, so no real problem with any of these callers. I still don't see a
> justification for the churn you suggest... Auditting all those code sites
> is going to be pretty tedious.

I try to audit all 42 callers of {get|pin}_user_pages_fast() and
figure out these 5 callers
which need to be updated and I think, other callers of
{get|pin}_user_pages_fast() will not be
effected.

But I didn't go through other variants of gup/pup except
{get|pin}_user_pages_fast().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
