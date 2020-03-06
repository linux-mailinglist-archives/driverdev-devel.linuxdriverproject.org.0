Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B8517B473
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 03:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 583FE880C3;
	Fri,  6 Mar 2020 02:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYOWpSMaqbz3; Fri,  6 Mar 2020 02:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9196787EBA;
	Fri,  6 Mar 2020 02:29:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C68F1BF616
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 02:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98E8286A72
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 02:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61u1nepQHODW for <devel@linuxdriverproject.org>;
 Fri,  6 Mar 2020 02:29:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7945282067
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 02:29:26 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jA2jk-0062dm-0g; Fri, 06 Mar 2020 02:29:16 +0000
Date: Fri, 6 Mar 2020 02:29:15 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <20200306022915.GW23230@ZenIV.linux.org.uk>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <CAG48ez3sPSFQjB7K64YiNYfemZ_W9cCcKQW34XAcLP_MkXUjCw@mail.gmail.com>
 <205aa3d8-7d18-1b73-4650-5ef534fe55da@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <205aa3d8-7d18-1b73-4650-5ef534fe55da@rasmusvillemoes.dk>
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
 Ingo Molnar <mingo@redhat.com>, Alexander Potapenko <glider@google.com>,
 Joe Perches <joe@perches.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 05, 2020 at 10:03:25AM +0100, Rasmus Villemoes wrote:

> Does copy_from_user guarantee to zero-initialize the remaining buffer if
> copying fails partway through?

That's guaranteed, short of raw_copy_from_user() being completely broken.
What raw_copy_from_user() implementation must guarantee is that if
raw_copy_from_user(to, from, N) returns N - n, then
	* 0 <= n <= N
	* all attempted reads had been within the range [from .. from + N - 1]
	* all stores had been to the range [to .. to + n - 1] and every byte
within that range had been overwritten
	* for all k in [0 .. n - 1], the value stored at to[k] by the end of
the call is equal to the value that would've been possible to read from
from[k] at some point during the call.  In particular, for all bytes in
range [from .. from + n - 1] there had been a successful read of some
object containing that byte.
	* if everything in [from .. from + N - 1] is readable, the call
will copy the entire range into [to .. to + N - 1] and return 0.

Provided that, copy_from_user() will leave no uninitialized data in
destination object in any case, success or no success.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
