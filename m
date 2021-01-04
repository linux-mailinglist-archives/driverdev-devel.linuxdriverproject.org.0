Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 739372E9E3B
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 20:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2194203D4;
	Mon,  4 Jan 2021 19:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHcmwWBHimKn; Mon,  4 Jan 2021 19:34:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EEF7203BD;
	Mon,  4 Jan 2021 19:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4DCBE1BF475
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 19:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27D8D203D4
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 19:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yvbFwX00w1mi for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 19:34:01 +0000 (UTC)
X-Greylist: delayed 00:07:15 by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 0203A203BD
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 19:34:00 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id k10so299193wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 11:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=zlYOoCP2KeS5rsd6N/e1bDca0BEkLEHT4wzXVG88LdM=;
 b=kJhRWK/eTp92NI4tUr3YSjM18slZZx5RQQ4Sc4Td7/eQBapWvNkxoZgO1oQd+hH8Sg
 aIzpKmRBBsNtdIDVkAeqUQ+RMZjylC4BzoJ8r5JsZpCdXLox7h3koe/Z+0zRpYmfbj64
 GLePuNR4ip3/3aTDOqvhh7GY83pAzMLjS+XznO1ikGX4zN9GGObz0KSqxgBu+ftvKQXv
 rygbdWx1ZrjwfOfT6Ggr82lBXK662bE+10MfP4jnzK9nZGPbTcVwoYQTB8ulAbFmgY7I
 NOd/2b96VblpIGMo97Jptsdn+ABovfeUjr4oTr//blkbRkeqhjYnaPIUcgqBllOY+Hwl
 xuMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=zlYOoCP2KeS5rsd6N/e1bDca0BEkLEHT4wzXVG88LdM=;
 b=CHUzniY0r4ixeXXY6yMr0kj6Ax8PGkwW/w6Z8XSIv7yD3r6GiBaplS5W9+xVymAqQY
 Q8Zd1MxZvV/JSWgP2PuGK5k4+LV3jjlXnCANAK0W8GKLfrhHEWwbzvPysbeCubUImSTv
 /JAMS8M7M03SNNrB39SSLrMzCPoiVZt+PrGVac8oYtst9P5xEqOMNsDaWmn7e+pej5Ke
 tidL46TNEqJzLrdAl74Ca1/QmUajiRfg49ESaq7vd0zLeO1+/arL9vUsvPBBuEdpa398
 jiTSFgfrJaiLZF3Ie4muvNFpTuzXwlOYxXJMpD3b9QxfzQUm7gryn//SQ8yHx5dnTChM
 xLVg==
X-Gm-Message-State: AOAM530dbXdJRPAHB3aQfNXisDrFUAFMJlp3u5Nsb2AC0vXtcT9CRmur
 WMGSrVrFyFEOrV/QuM35XDOWyM2z/y1TCA==
X-Google-Smtp-Source: ABdhPJxyA+JbQ40GqNyosnml8ub0MTOqLE6j983sanmqP2SfoMeDCSZtALuvXCz2vDTRN1vuHGoCsw==
X-Received: by 2002:a05:600c:255:: with SMTP id 21mr330772wmj.69.1609788404350; 
 Mon, 04 Jan 2021 11:26:44 -0800 (PST)
Received: from PhilsPB.lan ([86.12.200.143])
 by smtp.gmail.com with ESMTPSA id u5sm28258333wrr.32.2021.01.04.11.26.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jan 2021 11:26:43 -0800 (PST)
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com> <20210104183134.GV2809@kadam>
From: Phil Elwell <phil@raspberrypi.com>
Message-ID: <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
Date: Mon, 4 Jan 2021 19:26:42 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210104183134.GV2809@kadam>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 04/01/2021 18:31, Dan Carpenter wrote:
> On Mon, Jan 04, 2021 at 12:09:27PM +0000, Phil Elwell wrote:
>> The addition of the local 'userdata' pointer to
>> vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
>> WAITING modes are used, in which case the value provided by the
>> caller is replaced with a NULL.
>>
>> Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")
>>
>> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
>> ---
>>   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> index f500a7043805..2a8883673ba1 100644
>> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
>> @@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
>>   	struct vchiq_service *service;
>>   	struct bulk_waiter_node *waiter = NULL;
>>   	bool found = false;
>> -	void *userdata = NULL;
>> +	void *userdata;
>>   	int status = 0;
>>   	int ret;
>>   
>> @@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
>>   			"found bulk_waiter %pK for pid %d", waiter,
>>   			current->pid);
>>   		userdata = &waiter->bulk_waiter;
>> +	} else {
>> +		userdata = args->userdata;
> 
> "args->userdata" is marked as a user pointer so we really don't want to
> mix user and kernel pointers here.  Presumably this opens up a large
> security hole.

It's an opaque, pointer-sized token that only exists to bereturned to userspace (or not,
without this patch) - it's hard to see that as a security hole.

Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
