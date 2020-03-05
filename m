Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA4617A205
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 10:08:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90C822046D;
	Thu,  5 Mar 2020 09:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wWUlZuo8ABMd; Thu,  5 Mar 2020 09:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7317320131;
	Thu,  5 Mar 2020 09:08:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51AC91BF2BA
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 09:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 487CA20025
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 09:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXsx5I0FLKQw for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 09:08:42 +0000 (UTC)
X-Greylist: delayed 00:05:13 by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D9C92000B
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 09:08:42 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id e25so5848870edq.5
 for <devel@driverdev.osuosl.org>; Thu, 05 Mar 2020 01:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=b+nyhy3biY02LIl4kBkjbxJ2dWjzxv1IAt+3PKhBtDE=;
 b=adE2B2XkLqsd0IRa+nAvysANIFaAJhyJUDjsZjaeMRjhIacspUqor3sR2vgW5KxlR0
 yaeVJXmuCtcCtPd1emscrdjWgwBLEBSQlUy6X/wipkS1iU1Xrv3haU3SJuBAw58tAKXN
 ePuoeD8dpBz2YWIpZGllhhZdb1h61/uXZ7KmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b+nyhy3biY02LIl4kBkjbxJ2dWjzxv1IAt+3PKhBtDE=;
 b=WwyzvsVOd6snS0C51DANkZj/3iUEan/+86sN+p5ew+pImzIWMJaSqjYdPIs9Hu3bqo
 SwQ8nP5UeJmVLBZGK/kizE8aLAfExIB/qbcF/s9NpDl3jV+H1tJ+IYp571NchVyvQCPV
 oZq2Rw16DS6AboEGyjbfTixWC4V6cA3FyxIB+zC2RrCv9ISD652Jp7BZ1VbYz1pcpA/n
 LEbOflCEBwrKtBD+89s4Y9D+GvZUDBGiPWvOFbJe5Yap7U1/QuPjqS9WU4Oi/jz6M0Te
 54Me7qgMEBCoCfig7z70HZG5faz0D/W0J8afbHVoGUT2YBhhoZJnv9d1soVhC9ihw06z
 Guew==
X-Gm-Message-State: ANhLgQ1/fTcwU4He9NbiCi5Dhxu5XnOCajx17cSfIfW469kubCs7ro+8
 dW7SKbUInnyRndQF3bvUbc+Dc9vXlC9+NAka
X-Google-Smtp-Source: ADFU+vuwpeT6grWUw/3SZRIzyyguUNee5NahuOQg0T4LKxoIoY3hoMytiDSWCzR56EF00n4V1NJ66A==
X-Received: by 2002:a05:651c:319:: with SMTP id
 a25mr4818202ljp.57.1583399007530; 
 Thu, 05 Mar 2020 01:03:27 -0800 (PST)
Received: from [172.16.11.50] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y24sm17699428lfg.63.2020.03.05.01.03.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Mar 2020 01:03:27 -0800 (PST)
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
To: Jann Horn <jannh@google.com>, Alexander Potapenko <glider@google.com>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <CAG48ez3sPSFQjB7K64YiNYfemZ_W9cCcKQW34XAcLP_MkXUjCw@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <205aa3d8-7d18-1b73-4650-5ef534fe55da@rasmusvillemoes.dk>
Date: Thu, 5 Mar 2020 10:03:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAG48ez3sPSFQjB7K64YiNYfemZ_W9cCcKQW34XAcLP_MkXUjCw@mail.gmail.com>
Content-Language: en-US
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
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Joe Perches <joe@perches.com>,
 Dmitriy Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 02/03/2020 19.31, Jann Horn wrote:
> On Mon, Mar 2, 2020 at 7:17 PM Alexander Potapenko <glider@google.com> wrote:
>> On Mon, Mar 2, 2020 at 3:00 PM Joe Perches <joe@perches.com> wrote:
>>>
>>> So?  CONFIG_INIT_STACK_ALL by design slows down code.
>> Correct.
>>
>>> This marking would likely need to be done for nearly all
>>> 3000+ copy_from_user entries.
>> Unfortunately, yes. I was just hoping to do so for a handful of hot
>> cases that we encounter, but in the long-term a compiler solution must
>> supersede them.
>>
>>> Why not try to get something done on the compiler side
>>> to mark the function itself rather than the uses?
>> This is being worked on in the meantime as well (see
>> http://lists.llvm.org/pipermail/cfe-dev/2020-February/064633.html)
>> Do you have any particular requisitions about how this should look on
>> the source level?
> 
> Just thinking out loud: Should this be a function attribute, or should
> it be a builtin - something like __builtin_assume_initialized(ptr,
> len)? That would make it also work for macros,

But with macros (and static inlines), the compiler sees all the
initialization being done, no?

and it might simplify
> the handling of inlining in the compiler. And you wouldn't need such a
> complicated attribute that refers to function arguments by index and
> such.

Does copy_from_user guarantee to zero-initialize the remaining buffer if
copying fails partway through? Otherwise it will be hard for the
compiler to make use of an annotation such as __assume_initialized(buf,
size - ret_from_cfu) - it will have to say "ok, the caller is bailing
out unless ret_from_cfu is 0, and in that case, yes, the whole local
struct variable is indeed initialized". And we can't make the annotation
unconditionally __assume_initialized(buf, size) [unless c_f_u comes with
that guarantee] because we don't know that all callers of c_f_u() bail
out on non-zero.


Somewhat related: I've long wanted a bunch of function attributes

  __may_read(ptr, bytes)
  __may_write(ptr, bytes)
  __will_write(ptr, bytes)

The first could be used to warn about passing an uninitialized or
too-small buffer (e.g.

  struct pollfd fds[4];
  poll(fds, sizeof(fds), ...) // whoops, should have been ARRAY_SIZE)

the second also for warning about a too-small buffer, and the third
would essentially be the same as __assume_initializes. Perhaps with some
sanitization option the compiler could also instrument the function
definition to not read/write beyond the area declared via those attributes.

But the attribute syntax doesn't currently allow complex expressions in
terms of the parameter names; I'd want to annotate poll as

  int poll(struct pollfd *fds, nfds_t nfds, int to) __may_rw(fds, nfds *
sizeof(*fds))

Rasmus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
