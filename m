Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A5A1E14FA
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 21:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7867E869D3;
	Mon, 25 May 2020 19:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wx7K5JX9TUkV; Mon, 25 May 2020 19:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BDC1875E9;
	Mon, 25 May 2020 19:56:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF65F1BF28D
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 19:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5B46203D1
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 19:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1tQbtkZdIHd for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 19:56:52 +0000 (UTC)
X-Greylist: delayed 00:06:03 by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3841E20005
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 19:56:52 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id b6so18385820qkh.11
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 12:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=leaflabs-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CBPda5NA99jy1A5gbIBXWbIi5pPJWudA4hi9ywStCK8=;
 b=AFwEOdJXx9pmke4TFlrGLvTobL3pkHPcTeYy1VQ/+NvoFFCp6uirMXgQ82v8Zl8lNw
 dSUO3wm4ySpmHP4HelChS2Nh3NbDfp5DUqxcKyw+YzzMm1mPA39vsq8fTKmDauRWXz80
 dKj6Lw74fKNBb2AZSPqrJdEiv9X3fj8XpYj5nI9ETulqC7pEvJ8nNt1tiUsajsT9xhUK
 /2Pw9Z1aKCLtkn4jCV7lj1Qem68tYBkGTKk32B4gIMIO84gkwXe5YW+zoaTaV8zKNBKP
 lygN2dgGZJH5JDESQd1/jbD8os9LxmYezSp25v318vJiJeTvo0XVOtJTfuYRxfsK5DgP
 iUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CBPda5NA99jy1A5gbIBXWbIi5pPJWudA4hi9ywStCK8=;
 b=YBGQtvlhvuw3F8+Ao1tsUTE0iCOQDKHytxLR38qHciscXo/A3UICQkM7ywdo2hYt+Z
 P23BaZZwaD0b9qUOgWrfp2VYfvlhxczEBk0TV3TLMzjWYU98tZUGiZCpHwVd1o+Z5nd2
 5f+mNT1C2GksgEjcUeFAliWCIsjAQOWQHFeEMJE7aCPhdgOKbqHDg5g+7dfx2Em1yhxJ
 6uxUMuc0pqa7IhmbmA1h5lMwkBQm2YCA7jhZh6DXijfLsgwwqVw+yJIuaxW5IeeylJnf
 g4z4eHsyKmdFp7gr1fcPzS+gSA7mKzSwD2yKBWz4lBRlPSX40ybpFIVH/ROrFFvEqX0D
 /LVA==
X-Gm-Message-State: AOAM533G6kZKskNr5iQB1DiS7gMdsc6jYdwlmEQThYctz/RDrsvLK99C
 jBTg1ffA/BSU/V/8CVwevQWXK1xnJng=
X-Google-Smtp-Source: ABdhPJy2ocMQraNI2+O+UyJv/WlvUwdvZdG5MF0q1EO9a6FaJj8c2aCSHVNxa636iD1znd8Fs29E6g==
X-Received: by 2002:a37:63d0:: with SMTP id
 x199mr24878172qkb.271.1590436248754; 
 Mon, 25 May 2020 12:50:48 -0700 (PDT)
Received: from [192.168.189.130]
 (209-6-156-57.s56.c3-0.sbo-ubr1.sbo.ma.cable.rcncustomer.com. [209.6.156.57])
 by smtp.gmail.com with ESMTPSA id i14sm2984009qkl.105.2020.05.25.12.50.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 12:50:48 -0700 (PDT)
Subject: Re: [PATCH] staging: vchiq_arm: cast with __force as needed
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200519004531.33158-1-tasman@leaflabs.com>
 <20200522110623.GL30374@kadam>
From: Mitchell Tasman <tasman@leaflabs.com>
Message-ID: <4dcf963f-ce9a-fa2b-09c9-c8657f407167@leaflabs.com>
Date: Mon, 25 May 2020 15:50:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522110623.GL30374@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/22/20 7:06 AM, Dan Carpenter wrote:
> On Mon, May 18, 2020 at 08:45:31PM -0400, Mitchell Tasman wrote:
>> In several cases where a pointer marked as __user is
>> (intentionally) assigned or passed to a non-marked target,
>> cast to the target pointer type with a __force directive
>> to quiet warnings from sparse.
>>
>> Signed-off-by: Mitchell Tasman <tasman@leaflabs.com>
>> ---
>>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c     | 7 ++++---
>>  .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 4 +++-
>>  2 files changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> index c18c6ca0b6c0..38a13e4618a8 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
>> @@ -371,14 +371,15 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>>  	pagelistinfo->scatterlist = scatterlist;
>>  	pagelistinfo->scatterlist_mapped = 0;
>>  
>> -	if (is_vmalloc_addr(buf)) {
>> +	if (is_vmalloc_addr((void __force *)buf)) {
> 
> Am I reading this correctly???
> 
> This is actually a user controlled pointer that comes from the
> vchiq_ioctl() when we do VCHIQ_IOC_QUEUE_BULK_TRANSMIT/RECEIVE.  So we
> take random pointer from user space and if it happens to point to kernel
> space then we trust it and presumably start BULK_TRANSMITing data to
> it???
> 
> LOL....  This doesn't seem safe at all.

Is additional validation of buf and its extent necessary and sufficient, e.g. perhaps access_ok(buf, count * PAGE_SIZE) somewhere along the call chain?  Or does vhciq_arm need to take a different approach in the area that Dan Carpenter flagged?

Thank you.

> 
> regards,
> dan carpenter
> 

Regards,
Mitch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
