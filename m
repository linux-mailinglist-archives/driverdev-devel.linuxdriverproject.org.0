Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F34C127B77B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 01:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28A3085C52;
	Mon, 28 Sep 2020 23:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eALQIJbrLpGL; Mon, 28 Sep 2020 23:02:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B311884542;
	Mon, 28 Sep 2020 23:02:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 636D51BF278
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 23:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C1A484542
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 23:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3RP7YhOKMa85 for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 23:01:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A908F84519
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:01:58 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id m12so2695969otr.0
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 16:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=G0T+RHalnOsx2x8ckC0/qbcC+AW5CzDJJe/ApeOC0+k=;
 b=Bm4inKBH6owPhXAt+WYO1qUH2sD6gp/JHO/rGqnxUTTZurVuB2oOlCFyuxF6Mrm1Fb
 Jl3P3mG83W6n3SQ1lAam+xSpWMDhH6aKSofFE4lx90AFeuypIUoqFdZzThdjUvc+zhBH
 v12MOvqlrd7l6N2Dd1M3mkf+WXumL1sotF7rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G0T+RHalnOsx2x8ckC0/qbcC+AW5CzDJJe/ApeOC0+k=;
 b=nHMYJzU6shrF6oVsRIpEaEZmSXuxDtiB+qZZl6raK0p3QHiEUnoyM9l0ynVxDXxtDb
 VvOpBXKo/H9PsMQSl61fUn/eqoS/Y6+EKnXrLfgVHFu/qsZ0YW93FJREvcs1k1ejyQ0L
 lYfB7BXQOQ6Ase3AFrH59MIAIz5IR4Pq6UXX8vqMTz0LYZW85F6A3oOvzylUhQriu1Ro
 QBYP6A1tyEbMYNuU+SuQNcaFtRilO40mVBgD/RXFimV8ZMV035pVxyUCeVPRItX8+1/6
 aAO31oeOcsL3aPujKCo6aSEE7hwF0lcgQv3TRwIw6v3WfZ+Pgs9DY7poIM1gxNK3TVpH
 mw/A==
X-Gm-Message-State: AOAM530RQZ7p333RglgzBdOd2lAy5HHG5b2iFxf0/KwK9h/iOgclLh6e
 ltSNqgnTustftmqhn+OrimEpFw==
X-Google-Smtp-Source: ABdhPJwSkr7ZuRk8wTA1EBTCYkbbMO+PyhCPeIPgE2gfdGNAWiJW8KkTuzvV5dYyicY9sgk6dMhK3A==
X-Received: by 2002:a05:6830:1616:: with SMTP id
 g22mr823663otr.289.1601334117878; 
 Mon, 28 Sep 2020 16:01:57 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id a22sm559885oie.13.2020.09.28.16.01.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 16:01:57 -0700 (PDT)
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
To: Joel Fernandes <joel@joelfernandes.org>, Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <20200927233526.GA500818@google.com> <202009281331.444F36A7B@keescook>
 <20200928211709.GA2641213@google.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <9c237ead-5b68-2e3f-2af6-a08c03b24fde@linuxfoundation.org>
Date: Mon, 28 Sep 2020 17:01:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200928211709.GA2641213@google.com>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, rric@kernel.org,
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

On 9/28/20 3:17 PM, Joel Fernandes wrote:
> On Mon, Sep 28, 2020 at 01:34:31PM -0700, Kees Cook wrote:
>> On Sun, Sep 27, 2020 at 07:35:26PM -0400, Joel Fernandes wrote:
>>> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>>>> This patch series is a result of discussion at the refcount_t BOF
>>>> the Linux Plumbers Conference. In this discussion, we identified
>>>> a need for looking closely and investigating atomic_t usages in
>>>> the kernel when it is used strictly as a counter without it
>>>> controlling object lifetimes and state changes.
>>>>
>>>> There are a number of atomic_t usages in the kernel where atomic_t api
>>>> is used strictly for counting and not for managing object lifetime. In
>>>> some cases, atomic_t might not even be needed.
>>>>      
>>>> The purpose of these counters is twofold: 1. clearly differentiate
>>>> atomic_t counters from atomic_t usages that guard object lifetimes,
>>>> hence prone to overflow and underflow errors. It allows tools that scan
>>>> for underflow and overflow on atomic_t usages to detect overflow and
>>>> underflows to scan just the cases that are prone to errors. 2. provides
>>>> non-atomic counters for cases where atomic isn't necessary.
>>>
>>> Nice series :)
>>>

Thanks.

>>> It appears there is no user of counter_simple in this series other than the
>>> selftest. Would you be planning to add any conversions in the series itself,
>>> for illustration of use? Sorry if I missed a usage.
>>>
>>> Also how do we guard against atomicity of counter_simple RMW operations? Is
>>> the implication that it should be guarded using other synchronization to
>>> prevent lost-update problem?
>>>
>>> Some more comments:
>>>
>>> 1.  atomic RMW operations that have a return value are fully ordered. Would
>>>      you be adding support to counter_simple for such ordering as well, for
>>>      consistency?
>>
>> No -- there is no atomicity guarantee for counter_simple. I would prefer
>> counter_simple not exist at all, specifically for this reason.
> 
> Yeah I am ok with it not existing, especially also as there are no examples
> of its conversion/usage in the series.
> 

No. counter_simple is just for counting when there is no need for
atomicity with the premise that there might be some use-cases. You
are right that this patch series doesn't use these. My hunch is though
that atomic_t is overused and it isn't needed in all cases.

I will do some research to look for any places that can use
counter_simple before I spin v2. If I don't find any, I can drop them.

thanks,
-- Shuah

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
