Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BDF263795
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 22:40:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35CA08701F;
	Wed,  9 Sep 2020 20:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXpZ61OehcPJ; Wed,  9 Sep 2020 20:40:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9717A870BE;
	Wed,  9 Sep 2020 20:40:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 064A01BF285
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 002E3873C7
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZAmrxq5XQ2QD for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 20:40:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D8FA87283
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 20:40:31 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id w2so3561840wmi.1
 for <devel@driverdev.osuosl.org>; Wed, 09 Sep 2020 13:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sx9DxKNcCvmTYkO3aEWVaC2c0HdBPnZtG5c75JMGmnk=;
 b=cCjgWXD94wPoS66QQU9Z0vA15zknGbe0JEz39WrKjO9NLwCV2CaUItI9bor3duj6HD
 Ij1XN9gmTNyo7dk9OTp9orN1Lx/6TVIml6JOuYLtRkL3j2YPz7QeihVQ+w9F2gWtv0k6
 e5mmPDocAfHTE2wqhOs5JiL0IqPP1m75Qfv/gtsQmYGWxJ8681vNSmAkynXJsvH6D1CV
 HcCTTEQOOPsC0An4L2itudcRCEfME6GeevxNbJYE1UkMZPh3F/UZdSMA+fpaUWdvgDCw
 j/n5xvs4d4m0hf0Iz6jrWIpQD6TwSfYyBQKjf4uC6Yb7j1hKJr2gXlodnlW8jUaZIyYA
 mBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sx9DxKNcCvmTYkO3aEWVaC2c0HdBPnZtG5c75JMGmnk=;
 b=arvgnIGiMrsmYCoAqBrKVZHaU1O9okvdfNyZ0ixSyYPx7Zh8/HrAb0ahgu1eHa0Lq/
 dCMdhyUckrKd8DG3C09zqJU9Kez96eUeQM6g3++Ri2Y9PFthoJ9UTHxsYcVZGuQhrjWf
 4hN5q/dn5C4lZToKKJoXqPIDxIzASKGkeR4mGwpV+vp2/36XwHqy/WmC5Kxc3xfh/EaZ
 jdVQv9EFGuQdVn2oJg24OCjaaGESXAK0QSpzlJMSQRCteHxBTqXAGm+Cmdp/wcGhHgcg
 wt6O+U+jHUgFQKEVfXaICDmqrGvxG6ktcYu8BU7dVSQK2boDkmy7m6oMupmNyU09lVH0
 FEng==
X-Gm-Message-State: AOAM532lL9mE/NV+r9D3ERMkOh0+O3hm9qYPv38wMsJ0uz4aGzlu8c/E
 KX71o0colhF0w3eNl4q69k8=
X-Google-Smtp-Source: ABdhPJxhgwin1sWmTwPB9h9DSNs6VJcWjq8LSApL/5XdKL31gGO7kn6617oA79iPbpSgMQ3hMu0hpA==
X-Received: by 2002:a1c:c90d:: with SMTP id f13mr5290413wmb.25.1599684029611; 
 Wed, 09 Sep 2020 13:40:29 -0700 (PDT)
Received: from [192.168.0.18]
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id f14sm5717285wrv.72.2020.09.09.13.40.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Sep 2020 13:40:29 -0700 (PDT)
Subject: Re: [PATCH] staging: media: atomisp: Use kvfree_sensitive in a few
 places
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200909195403.225084-1-alex.dewar90@gmail.com>
 <20200909200651.GB12635@kadam>
From: Alex Dewar <alex.dewar90@gmail.com>
Message-ID: <e8204c7a-e0d1-3c08-3313-3435ae53fa8b@gmail.com>
Date: Wed, 9 Sep 2020 21:40:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200909200651.GB12635@kadam>
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-09-09 21:06, Dan Carpenter wrote:
> On Wed, Sep 09, 2020 at 08:53:50PM +0100, Alex Dewar wrote:
>> In the file pci/sh_css_params.c, there are a number of places where
>> memset+kvfree is used, where kvfree_sensitive could be used instead. Fix
>> these occurrences.
> This doesn't say *why* the commit is doing it.  There are two reasons:
> The worry with these is that the compiler could optimize away the memset
> because it sees the kfree().  Second using kvfree_sensitive() is more
> clear and readable.
Good point :)
>
>> Issue identified with Coccinelle.
>>
>> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
>> ---
>>   .../staging/media/atomisp/pci/sh_css_params.c | 19 +++++++------------
>>   1 file changed, 7 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
>> index 2c67c23b3700..d1b5d6608d52 100644
>> --- a/drivers/staging/media/atomisp/pci/sh_css_params.c
>> +++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
>> @@ -4378,8 +4378,7 @@ ia_css_3a_statistics_free(struct ia_css_3a_statistics *me)
>>   	if (me) {
>>   		kvfree(me->rgby_data);
>>   		kvfree(me->data);
>> -		memset(me, 0, sizeof(struct ia_css_3a_statistics));
>> -		kvfree(me);
>> +		kvfree_sensitive(me, sizeof(struct ia_css_3a_statistics));
> I don't think ia_css_3a_statistics are sensitive at all.  What we're
> trying to protect are things like passwords.  Just delete the memset.
>
> Looking below, I don't think any of these are sensitive so just delete
> all the memsets.
This makes sense. I'll send a new patch. Thanks for the feedback!

Alex
>
> regards,
> dan carpenter
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
