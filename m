Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7342D1777EB
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 14:58:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 180BD864A4;
	Tue,  3 Mar 2020 13:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YgBAB0uMthln; Tue,  3 Mar 2020 13:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6EE2B86462;
	Tue,  3 Mar 2020 13:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68D981BF3D0
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 13:58:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6385284922
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 13:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzZK2Oo39ZNq for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 13:58:31 +0000 (UTC)
X-Greylist: delayed 17:50:59 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0051.hostedemail.com
 [216.40.44.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D9CF84491
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 13:58:31 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 2BB9E180036E6
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 13:58:29 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 866DE18225DF6;
 Tue,  3 Mar 2020 13:58:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1605:1711:1730:1747:1777:1792:1801:2194:2198:2199:2200:2393:2525:2553:2560:2563:2682:2685:2692:2693:2828:2859:2918:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4117:4321:4470:4605:5007:6119:6691:7875:7903:7904:9025:9388:10004:10049:10848:11026:11232:11233:11473:11658:11914:12043:12295:12296:12297:12438:12555:12740:12760:12776:12895:13160:13161:13229:13439:14096:14097:14106:14107:14181:14659:14721:14849:21080:21220:21433:21611:21627:21740:21939:21990:30012:30051:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: yard67_83a1f2d77a221
X-Filterd-Recvd-Size: 6456
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf07.hostedemail.com (Postfix) with ESMTPA;
 Tue,  3 Mar 2020 13:58:24 +0000 (UTC)
Message-ID: <58c1f1bf6b30bd5c39184cd9c09f25a9b9d67a68.camel@perches.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Alexander Potapenko
 <glider@google.com>
Date: Tue, 03 Mar 2020 05:56:51 -0800
In-Reply-To: <20200303093832.GD24372@kadam>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
 <20200303093832.GD24372@kadam>
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

On Tue, 2020-03-03 at 12:38 +0300, Dan Carpenter wrote:
> On Tue, Mar 03, 2020 at 10:14:18AM +0100, Alexander Potapenko wrote:
> > On Mon, Mar 2, 2020 at 7:51 PM Joe Perches <joe@perches.com> wrote:
> > > On Mon, 2020-03-02 at 19:17 +0100, Alexander Potapenko wrote:
> > > > On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
> > > > > On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > > > > > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > > > > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > > > > > Certain copy_from_user() invocations in binder.c are known to
> > > > > > > > unconditionally initialize locals before their first use, like e.g. in
> > > > > > > > the following case:
> > > > > > > []
> > > > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > > > []
> > > > > > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > > > > > > 
> > > > > > > >               case BC_TRANSACTION_SG:
> > > > > > > >               case BC_REPLY_SG: {
> > > > > > > > -                     struct binder_transaction_data_sg tr;
> > > > > > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > > > > > > 
> > > > > > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > > > > > 
> > > > > > > I fail to see any value in marking tr with __no_initialize
> > > > > > > when it's immediately written to by copy_from_user.
> > > > > > 
> > > > > > This is being done exactly because it's immediately written to by copy_to_user()
> > > > > > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > > > > > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > > > > > the following code:
> > > > > > 
> > > > > >   struct binder_transaction_data_sg tr;
> > > > > >   memset(&tr, 0xAA, sizeof(tr));
> > > > > >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> > > > > > 
> > > > > > This unnecessarily slows the code down, so we add __no_initialize to
> > > > > > prevent the compiler from emitting the redundant initialization.
> > > > > 
> > > > > So?  CONFIG_INIT_STACK_ALL by design slows down code.
> > > > Correct.
> > > > 
> > > > > This marking would likely need to be done for nearly all
> > > > > 3000+ copy_from_user entries.
> > > > Unfortunately, yes. I was just hoping to do so for a handful of hot
> > > > cases that we encounter, but in the long-term a compiler solution must
> > > > supersede them.
> > > > 
> > > > > Why not try to get something done on the compiler side
> > > > > to mark the function itself rather than the uses?
> > > > This is being worked on in the meantime as well (see
> > > > http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
> > > > Do you have any particular requisitions about how this should look on
> > > > the source level?
> > > 
> > > I presume something like the below when appropriate for
> > > automatic variables when not already initialized or modified.
> > > ---
[]
> > > diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
[]
> > > @@ -138,7 +138,8 @@ _copy_to_user(void __user *, const void *, unsigned long);
> > >  #endif
> > > 
> > >  static __always_inline unsigned long __must_check
> > > -copy_from_user(void *to, const void __user *from, unsigned long n)
> > > +copy_from_user(void __no_initialize *to, const void __user *from,
> > > +              unsigned long n)
> > 
> > Shall this __no_initialize attribute denote that the whole object
> > passed to it is initialized?

My presumption is the compiler could determine that only if the
accessed variable is a local automatic, it does not need to be
initialized.

> > Or do we need to encode the length as well, as Jann suggests?

I think not.

> > It's also interesting what should happen if *to is pointing _inside_ a
> > local object - presumably it's unsafe to disable initialization for
> > the whole object.

Are you asking if for example:

	struct foo {
		...;
	};

	struct bar {
		struct foo a;
		...;
	};

	void func(void)
	{
		struct bar b;
		...;
		copy_from_user(&b.a, baz, len);
		...;
	}

that the containing struct b would not be initialized?

I presume a compiler would initialized all of b, but
if it manages to initialize all of b but b.a, good on
the compiler writer.

> The real fix is to initialize everything manually, the automated
> initialization is a hardenning feature which many people will disable.
> So I don't think the hardenning needs to be perfect, it needs to simple
> and fast.

Dan, perhaps I don't understand you.
Can you clarify what you mean?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
