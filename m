Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 690AE5E055
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7001F869B6;
	Wed,  3 Jul 2019 08:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1wWhppldSIG; Wed,  3 Jul 2019 08:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4275C867D0;
	Wed,  3 Jul 2019 08:56:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2C81BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49D238702D
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOX0AKZh6FLQ for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC3C086221
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:56:01 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id u17so386840pgi.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 01:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XdF8qJKb1GAY42zfZPi3PXK4hyrVRJ+7cGCa7TlVzFA=;
 b=rrDxzS1sEOQF3ISU/GawXGpYCs32yVh/dsYMhAX7Plfyz2Yv2rcQY9WG59q7BEeARz
 ZBnjhRLeJhyNCoWlgSMVWxjkFjWSX9q9coQ3H/q4mugg3pddeMf4nUBKZmNxon52gNNH
 utQVru9TMjWUacPabPRgdsEx3cvdrGV0aZHYmrHxkWzJq9EpiLGj1bG5VTWdLg8TNLoO
 QnGX2IAdbNjZOLpuyzAJ8JFyXK/YCCteejKjKvZh9zS6296Aei0auK723BG+RLL/xC0k
 sb1hjBvExw7sz0209p77KnKoEG/YwW/3K/hdtRKPFEP1LcZ8pkNPXkc7GuLLCljgiytA
 muMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XdF8qJKb1GAY42zfZPi3PXK4hyrVRJ+7cGCa7TlVzFA=;
 b=tWDbe1cA/aza4zCisbjLsCJC1Y6e1MvVAyBCgHYF2G0IAnQEvxezFNzWSHx/0ffm3/
 0UeaPvNjxXdrCGPzlJl/Du/GPbZiTHIvjqEaXIC5mUpO4qbvj/KNHsLISDYPGLGSqrV3
 W0R3qMXWrst4gonsXh7Qf58jKqaZfBJfxZcJA9pdo1VLf5ZDuiOkkgiSnJe0aWV2JKI4
 +DLvw3Xp9yiZifnmjCVDBrPqxpa6ylfYLS3mHKRz/enICAuQJTu72k/Q3hpzXX3lIK42
 4E/AyR5jQ0uY4OY+wEEVSNfwDBY1wx+iY3y/BBiyUmRHrh7U3hVdoojwc8gP7zHWfKwV
 H/kw==
X-Gm-Message-State: APjAAAXKkEgWX5lZkRebXQhpveLDG6fXHSRWRwdTt0AHrJjLU2ToPHOt
 V5OR73NV7/IxVaHv8Jyc0LM=
X-Google-Smtp-Source: APXvYqz2lKZCQ2W2iw7xVJWEcklLamDKp+dNwJk6EOxWr2KojHD3pFBw0MkDt6Wh22QMXeCEbznJRw==
X-Received: by 2002:a17:90a:1b0c:: with SMTP id
 q12mr11452111pjq.76.1562144161421; 
 Wed, 03 Jul 2019 01:56:01 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 201sm3453882pfz.24.2019.07.03.01.55.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 01:56:00 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <380a7fb4-d299-a3ee-43ae-0822ec25ece6@gmail.com>
Date: Wed, 3 Jul 2019 14:14:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703083745.GB8996@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 sumit.semwal@linaro.org, christian@brauner.io
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/07/19 2:07 PM, Greg KH wrote:
> On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
>> Remove file ion_carveout_heap.c as its functions and definitions are not
>> used anywhere.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>> ---
>>   drivers/staging/android/ion/Kconfig           |   9 --
>>   drivers/staging/android/ion/Makefile          |   1 -
>>   .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
> 
> I keep trying to do this, but others point out that the ion code is
> "going to be fixed up soon" and that people rely on this interface now.
> Well, "code outside of the kernel tree" relies on this, which is not ok,
> but the "soon" people keep insisting on it...
> 
> Odds are I should just delete all of ION, as there hasn't been any
> forward progress on it in a long time.

I'm sorry, I don't think I understand. Should I drop these patches from 
my tree then?

Thanking you,
Nishka

> Hopefully that wakes some people up...
> 
> thanks,
> 
> greg k-h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
