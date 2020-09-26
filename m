Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D889127956F
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 02:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 005D586C51;
	Sat, 26 Sep 2020 00:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LxlKzLiMLqkN; Sat, 26 Sep 2020 00:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6952386283;
	Sat, 26 Sep 2020 00:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 703BF1BF470
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 00:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BB4887678
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 00:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ge0El4EQUrQ0 for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 00:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B9D828766E
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 00:13:40 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id c2so3960356otp.7
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 17:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=;
 b=Itebs+wDAb4wpBvU4vPbCiLJnqG1udHed3DIfGnE4q+RUOWLMv3mGel8E4yijdBKEY
 I9B5MlW3NcLxPV4yZNs0MN9CUGtiqpVaXBemJ5vvVwM93NCjMqEEtaE3pMrenijGh90R
 nX3nRIJ5N6mKMl8WCK7FP09bwZBnRfzV9FTzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uV0OqNe6fNGB9fHblrzHw8cV18adwvrkpgLxsiNP0V0=;
 b=UDvCe2/iUuz5yPu0aGes0x25aVPzRuJVsy4v+WNaOLSh4U6z+RxFHzpSI6hChmFahs
 Kw3wTVpbqhoMWM4ojzLxJXGQZ81kb4eDm2e9DAypzcfUksbSagsACAZ3ETaW1ru1b0si
 DiVUavg0UyHowz6UaBwYG5s1Lg/A9+BvOIvPJv/j2v5JWn/c20QlGxDxOHl3uytjMCX9
 Ene2nW2PMElltOiPMhpNSqOJCQ/87AolukoR/7LU6zWJvDFfrP1V6U8TgNIR6DmY9iWt
 GEPIdgaxhqWm8h3tMpt/yDHIiGwUvmw4pde9Xn7bJB1K1K4ZK2B2xIWzTacCOOegb1Zr
 64Wg==
X-Gm-Message-State: AOAM5319V+NaLrJuU/b4YrNrbUcwixiUTeHiZm4mf05TaUAzPXl4Rz1M
 JKyi/faq6N1j+yAdxODFGf0hjg==
X-Google-Smtp-Source: ABdhPJy+UJfLmw1XfbHObY0B1wHdW9//e0AKIl4aAw2lTnknEdN9TO9NnMLa3wvcpjkRI2FBogyCmA==
X-Received: by 2002:a9d:6e1:: with SMTP id 88mr1876214otx.279.1601079219831;
 Fri, 25 Sep 2020 17:13:39 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id d63sm958205oig.53.2020.09.25.17.13.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 17:13:39 -0700 (PDT)
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
To: Kees Cook <keescook@chromium.org>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009251650.193E2AD@keescook>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <7d8f86ab-4333-afa1-6523-e42ae5c7d9b2@linuxfoundation.org>
Date: Fri, 25 Sep 2020 18:13:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009251650.193E2AD@keescook>
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

On 9/25/20 5:52 PM, Kees Cook wrote:
> On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
>> -- Addressed Kees's comments:
>>     1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>>        to clearly indicate size.
>>     2. Added warning for counter_simple* usage and it should be used only
>>        when there is no need for atomicity.
>>     3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>>     4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>>        atomic64_t ops and indicates size.
>>     5. Test updated for the API renames.
>>     6. Added helper functions for test results printing
>>     7. Verified that the test module compiles in kunit env. and test
>>        module can be loaded to run the test.
> 
> Thanks for all of this!
> 
>>     8. Updated Documentation to reflect the intent to make the API
>>        restricted so it can never be used to guard object lifetimes
>>        and state management. I left _return ops for now, inc_return
>>        is necessary for now as per the discussion we had on this topic.
> 
> I still *really* do not want dec_return() to exist. That is asking for
> trouble. I'd prefer inc_return() not exist either, but I can live with
> it. ;)
> 

Thanks. I am equally concerned about adding anything that can be used to
guard object lifetimes. So I will make sure this set won't expand and
plan to remove dec_return() if we don't find any usages.

thanks,
-- Shuah
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
