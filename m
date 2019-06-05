Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFDF361DA
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 18:56:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F6E62044A;
	Wed,  5 Jun 2019 16:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohBFdciU50eq; Wed,  5 Jun 2019 16:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BEAA2044B;
	Wed,  5 Jun 2019 16:56:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5061BF576
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C0F620449
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ESX2BIxG7b7Q for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 16:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2DEC220119
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 16:56:14 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id m3so4401000wrv.2
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 09:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pECXoI9mTW1hJc73canZKynG9yEklj2tqwUD/NjQBTM=;
 b=jvMEsKvNdGnhLTvf306OqVW+t0WYHnHSqbpV+0OSXq1lKKUhVSqvWFKiIy4PqH1CQd
 UQwkGFrZbvX1rURMt2tOSeJfZlPhyJSIMww6qNpawgThaZJgCAL+qyk3rLTU5r1BiZh1
 z4mj+V8Rvd0WasZTtEXcn+ky75wT6dcyup0rMtkJ0gsNiQhgnNsVN1EZJuTsRYBQGJDk
 yKYjdXCCc8MgwWhYaTI6dHS5SQwdUc1LFsSgG3vtuuF7hDvKZ7joDj3M1i+29Z+3CR6+
 CU5Guxth0ffv3OCsTy5NFdKaNxw3NCCbGJ/WY8zGGAz4tx05CcqhIknAtmG1LE7zSA7Z
 BBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pECXoI9mTW1hJc73canZKynG9yEklj2tqwUD/NjQBTM=;
 b=cyWsJsG2Ya/8kA0V7Dho3UR8nZ2GtGxze5avTvdOVgztGd0kCoABCYnTLVg8rSIBCB
 03Mf5JysKPMaX5qddtzabUBZXxaEtGUj0IllfwArY3pVxTR9uMwaPb4B5nQTQMTIAY07
 cNsb50Sl1/RAiubFsqIw4UEuiMlovSHTRON+0nolg2VgMAMCJV93VUaT1hxwPBtW2GD/
 OYqqD3p0xMbegVfrnILFPjsijZiHf2InDibejWNobsFMwJTVzmSSpkY7xmHnmQzm+1uL
 S1gOXc7bLWHho2Xqi68U/aEr4gc8UKTTwg3eU0puhDRN27mZIpcnWqK4AFMVe+92gqLu
 NP+Q==
X-Gm-Message-State: APjAAAXyOQnINQhGPF8AsL49V8li9xDTKYOwDtM5gmzClBJ/XPPYwLYR
 r/Ou1VGKMoc2Hy2x40igucpCwbeh
X-Google-Smtp-Source: APXvYqy+ISdPShS84fnJu9bpgVkkh34+ISjnSAQ876wlZa3A+uq5/ELb3J1l40kwJlm1y/qEYV9TQA==
X-Received: by 2002:adf:eeca:: with SMTP id a10mr27572377wrp.266.1559753772883; 
 Wed, 05 Jun 2019 09:56:12 -0700 (PDT)
Received: from [194.243.128.228]
 (host228-128-static.243-194-b.business.telecomitalia.it. [194.243.128.228])
 by smtp.gmail.com with ESMTPSA id y17sm45501773wrg.18.2019.06.05.09.56.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 09:56:12 -0700 (PDT)
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: fix symbol
 'kpc_dma_add_device' was not declared.
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190605155711.19722-1-valerio.click@gmail.com>
 <20190605161109.GA17272@kroah.com>
From: Valerio G <valerio.click@gmail.com>
Message-ID: <50bb1c8e-29fb-4d70-3c87-22235fc9d4fd@gmail.com>
Date: Wed, 5 Jun 2019 18:56:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605161109.GA17272@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Thanks for the feedback. I re-submitted the patch as v2.

best,
Valerio

Il 05/06/19 18:11, Greg KH ha scritto:
> On Wed, Jun 05, 2019 at 05:57:11PM +0200, Valerio Genovese wrote:
>> This was reported by sparse:
>> drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:39:7: warning: symbol 'kpc_dma_add_device
>> ' was not declared. Should it be static?
>>
>> Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
>> ---
>>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>> index ee47f43e71cf..19e88c3bc13f 100644
>> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>> @@ -56,6 +56,7 @@ struct dev_private_data {
>>  };
>>  
>>  struct kpc_dma_device *kpc_dma_lookup_device(int minor);
>> +void kpc_dma_add_device(struct kpc_dma_device *ldev);
>>  
>>  extern const struct file_operations  kpc_dma_fops;
>>  
> 
> This is not how you fix this issue.
> 
> Look at the warning given to you.  Think about your C programming
> knowledge and remember what the 'static' keyword is and does.
> 
> Then fix the issue properly.
> 
> thanks,
> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
