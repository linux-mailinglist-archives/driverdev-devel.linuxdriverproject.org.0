Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A21C9F1E4
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 19:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E44C8852C;
	Tue, 27 Aug 2019 17:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ln-em-ZQ2VKZ; Tue, 27 Aug 2019 17:51:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F34FC88407;
	Tue, 27 Aug 2019 17:51:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE82B1BF2AF
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 17:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB30388407
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 17:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QeIfXuJJpRps for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 17:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D829E88363
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 17:51:52 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id q12so19660017wrj.12
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 10:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=PSPns5WfCYFgrREtP7j0ef3CbxP+J42N6/4rZx+AOlA=;
 b=G/StDyb6ergta01LSC6BmncNMDcj6ApnBvKU25kZfq4u/2Qf9LKHGH6u/hkwbkewJt
 WH9FGuia1PTQHk+77U6mCwZD5vDoKQFa5x/fHMtmha4XIXHEbxzxM4NSKljlagW6BWAZ
 qCtlD1+ZpBpZBZaxhdBXm1m/h6F2Jj+Gw9GOXC2lb1UXxCfqLEa3MQbnpwJ4+OehNsyo
 clFcegJ4sFZHRpTvgmDm5+ojxGTM4xlGoCyypeHcBL/5MzoRfNJ2ZROFC484mk01OwoS
 DPhPRPrBM/DOfpHR4FIs06WWmu2vl7jOFOJnxxe5Ez4SlYbj3FYnHbtPnzKxQE43v2hz
 a5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=PSPns5WfCYFgrREtP7j0ef3CbxP+J42N6/4rZx+AOlA=;
 b=MQYB+L7PnIPCIJFNebap1vP/jPwUwWXx+txtaNJJO2tGJj+W6pGYtQHMaGmgnJ/wgL
 +cLXreFNMw6SwOX5CYHp7hJgTaU6ra/cyx5CpmrvJ1S9xziKpCbQWd7a08lNt5ld5xV5
 fc5kf9FJH/xv8qH2pOBN5ALl4K/1oTNAQS7T/J0mLHdDHO238UTTesEP9j/Nr8nlb6pN
 /Eggm3HFt7DBKFkGSj65DHoOTIhce0r7IW9YTQZVsylAQ6xYp8cQeY09wp7b6ZwY6/BH
 w0rglts7A9HRlEEw1+dAu7Cqb4wws3UuuE+4AQ0Yk+kt/YQMHMPdJbr8ZBTugo2kbq3h
 d0Hw==
X-Gm-Message-State: APjAAAUpQJilwIhyYjDHYHIX1MyRZN8OS+8RUfkVcQH2TWi6NzKNpq++
 h38mMqL/aItve9P6txKx7Mo=
X-Google-Smtp-Source: APXvYqwLmXHdAI5yY/HsZBGbUjy8vQvXD5Ap3DN1vHmVCPd6SuXA4lLDcg87p+Yj7KPIb3ROjfp22w==
X-Received: by 2002:a5d:698f:: with SMTP id g15mr32511329wru.310.1566928311271; 
 Tue, 27 Aug 2019 10:51:51 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o8sm215933wma.1.2019.08.27.10.51.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 10:51:50 -0700 (PDT)
References: <20190827155302.25704-1-rui.silva@linaro.org>
 <c73e68a7-2a70-724c-0b70-f922682828c3@ieee.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Alex Elder <elder@ieee.org>
Subject: Re: [PATCH] staging: greybus: add missing includes
In-reply-to: <c73e68a7-2a70-724c-0b70-f922682828c3@ieee.org>
Date: Tue, 27 Aug 2019 18:51:45 +0100
Message-ID: <m31rx67az2.fsf@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,
On Tue 27 Aug 2019 at 18:22, Alex Elder wrote:
> On 8/27/19 10:53 AM, Rui Miguel Silva wrote:
>> Before moving greybus core out of staging and moving header files to
>> include/linux some greybus header files were missing the necessary
>> includes. This would trigger compilation faillures with some example
>> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
>>
>> So, add the necessary headers to compile clean before relocating the
>> header files.
>
> This looks good to me; I trust you compiled it.
>

Yeah, in the staging and in the new location to make sure it
make the compilation issues go away.

> There is one extra
> blank line you added in "operation.h" but that's not important.
>

Right, I missed that.

>
> I don't think what I've done here serves as a real review, so:
>
> Acked-by: Alex Elder <elder@kernel.org>
>

I think Greg already queued up this one in staging-next,
nevertheless many thanks for the acked.

---
Cheers,
	Rui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
