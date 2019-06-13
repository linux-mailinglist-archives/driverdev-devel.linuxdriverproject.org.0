Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C5643411
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 10:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 336D622744;
	Thu, 13 Jun 2019 08:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKuJq15xQYZq; Thu, 13 Jun 2019 08:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 472EE2150B;
	Thu, 13 Jun 2019 08:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0D2E1BF575
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD4EB880D9
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NmoQIzn1kwwm for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 08:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43F4588091
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 08:23:25 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w34so10489465pga.12
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 01:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mC37iGYkz/KnCwgaUWXwNAlrVRpysj6kTm4UL+dIeuU=;
 b=d9jxUoFW3q3sCMRI3Ox9cx1cgtuz2ZqEYAChookdIqeclBICLv4RHWAHi1frYkPYSy
 xIASABpYW7JvyH3EvRntf5QPfBXg8A/kDZBho3EHL//tlwEUekR58RgIdqiS0Vpd1P+O
 aMGsRvzaIJ5taIlye8fO58LRSlgYfyrNZYoT2kNiCDTCsxdjUaVOuzLRAPBve5kHV6fh
 BxYDNm67HdPgQLw7FMrscrdTLUkR24DE7DhC3vNTygJq/KmsaE6rt73YjdrIG9xn5gq/
 jeYQVekoFxgkdM3vsCdBehGg1GLEc6N07LrkqgDCak+W7Dndeoy3V2VC4m1hjjjVyBk3
 DrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mC37iGYkz/KnCwgaUWXwNAlrVRpysj6kTm4UL+dIeuU=;
 b=ACaxWjSjDHb1ujITw9Enb0MEp6yshUZ7UcjVK/eYbqfhFGpnyIVZ+Et9Xnf1Lr5og8
 XDC/XOf4zhdCLIMCBbIJOOaV7hlAAsvptyOANtOTfBlN+85Q/0iRF9z/14VC7WR+T4/4
 HehvyzdBoKCoNtloqbwelChPXKKxZfnIMm87CVzfOWE0WzHk65mw4lsoEqWRjPoRjLmH
 0g4mlUCwjs1oeb/+H4Br6PkfEDYvCDqbtR7F6q00pCrk0T/tsIoIB9FiQo5nTJHeq52C
 Jm+l9Dndp+PY9WzFHftx4ozwAChFoowwP9HTvgCQXb6crUtN/8wZAGA4Rdx4VvkOwL4L
 FZvQ==
X-Gm-Message-State: APjAAAVQqBej5Y8OSgCdmAODgjpufoboWMzEwit49mDcqty62Q5NjKYn
 u4xh8CQatHLoJmr6EUcihVXxi+ob
X-Google-Smtp-Source: APXvYqx00gYU5ytCfWQJxSc676otPWH1znCL966cor+IEdxTPSnxB2AiZ/jiEPE0fY4ZA/ErbIHtsg==
X-Received: by 2002:a63:224a:: with SMTP id t10mr20336041pgm.289.1560414204681; 
 Thu, 13 Jun 2019 01:23:24 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id g15sm3579074pfm.119.2019.06.13.01.23.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 01:23:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 01/11] staging: rtl8723bs: core: Remove function
 eeprom_read_sz()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
 <20190613064513.GA28930@kadam>
Message-ID: <82013631-fb3e-ca52-a07d-91f50beb4263@gmail.com>
Date: Thu, 13 Jun 2019 13:53:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613064513.GA28930@kadam>
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

On 13/06/19 12:15 PM, Dan Carpenter wrote:
> On Wed, Jun 12, 2019 at 11:34:29PM +0530, Nishka Dasgupta wrote:
>> Remove unused function eeprom_read_sz.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> 
> This is great but you need to remove the declaration from the .h file
> as well.  I noticed some of the other patches have this problem as well
> so please check them and resend the whole set.

I'm sorry, I couldn't find the declaration in any .h file for any of 
these patches, even after fetch origin, rebase, and grep. Going to 
individual .h files and searching for declarations does not seem to work 
either. Is there any other way I can look for the declarations?

Thanking you,
Nishka

> regards,
> dan carpenter
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
