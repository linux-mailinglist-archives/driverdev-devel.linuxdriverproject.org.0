Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2619543436
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 10:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 599CA21515;
	Thu, 13 Jun 2019 08:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDEwHTFi-cXa; Thu, 13 Jun 2019 08:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2B8C2150B;
	Thu, 13 Jun 2019 08:39:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CBDE1BF575
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29E7A84A0D
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v22cM989_XTu for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 08:39:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2808843FD
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 08:39:49 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so11369568pff.9
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 01:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=G50Uc0MwhHhkVdkwH2IojupfIpHYrKcTHlZQabCLRII=;
 b=mFlmC0Mfk5fkrejlA6/maYyn86iz1aitv2cOswuvCyKAaH8rBy0rfsXUdIdyJ/WtJZ
 1Xy5nRpJOllQoiae9WbxXIPOoLDwiLyH43bkGG3k0qq2EWPC8tSFgevDXV2z1y0rrKJ2
 NbDPt18QGyFk6XWejsF82Eak0JcxhwPbsf97UC+Wu3ES0reJtSs9yxgnu2lgH2NU76i/
 0TOlHpotxHkd+EP6+hwzBGk4hicQK9s3M3LWDyelDT9XEb/D7V8fjgAX3L8jgSNZ9CyD
 QWeqIlwQ0+vkeZ7saOlob08FFEKVxTP/mRrHw8ivqsLpL0A3TW3QrDURSXduVf+Ln3DW
 XMBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G50Uc0MwhHhkVdkwH2IojupfIpHYrKcTHlZQabCLRII=;
 b=WlLK6HQOVUZTGpZ0ROh7xDCwBppqsTROHSKm9AHEH1xYozf+kN2WAcgj4/fzv8BT6m
 NVGDDtf952aPReN5zO5j2GJwJuvxkHpemfaBZnrik9jtkHVI2+SY+MA/T95C7hyfFN20
 jQvGkIjusRq+EMM8oNPoDjGuEf9wtw59d65FBb6/DgUBrduUaE7QyinOq3QIQ1kwdRXj
 rJtXJNW1URuJRcWqgxH8zyP6vI8mT4d6z0TxKujetPhBsQZgyacCKmLsZHob4idJ2ho6
 SBHFn//obhuX6b20wnYZCLr8K0PcYe0fxGA2rWqB6LHmcD4Z34W2tcixTqwgwCTF3XvU
 jZbw==
X-Gm-Message-State: APjAAAW3+aUwL9JGCm8o5MmCvB+ZxkEthpEW6O35E6jPqRXA9KnPRe6s
 O3zYJzYfN4x2ndE8QwILZDs=
X-Google-Smtp-Source: APXvYqw21oliJBHbATGqi4+W3rogn3QZ1jGM9Q3B7Vq55fRbKzuwg5QB1aXolqxaKum9N8ikp23VPg==
X-Received: by 2002:a62:3605:: with SMTP id d5mr92289800pfa.28.1560415188879; 
 Thu, 13 Jun 2019 01:39:48 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id u23sm3428113pfn.140.2019.06.13.01.39.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 01:39:48 -0700 (PDT)
Subject: Re: [PATCH 01/11] staging: rtl8723bs: core: Remove function
 eeprom_read_sz()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
 <20190613064513.GA28930@kadam>
 <82013631-fb3e-ca52-a07d-91f50beb4263@gmail.com>
 <20190613083505.GA28859@kadam>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <412ad702-5cb8-45b7-0d5b-af9d12a3cfb0@gmail.com>
Date: Thu, 13 Jun 2019 14:09:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613083505.GA28859@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 13/06/19 2:05 PM, Dan Carpenter wrote:
> On Thu, Jun 13, 2019 at 01:53:20PM +0530, Nishka Dasgupta wrote:
>> On 13/06/19 12:15 PM, Dan Carpenter wrote:
>>> On Wed, Jun 12, 2019 at 11:34:29PM +0530, Nishka Dasgupta wrote:
>>>> Remove unused function eeprom_read_sz.
>>>> Issue found with Coccinelle.
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
>>>
>>> This is great but you need to remove the declaration from the .h file
>>> as well.  I noticed some of the other patches have this problem as well
>>> so please check them and resend the whole set.
>>
>> I'm sorry, I couldn't find the declaration in any .h file for any of these
>> patches, even after fetch origin, rebase, and grep. Going to individual .h
>> files and searching for declarations does not seem to work either. Is there
>> any other way I can look for the declarations?
>>
> 
> Oh...  Heh.  Sorry for the noise.  My bad.
> 
> I was looking at the wrong driver.  It's declared but not implemented in
> rtl8188eu in drivers/staging/rtl8188eu/include/rtw_eeprom.h.  We should
> delete those too, but it's unrelated to your patchset so don't worry
> about it.

Oh, okay. I was actually going to do rtl8188eu anyway so I'll keep this 
in mind when I get round to it.

Thanking you,
Nishka

> regards,
> dan carpenter
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
