Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7A317684B
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 00:37:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 616B4204F2;
	Mon,  2 Mar 2020 23:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1nqX+6SFdqO5; Mon,  2 Mar 2020 23:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA9EB204DF;
	Mon,  2 Mar 2020 23:37:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE8B1BF25B
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 23:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75FE086A98
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 23:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t+EobuvA6mxu for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 23:37:33 +0000 (UTC)
X-Greylist: delayed 02:20:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0246.hostedemail.com
 [216.40.44.246])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 45682865B8
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 23:37:33 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 416811801E59A
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:51:48 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id B5653A2D9;
 Mon,  2 Mar 2020 18:51:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:1801:2198:2199:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4470:4605:5007:6119:7903:9025:9388:10004:10049:10400:10848:11026:11232:11473:11658:11914:12043:12295:12296:12297:12438:12555:12740:12760:12776:12895:13439:14096:14097:14106:14107:14181:14659:14721:14849:21080:21220:21433:21611:21627:21740:21939:21990:30012:30051:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: jewel38_f20ac4926518
X-Filterd-Recvd-Size: 4745
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Mon,  2 Mar 2020 18:51:43 +0000 (UTC)
Message-ID: <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
From: Joe Perches <joe@perches.com>
To: Alexander Potapenko <glider@google.com>
Date: Mon, 02 Mar 2020 10:50:11 -0800
In-Reply-To: <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?ISO-8859-1?Q?Hj=F8nnev=E5g?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-02 at 19:17 +0100, Alexander Potapenko wrote:
> On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
> > On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > > Certain copy_from_user() invocations in binder.c are known to
> > > > > unconditionally initialize locals before their first use, like e.g. in
> > > > > the following case:
> > > > []
> > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > []
> > > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > > > 
> > > > >               case BC_TRANSACTION_SG:
> > > > >               case BC_REPLY_SG: {
> > > > > -                     struct binder_transaction_data_sg tr;
> > > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > > > 
> > > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > > 
> > > > I fail to see any value in marking tr with __no_initialize
> > > > when it's immediately written to by copy_from_user.
> > > 
> > > This is being done exactly because it's immediately written to by copy_to_user()
> > > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > > the following code:
> > > 
> > >   struct binder_transaction_data_sg tr;
> > >   memset(&tr, 0xAA, sizeof(tr));
> > >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> > > 
> > > This unnecessarily slows the code down, so we add __no_initialize to
> > > prevent the compiler from emitting the redundant initialization.
> > 
> > So?  CONFIG_INIT_STACK_ALL by design slows down code.
> Correct.
> 
> > This marking would likely need to be done for nearly all
> > 3000+ copy_from_user entries.
> Unfortunately, yes. I was just hoping to do so for a handful of hot
> cases that we encounter, but in the long-term a compiler solution must
> supersede them.
> 
> > Why not try to get something done on the compiler side
> > to mark the function itself rather than the uses?
> This is being worked on in the meantime as well (see
> http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
> Do you have any particular requisitions about how this should look on
> the source level?

I presume something like the below when appropriate for
automatic variables when not already initialized or modified.
---
 include/linux/uaccess.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 8a215c..3e034b5 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -138,7 +138,8 @@ _copy_to_user(void __user *, const void *, unsigned long);
 #endif
 
 static __always_inline unsigned long __must_check
-copy_from_user(void *to, const void __user *from, unsigned long n)
+copy_from_user(void __no_initialize *to, const void __user *from,
+	       unsigned long n)
 {
 	if (likely(check_copy_size(to, n, false)))
 		n = _copy_from_user(to, from, n);


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
