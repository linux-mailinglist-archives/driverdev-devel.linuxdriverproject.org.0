Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE0828D858
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 04:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C829879B8;
	Wed, 14 Oct 2020 02:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzDMk3apPGSu; Wed, 14 Oct 2020 02:12:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48E6D879BE;
	Wed, 14 Oct 2020 02:12:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 832711BF584
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 02:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E20C879B5
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 02:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iilft9KV1q63 for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 02:12:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B01EA86DA6
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 02:12:23 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id j13so3455814ilc.4
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 19:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=;
 b=DbWW5TtsBc6Dyb8YsskACaBaCbQEtISHSCVxTRgFAHlHJjmD1dU40N2/h5pZJ6i9bJ
 +F2NBNfzuZOj7AsXvJYavEYGwGPq4uL8mop/7Jirc9xAaKdAITSdhsoI+JolGBgvo7jC
 FaHWhFiSslkjQ7vjKYWsBMu2t4YFei5779oSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O0EZovHPBRBu6d4nMiG34aB96fSPYJLap8VHOicm/qs=;
 b=WKk+X7qoxiWmEycO+qczst1IyV9lcUd6XC7w30cP7jw9/atqKtzv0MeRZMI1N6WEn/
 kjyQsYRDv+VXkSaL9rqxGqIzGO0sZYGxlo/PGyPdhNUpYRSINZLhMpA5wqDI8eF/mD39
 9q3B++uUzE+WBHZSNtTi9bjHWlR638DMMMlt1bcw/PMa5eJP+KvIEX8xe3AwUFcR3Dwl
 MSP5CztigZ+TMkPEwsGOMWpC4yec6FEw9zYB+Sg3Qe1LS4GsszGwmVBx0diYEeTCxsyX
 +KYXIeA0usMO/1LcySglz2NXlxGsBmWsaGTSJcs11fAw8XOfP1GRuhqvLsLQxS184UJo
 c+VQ==
X-Gm-Message-State: AOAM533GmpsW+/Yw4rFluVoRgXj/NUqer7BEFAnJ3U++JQKXMkELpGPQ
 3IdizFPjJiISVCTFksDKT1GUfw==
X-Google-Smtp-Source: ABdhPJzg8Uk3iABEzJ4woM5C8q7wCnJ5fWvm66m83Hyk77SwQ9t1b/UHHFa4UxnY/E8z7l/WVw75Zg==
X-Received: by 2002:a92:bb0d:: with SMTP id w13mr2338778ili.168.1602641542819; 
 Tue, 13 Oct 2020 19:12:22 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id 15sm1611292ilz.66.2020.10.13.19.12.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Oct 2020 19:12:22 -0700 (PDT)
Subject: Re: [PATCH v3 00/11] Introduce Simple atomic counters
To: Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
Date: Tue, 13 Oct 2020 20:12:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
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
Cc: rafael@kernel.org, Will Deacon <will@kernel.org>,
 linux-kselftest@vger.kernel.org, joel@joelfernandes.org, rric@kernel.org,
 shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net,
 surenb@google.com, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
 lenb@kernel.org, tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/10/20 5:09 AM, Peter Zijlstra wrote:
> On Fri, Oct 09, 2020 at 01:45:43PM -0700, Kees Cook wrote:
>> On Fri, Oct 09, 2020 at 09:37:46PM +0200, Peter Zijlstra wrote:
>>> On Fri, Oct 09, 2020 at 09:55:55AM -0600, Shuah Khan wrote:
>>>> Simple atomic counters api provides interfaces for simple atomic counters
>>>> that just count, and don't guard resource lifetimes. The interfaces are
>>>> built on top of atomic_t api, providing a smaller subset of atomic_t
>>>> interfaces necessary to support simple counters.
>>>
>>> To what actual purpose?!? AFACIT its pointless wrappery, it gets us
>>> nothing.
>>
>> It's not pointless. There is value is separating types for behavioral
>> constraint to avoid flaws. atomic_t provides a native operation. We gained
>> refcount_t for the "must not wrap" type, and this gets us the other side
>> of that behavioral type, which is "wrapping is expected". Separating the
>> atomic_t uses allows for a clearer path to being able to reason about
>> code flow, whether it be a human or a static analyzer.
> 
> refcount_t got us actual rutime exceptions that atomic_t doesn't. This
> propsal gets us nothing.
> 
> atomic_t is very much expected to wrap.
> 
>> The counter wrappers add nothing to the image size, and only serve to
>> confine the API to one that cannot be used for lifetime management.
> 
> It doesn't add anything period. It doesn't get us new behaviour, it
> splits a 'can wrap' use-case from a 'can wrap' type. That's sodding
> pointless.
> 

They don't add any new behavior, As Kees mentioned they do give us a
way to clearly differentiate atomic usages that can wrap.

Let's discuss the problem at hand before dismissing it as pointless.

> Worse, it mixes 2 unrelated cases into one type, which just makes a
> mockery of things (all the inc_return users are not statistics, some
> might even mis-behave if they wrap).
> 

You are right that all inc_return usages aren't statistics. There are
3 distinct usages:

1. Stats
2. Cases where wrapping is fine
3. Cases where wrapping could be a problem. In which case, this API
    shouldn't be used.

There is no need to keep inc_return in this API as such. I included it
so it can be used for above cases 1 and 2, so the users don't have to
call inc() followed by read(). It can be left out of the API.

The atomic_t usages in the kernel fall into the following categories:

1. Stats (tolerance for accuracy determines whether they need to be
    atomic or not). RFC version included non-atomic API for cases
    when lossiness is acceptable. All these cases use/need just init
    and inc. There are two variations in this case:

    a. No checks for wrapping. Use signed value.
    b. No checks for wrapping, but return unsigned.

2. Reference counters that release resource and rapping could result
    in use-after-free type problems. There are two variations in this
    case:

    a. Increments and decrements aren't bounded.
    b. Increments and decrements are bounded.

    Currently tools that flag unsafe atomic_t usages that are candidates
    for refcount_t conversions don't make a distinction between the two.

    The second case, since increments and decrements are bounded, it is
    safe to continue to use it. At the moment there is no good way to
    tell them apart other than looking at each of these cases.

3. Reference counters that manage/control states. Wrapping is a problem
    in this case, as it could lead to undefined behavior. These cases
    don't use test and free, use inc/dec. At the moment there is no good
    way to tell them apart other than looking at each of these cases.
    This is addressed by REFCOUNT_SATURATED case.

This API addresses 1a. Stats. No checks for wrapping. Use signed value
at the moment with plan to add support for unsigned for cases where
unsigned is being used.

It is possible to cover 2b in this API, so it becomes easier to make a
clear distinction the two cases and we can focus on only the atomic_t
cases that need to converted to refcount_t. This is easy to do by
allowing max. threshold for the variable and checking against that
and not letting it go above it.

There are several atomic_t usages that use just:

-- init or set and inc
-- init or set and inc/dec (including the ones that manage state)
-- Increments and decrements are bounded

Creating a sub-set of atomic_t api would help us with differentiate
these cases and make it easy for us identify and fix cases where
refcount_t should be used.

Would you be open to considering a subset if it addresses 2b and
unsigned returns for stats?

thanks,
-- Shuah












_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
