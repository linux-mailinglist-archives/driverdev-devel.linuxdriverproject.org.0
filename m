Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9319F149571
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 13:15:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86D96882F3;
	Sat, 25 Jan 2020 12:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PBNG4GsEdrtm; Sat, 25 Jan 2020 12:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3BD18820A;
	Sat, 25 Jan 2020 12:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81CAC1BF370
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 12:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E9EE86AF4
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 12:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O23o8if-AbPH for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 12:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20A5D86AE9
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 12:15:07 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id d5so999670pjz.5
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 04:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KEOUVkLXF88QHPCVWTmHvz1cvdcTGgdnYVNwsG5Ic3U=;
 b=R3XdHplspJIK9YorbtxOvVLVxQn8l7IuQv49jLjx674YmL77omkKpvhYHp2giCRmaM
 WeexnnaD41DaB8Qmv4wooPp/hRHiCAEJLaw/6Iz8kBzH2vtXG6H2OkxqchHoM/BQDtro
 UE1oeEOf0+0p07Dn46pgxiv1oi6QRxWVocc/bV1omL0LeP8Vk6AaRPcgIg1XadFfwNxQ
 a4A3Nj9TQ6v7XevbOesi8PUeMrJNFLymqjRuRT8AAFyIkYI8YhcvES0gHiBj5VmXbiTC
 tjwpanPKXmij/wYgWOFyZZm/9ZqDu6/hf2bUQbCZ4giQtu+mfcKmdFZ9U82lUCNdb8lN
 cFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KEOUVkLXF88QHPCVWTmHvz1cvdcTGgdnYVNwsG5Ic3U=;
 b=gOb+dY18zmghbuuPnzMBWumvggyQYiWyBaGs22QDa1cPCluCsXL9e44gxCSGxNhGlz
 +6whVMLMoer9k+Ys4Z7E1oZtrM631v3n5aA27MPFcJgKelCCWYfZKU5WDR9BVryraRmA
 pk3WSl3SG+aqLSlFh8SiUynKJ6VMYMqscZgz2L5+y3RaJTXwA2ff9Cu24FoFuynZacyQ
 fRRg+jga/7hf91ecPb6ofy0/QLq2hweqSNHGomUG7ROS+quaQua8vlD/8ztJWMh1ooO6
 IDkMiRLmxJSOWFnHeF8GPTTXakwJFBMlfBa+1GtSkcpiAlIeh1REFyPrcioqYT4sV0mv
 f9kQ==
X-Gm-Message-State: APjAAAU91xYUsGgcsna9qiYCzenTAhedg6e4/8MqcqEWZEN7t8LIsmx0
 Ooopht25Wb/3NBWjHZHV6vk=
X-Google-Smtp-Source: APXvYqy+cbTY0Q6JBerzREdEGLEN3f86F65GORk03GMDQsayFdLYQinBFacdkOmA5/tQs1BY+5oL9g==
X-Received: by 2002:a17:90a:23a3:: with SMTP id
 g32mr952116pje.134.1579954506543; 
 Sat, 25 Jan 2020 04:15:06 -0800 (PST)
Received: from google.com ([123.201.163.7])
 by smtp.gmail.com with ESMTPSA id f81sm9369124pfa.118.2020.01.25.04.15.03
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 04:15:05 -0800 (PST)
Date: Sat, 25 Jan 2020 17:44:59 +0530
From: SAURAV GIREPUNJE <saurav.girepunje@gmail.com>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH] staging: greybus: bootrom: fix uninitialized variables
Message-ID: <20200125121459.GA2792@google.com>
References: <20200125084403.GA3386@google.com>
 <20200125100011.GK8375@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125100011.GK8375@localhost>
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25/01/20 11:00 +0100, Johan Hovold wrote:
>On Sat, Jan 25, 2020 at 02:14:03PM +0530, Saurav Girepunje wrote:
>> fix uninitialized variables issue found using static code analysis tool
>
>Which tool is that?
>
>> (error) Uninitialized variable: offset
>> (error) Uninitialized variable: size
>>
>> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
>> ---
>>   drivers/staging/greybus/bootrom.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
>> index a8efb86..9eabeb3 100644
>> --- a/drivers/staging/greybus/bootrom.c
>> +++ b/drivers/staging/greybus/bootrom.c
>> @@ -245,7 +245,7 @@ static int gb_bootrom_get_firmware(struct gb_operation *op)
>>   	struct gb_bootrom_get_firmware_request *firmware_request;
>>   	struct gb_bootrom_get_firmware_response *firmware_response;
>>   	struct device *dev = &op->connection->bundle->dev;
>> -	unsigned int offset, size;
>> +	unsigned int offset = 0, size = 0;
>>   	enum next_request_type next_request;
>>   	int ret = 0;
>
>I think this has come up in the past, and while the code in question is
>overly complicated and confuses static checkers as well as humans, it
>looks correct to me.
>
>Please make sure to verify the output of any tools before posting
>patches based on them.
>
>Johan
I used cppcheck tool .
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
