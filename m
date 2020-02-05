Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F137B15324C
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 14:52:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80F3287952;
	Wed,  5 Feb 2020 13:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9w61zqru0ybp; Wed,  5 Feb 2020 13:52:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB6A7877B5;
	Wed,  5 Feb 2020 13:52:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 764431BF377
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 13:52:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71BBA87877
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 13:52:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hK3342KXhec2 for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 13:52:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 766378731E
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 13:52:53 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k3so1007775pgc.3
 for <devel@driverdev.osuosl.org>; Wed, 05 Feb 2020 05:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QYRfDWZUUtqTWM9My1jeCr++tfeRfO79KtdWK10VIjs=;
 b=H6fVaPc+LuRLDkElWAchKpNLhgRPwesVngj2xuybBCoFYnlFyQ/u8/STOOXNdzoE8u
 NrcXlX0l1tKgvRvNCcq70uEQNXfywgVo2U0GZyKReuOUeuOh14swQJ9PK9V2wfhbwItI
 0BpVDDR0Wi1xpfz07Lx6Wc/Cc+oyzOKzNMG7ZugzvMP/k0QE9cZaXrAmglyDihldlgsi
 DdrMCvfCcSHBhSLGonRygTn2bcSD2aAkYstSXlnQPTcLFutkNtK1ay6TKM0Gren9Suru
 T0epaZdrS10K+4vnY0WKXZvOWlUbQM/rqSMexwkJPuYYSHoN9UKg+TSRu/mKnGyomkuF
 BZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QYRfDWZUUtqTWM9My1jeCr++tfeRfO79KtdWK10VIjs=;
 b=O5UPzLFDsn4XeQoDSXm63wENZbhomBTyyL7C1MvjHeudFIi8BUTxIpyqqYg0NXvMm3
 PjT/BXUYaa32sqa7iV5V3kpW9qnnnlzKqd5weANeF+KsYW/N/B3ajYjw0NIHnXm4MfCv
 7/LWenN4Y1zLHxgx2oPuW0IdArni9/BkiBnNMwTy4Yo7kXmc8AZUwH+WkM7AvPJd2/YG
 EXhpFshqUrKC1T1HQxj3LvENdkRRiArhCpz6VdiB4EuvGMcUN6F65rr4CJZDPDAnjRTK
 KRuyA49sMozrizv35LbDSB7SgVVDFWZL8pFMCBUZrBPlHiqpTbTebjvWYZH2NWzu6YN8
 ttAw==
X-Gm-Message-State: APjAAAXIR3w+ge06ILWGUM0BW3v4jEv5lhcWyQOwLVfyyqlXtOhOZFJp
 UlDWhD7PByrxqbNcHbIYADc=
X-Google-Smtp-Source: APXvYqycEBBTpOdjid+edNq3gFMEa+YCgpCDM23U3y6giQQkt6Q3jSAXmWyd/rHYyZ+8I6GFOsJ/Mg==
X-Received: by 2002:a63:8743:: with SMTP id i64mr14847459pge.243.1580910773072; 
 Wed, 05 Feb 2020 05:52:53 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 r66sm29853616pfc.74.2020.02.05.05.52.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Feb 2020 05:52:52 -0800 (PST)
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org> <20200205033416.GT1778@kadam>
 <a3032823-03a9-f018-73e4-eb0d71e0bb53@roeck-us.net>
 <CAMuHMdXKtJEvwRViRpy4nHbxv68P_rCFWbpikw=BMM5XnBvD2A@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <dd09609d-d504-9a9e-453e-6b0ef66e6211@roeck-us.net>
Date: Wed, 5 Feb 2020 05:52:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXKtJEvwRViRpy4nHbxv68P_rCFWbpikw=BMM5XnBvD2A@mail.gmail.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/5/20 1:03 AM, Geert Uytterhoeven wrote:
> On Wed, Feb 5, 2020 at 4:57 AM Guenter Roeck <linux@roeck-us.net> wrote:
>> On 2/4/20 7:34 PM, Dan Carpenter wrote:
>>> On Tue, Feb 04, 2020 at 12:31:16PM -0800, Matthew Wilcox wrote:
>>>> On Tue, Feb 04, 2020 at 08:06:14PM +0000, Chris Packham wrote:
>>>>> On Tue, 2020-02-04 at 07:09 +0000, gregkh@linuxfoundation.org wrote:
>>>>>> On Tue, Feb 04, 2020 at 04:02:15AM +0000, Chris Packham wrote:
>>>>> On Tue, 2020-02-04 at 10:21 +0300, Dan Carpenter wrote:
>>>>>> My advice is to delete all the COMPILE_TEST code.  That stuff was a
>>>>>> constant source of confusion and headaches.
>>>>>
>>>>> I was also going to suggest this. Since the COMPILE_TEST has been a
>>>>> source of trouble I was going to propose dropping the || COMPILE_TEST
>>>>> from the Kconfig for the octeon drivers.
>>>>
>>>> Not having it also causes problems.  I didn't originally add it for
>>>> shits and giggles.
>>>
>>> I wonder if the kbuild bot does enough cross compile build testing these
>>> days to detect compile problems.  It might have improved to the point
>>> where COMPILE_TEST isn't required.
> 
> It depends...
> 
>> Not really. Looking at the build failures in the mainline kernel right now:
>>
>> Failed builds:
>>          alpha:allmodconfig
>>          arm:allmodconfig
>>          i386:allyesconfig
>>          i386:allmodconfig
>>          m68k:allmodconfig
>>          microblaze:mmu_defconfig
>>          mips:allmodconfig
>>          parisc:allmodconfig
>>          powerpc:allmodconfig
>>          s390:allmodconfig
>>          sparc64:allmodconfig
> 
> I did receive a report from noreply@ellerman.id.au for the m68k build
> failure. But that was sent to me only, not to the offender, and I do my
> own builds anyway.
> 
> More interesting, that report happened after the offending commit landed
> upstream, while it had been in next for 4 weeks.
> 

m68k in -next builds fine for me, and did for a while. I have not seen a build
failure there. There must be a context commit causing this failure, or what
is (or was) in -next differs from what is in mainline.

>> Many of those don't even _have_ specific configurations causing the build failures.
> 
> Exactly. These are the "easy" ones, as the all*config builds enable as
> much infrastructure as possible.  It's much harder if some common
> dependency is not fulfilled in some specific config.
> 

Yes, that is correct. But that doesn't mean that it would be a good idea
to retire COMPILE_TEST.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
