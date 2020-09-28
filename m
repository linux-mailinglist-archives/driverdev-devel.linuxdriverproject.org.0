Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A90727B777
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 00:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB8A5866B2;
	Mon, 28 Sep 2020 22:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fEmtdRke8g3q; Mon, 28 Sep 2020 22:52:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 276EF8669E;
	Mon, 28 Sep 2020 22:52:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6308B1BF278
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 22:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B7C884542
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 22:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dYFd0B87o_uu for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 22:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 93F0384480
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 22:52:44 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id n61so2617533ota.10
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 15:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=;
 b=SE0OYfnZMo5uyZPc6mgIG21MkoqGNIbmK0jm0vy2aZv5VKA6ku7jwSWs6b1NGUoty/
 wn4UKOoXxTXy903PvYRPnkC+er2m5Wrf3iavraHJxa+QAxqpaiJN2b04VaT2qF2SzrVa
 Hk27i3iLwkmTdLboVB3hrjT8YMf/YNUT+GaDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/zjWGaKaB98mjjh0ZLrJCSXNEtOUo09qmy6NjayUDvk=;
 b=pflGedxaViGE85hn4WsMTPZkaO67A2YdhMaOHqUxBFcp5xe5RvtVZxIugwE4Mvn2oC
 IGCxhDe43Xi0Uw1e90bGVs0mIDiVpkVdlaXAS/ggRJUmgPlnUhY2Ok5GQ80bufuXGqrG
 i8osu01TOXUGqZaJZo/k4Z2ZTZh22pzj1JW8z1EvLBsgUwsOMBuXd8z1kARfvVexphiI
 fIDUVSnLVechfa6p9PY5de1NqJ9alh5+Ane3Jvbhu74IYQNtowxXTPPl5Uju8l2xREGO
 97cyYpfRFjhEpB3pkxp3D9AHic7F4sLXpPRl84YGXWkkkOmx5FNMP7cBF68BIYei8sh1
 nA3A==
X-Gm-Message-State: AOAM532pxBHle9gvShSbUPZEBZDd/eoghSWauw09oDgXlERNe0dGkkUD
 F/eMXrjb9fZIv3xB6DPmKIz2PQ==
X-Google-Smtp-Source: ABdhPJxIHmX1phtewwAqu5CcHxH1zl2JXO7LDJyED8CkXQgctT2koxk9D4O4EqsfNA/ONHttUfK08A==
X-Received: by 2002:a05:6830:1e56:: with SMTP id
 e22mr785307otj.303.1601333563685; 
 Mon, 28 Sep 2020 15:52:43 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id g23sm2586552ooh.45.2020.09.28.15.52.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 15:52:43 -0700 (PDT)
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
 <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
 <202009260930.9252966D@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <31f28240-a3f1-e730-0b10-024125b1d2ab@linuxfoundation.org>
Date: Mon, 28 Sep 2020 16:52:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009260930.9252966D@keescook>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/26/20 10:33 AM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 06:13:37PM -0600, Shuah Khan wrote:
>> On 9/25/20 5:52 PM, Kees Cook wrote:
>>> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>>>> -- Addressed Kees's comments:
>>>>      1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>>>>         to clearly indicate size.
>>>>      2. Added warning for counter_simple* usage and it should be used only
>>>>         when there is no need for atomicity.
>>>>      3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>>>>      4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>>>>         atomic64_t ops and indicates size.
>>>>      5. Test updated for the API renames.
>>>>      6. Added helper functions for test results printing
>>>>      7. Verified that the test module compiles in kunit env. and test
>>>>         module can be loaded to run the test.
>>>
>>> Thanks for all of this!
>>>
>>>>      8. Updated Documentation to reflect the intent to make the API
>>>>         restricted so it can never be used to guard object lifetimes
>>>>         and state management. I left _return ops for now, inc_return
>>>>         is necessary for now as per the discussion we had on this topic.
>>>
>>> I still *really* do not want dec_return() to exist. That is asking for
>>> trouble. I'd prefer inc_return() not exist either, but I can live with
>>> it. ;)
>>>
>>

I didn't read this correctly the first time around.

>> Thanks. I am equally concerned about adding anything that can be used to
>> guard object lifetimes. So I will make sure this set won't expand and
>> plan to remove dec_return() if we don't find any usages.
> 
> I would like it much stronger than "if". dec_return() needs to be just
> dec() and read(). It will not be less efficient (since they're both
> inlines), but it _will_ create a case where the atomicity cannot be used
> for ref counting. My point is that anything that _requires_ dec_return()
> (or, frankly, inc_return()) is _not_ "just" a statistical counter. It
> may not be a refcounter, but it relies on the inc/dec atomicity for some
> reason beyond counting in once place and reporting it in another.
> 

I am not thinking about efficiency rather two calls instead of one if
an decrement needs to followed by return. In any case, I agree with you
that there is no need to add dec_return now without any use-cases.

I will update the patch series to remove it.

thanks,
-- Shuah





_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
