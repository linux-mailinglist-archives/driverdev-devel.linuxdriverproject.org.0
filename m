Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B18B17728E
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 10:39:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D56A7863D9;
	Tue,  3 Mar 2020 09:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8q+J2BfiaqZp; Tue,  3 Mar 2020 09:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8241286272;
	Tue,  3 Mar 2020 09:39:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95CA21BF32C
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CA892011B
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ullWm7P2GI2v for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 09:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E1A420011
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 09:38:56 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0239Y00N124318;
 Tue, 3 Mar 2020 09:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=MSC4Wtn4COvNsRCEoK0KFvQBDjOBfSLVQcEKZQ8ZTdg=;
 b=LRDv2LFkdT7WCfr+9xjf73IV/JlTN3jptGTipndciOQdpCVMP7EWMeE9e4b88WUmJeyk
 R/Zwo9JQkFXNZHjQhqMNwG93G1vIBc4ktNcpGGE5ktgN6Wm0BI0OhWOnd66z7MW1bCeE
 5Vv3pd+ZgATHDhU9h25gMWfU6SCAFq9S6xnYYZX1qRJsHpPUQJeKRb6QMXOn2gqN1yKG
 sC+p5vKAv2iq56Z399oxI2nnU92nxWcDWFipLJsdO3Z77GaHv8W3f5UN4D1yVgRwiEKR
 HhsBVUBpobfztgQwQZYZxQiNtqGxH/xnPgjvW6QBPXpvCrveJxBiB84SSdim0ospP/Oh TQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2yffwqnrcg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 09:38:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0239WZvP182796;
 Tue, 3 Mar 2020 09:38:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2yg1eka3kp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 09:38:52 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0239cjrk013071;
 Tue, 3 Mar 2020 09:38:45 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Mar 2020 01:38:44 -0800
Date: Tue, 3 Mar 2020 12:38:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <20200303093832.GD24372@kadam>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1015 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030074
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
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Joe Perches <joe@perches.com>,
 Dmitriy Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 03, 2020 at 10:14:18AM +0100, Alexander Potapenko wrote:
> On Mon, Mar 2, 2020 at 7:51 PM Joe Perches <joe@perches.com> wrote:
> >
> > On Mon, 2020-03-02 at 19:17 +0100, Alexander Potapenko wrote:
> > > On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
> > > > On Mon, 2020-03-02 at 14:25 +0100, Alexander Potapenko wrote:
> > > > > On Mon, Mar 2, 2020 at 2:11 PM Joe Perches <joe@perches.com> wrote:
> > > > > > On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> > > > > > > Certain copy_from_user() invocations in binder.c are known to
> > > > > > > unconditionally initialize locals before their first use, like e.g. in
> > > > > > > the following case:
> > > > > > []
> > > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > > []
> > > > > > > @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
> > > > > > >
> > > > > > >               case BC_TRANSACTION_SG:
> > > > > > >               case BC_REPLY_SG: {
> > > > > > > -                     struct binder_transaction_data_sg tr;
> > > > > > > +                     struct binder_transaction_data_sg tr __no_initialize;
> > > > > > >
> > > > > > >                       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > > > >
> > > > > > I fail to see any value in marking tr with __no_initialize
> > > > > > when it's immediately written to by copy_from_user.
> > > > >
> > > > > This is being done exactly because it's immediately written to by copy_to_user()
> > > > > Clang is currently unable to figure out that copy_to_user() initializes memory.
> > > > > So building the kernel with CONFIG_INIT_STACK_ALL=y basically leads to
> > > > > the following code:
> > > > >
> > > > >   struct binder_transaction_data_sg tr;
> > > > >   memset(&tr, 0xAA, sizeof(tr));
> > > > >   if (copy_from_user(&tr, ptr, sizeof(tr))) {...}
> > > > >
> > > > > This unnecessarily slows the code down, so we add __no_initialize to
> > > > > prevent the compiler from emitting the redundant initialization.
> > > >
> > > > So?  CONFIG_INIT_STACK_ALL by design slows down code.
> > > Correct.
> > >
> > > > This marking would likely need to be done for nearly all
> > > > 3000+ copy_from_user entries.
> > > Unfortunately, yes. I was just hoping to do so for a handful of hot
> > > cases that we encounter, but in the long-term a compiler solution must
> > > supersede them.
> > >
> > > > Why not try to get something done on the compiler side
> > > > to mark the function itself rather than the uses?
> > > This is being worked on in the meantime as well (see
> > > http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
> > > Do you have any particular requisitions about how this should look on
> > > the source level?
> >
> > I presume something like the below when appropriate for
> > automatic variables when not already initialized or modified.
> > ---
> >  include/linux/uaccess.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
> > index 8a215c..3e034b5 100644
> > --- a/include/linux/uaccess.h
> > +++ b/include/linux/uaccess.h
> > @@ -138,7 +138,8 @@ _copy_to_user(void __user *, const void *, unsigned long);
> >  #endif
> >
> >  static __always_inline unsigned long __must_check
> > -copy_from_user(void *to, const void __user *from, unsigned long n)
> > +copy_from_user(void __no_initialize *to, const void __user *from,
> > +              unsigned long n)
> 
> Shall this __no_initialize attribute denote that the whole object
> passed to it is initialized?
> Or do we need to encode the length as well, as Jann suggests?
> It's also interesting what should happen if *to is pointing _inside_ a
> local object - presumably it's unsafe to disable initialization for
> the whole object.

The real fix is to initialize everything manually, the automated
initialization is a hardenning feature which many people will disable.
So I don't think the hardenning needs to be perfect, it needs to simple
and fast.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
