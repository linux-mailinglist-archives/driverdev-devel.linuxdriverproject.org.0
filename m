Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2585E2D0
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 13:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A780E85FB4;
	Wed,  3 Jul 2019 11:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJhnYq5D2eJq; Wed,  3 Jul 2019 11:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B2A785FAD;
	Wed,  3 Jul 2019 11:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 583BF1BF389
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 11:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5562F2037A
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 11:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YatE4UZMFsZw for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 11:32:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5123220004
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 11:32:29 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id n11so2390612qtl.5
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 04:32:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2Q71nykmZnftwjkHSkA+Jk39GDfEUnad16+NV/JTo7Y=;
 b=ZQGiCFMxviC2tO+jFQnjuKt9EKkYQDgL9LRKMPLtH9V/VzDHd34EOwrZ1mBJxepBIF
 fJkuy3iB/V4ABXy+t6HmVMCSLe7ywgxnt4MCfYHcvkxZgtEkeG9j2dd4zlvqf7yeIl3u
 wzSZZDAEiTj/nO+gtFU6Y5HjtaAJY4o1ne+oN4D5o5kt/3PbsNB6+SyHUmbKMKv2HCjk
 tUMzQlh/W+mNDjVNbwREeTDwzq5btMHxgQCHUB27FrnczJHWcetoCcRDqZ8JTzLpySBN
 F0v92S0rnFLhYk8VAHTldAFk/NhfIuMdZi3+y1J/aGEjAYitGd+k63A7mw65TC6WDp0l
 vF+A==
X-Gm-Message-State: APjAAAW44g7dI7SF1au7+qg+OG2rLYbxNsXov8bVVd+TOS4S4iVJ3sol
 gmNR8oD3X3H/vFiZtIV/fTvTEg==
X-Google-Smtp-Source: APXvYqyzud3g07TciC4VF5eJmUl92j4XscGm6M0TvSKIGlHXYnM3cBpfQ1p+ZmlBIf/e4UAadZGy9w==
X-Received: by 2002:ac8:2774:: with SMTP id h49mr28980055qth.97.1562153548407; 
 Wed, 03 Jul 2019 04:32:28 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id f25sm977214qta.81.2019.07.03.04.32.27
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 04:32:27 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: android: ion: Remove file ion_carveout_heap.c
To: Daniel Vetter <daniel@ffwll.ch>, Greg KH <gregkh@linuxfoundation.org>,
 John Stultz <john.stultz@linaro.org>
References: <20190703081842.22872-1-nishkadg.linux@gmail.com>
 <20190703083745.GB8996@kroah.com>
 <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <759555d8-98bf-44d3-4fa3-3d927f9a33db@redhat.com>
Date: Wed, 3 Jul 2019 07:32:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFAaw3sL_A6gGOeot80fvukjZqprLptLER=riA1_p4zWw@mail.gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Todd Kjos <tkjos@android.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/3/19 5:50 AM, Daniel Vetter wrote:
> On Wed, Jul 3, 2019 at 10:37 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Wed, Jul 03, 2019 at 01:48:41PM +0530, Nishka Dasgupta wrote:
>>> Remove file ion_carveout_heap.c as its functions and definitions are not
>>> used anywhere.
>>> Issue found with Coccinelle.
>>>
>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>> ---
>>>   drivers/staging/android/ion/Kconfig           |   9 --
>>>   drivers/staging/android/ion/Makefile          |   1 -
>>>   .../staging/android/ion/ion_carveout_heap.c   | 133 ------------------
>>
>> I keep trying to do this, but others point out that the ion code is
>> "going to be fixed up soon" and that people rely on this interface now.
>> Well, "code outside of the kernel tree" relies on this, which is not ok,
>> but the "soon" people keep insisting on it...
>>
>> Odds are I should just delete all of ION, as there hasn't been any
>> forward progress on it in a long time.
>>
>> Hopefully that wakes some people up...
> 
> John Stultz has done a steady stream on ion destaging patch series
> past few months, und the heading of "DMA-BUF Heaps", targeting
> drivers/dma-buf. I'm not following the details, and it seems a bit a
> crawl, but there's definitely work going on ... Just probably not
> in-place in staging I think.
> -Daniel
> 


https://lists.freedesktop.org/archives/dri-devel/2019-June/223705.html

It is making slow and steady progress. Part of this is trying to
make sure we actually get this right before moving anything
out of staging.

That said, I think we're at the point where nobody wants the
carveout and chunk heaps so I'd actually be okay with removing
those files. Just to be explicit:

Acked-by: Laura Abbott <labbott@redhat.com>

Thanks,
Laura
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
