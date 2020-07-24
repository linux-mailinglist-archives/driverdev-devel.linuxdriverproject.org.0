Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB122BD37
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 06:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D92D0883D4;
	Fri, 24 Jul 2020 04:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hs8oEXbq1U+I; Fri, 24 Jul 2020 04:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3DD487F92;
	Fri, 24 Jul 2020 04:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1059C1BF860
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 04:55:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 093A486DD3
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 04:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fpoIFZUFJ9U for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 04:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C02386D6C
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 04:55:36 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x72so4433618pfc.6
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 21:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KUGNez/yWopa8M4UAQie5p0SRU+rtQXbmfcJhAwjSGM=;
 b=CEaUzU2EjHIwmifpoC8w8OUjKejbZpPX8tEpSvaNf4GlZg5HvvwFlKZPKCWmM5MW9d
 A7gWfHbBmuvVFEVf1o46MyUDuFit7u171Ix8YkMpP36Y2YpAk80OADX2LmGRxWEDegUk
 pud5poFOjlIA3ZpMviJZVvgQ9Nt6/3I5dvdhJgPHWFgyu5u0HCSOuLe/4J2O+yHva/p1
 CdPJQBBvagjM7kvZsaAmNBek+hrDjEZgvBHhZNZT/CtEugT2+bK+Y9wcmO9F5QeXdARG
 l8SXXNEVrJnq2E6C5HKm7rNUN8Shn9X/+m/yibD/XUt1BLF4rmAZ8xJ0V2ZFnQUjs14J
 wb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KUGNez/yWopa8M4UAQie5p0SRU+rtQXbmfcJhAwjSGM=;
 b=OoN37Jf2LAQPlkXsKXhrGt3cWjQixqCT1pfC2UKQSdxXkZD4J3KZK6TlVqiBsK5MIO
 Yhgtcl/5JgKgIIm4tztyzssRh3L1bgBpq0uWCE8SvWGN3C5MatyLoMxvK6l74UrZmpQn
 sI9+x+n9voPK4+83G/O6hHtCh/IiMV6vlFe29hE4OeeGFyafXAtKvNocZoNGwMBDeLy9
 l631O7v9u7u+tz8a8jgKgEdlWpRGvZvPk3p/qnXG5jCqImWYzXIxPuVAq4YQglrCH4sn
 gnm41CqumwBxfra1CxuU8V6jfjkQlLWUoj8JjhijJ5DJS2fgb75ABNoHgTXZyOIa513i
 zUEQ==
X-Gm-Message-State: AOAM532I8E2dWPotMYhETU1GWNq/nQhPE96wDhyoVckgIh1RBYGExxCK
 snCZtEdpJSRxGyLct8Z8vME=
X-Google-Smtp-Source: ABdhPJzSb6kQbM7nhLKTe82S3NZF7tl8KSfjJbnc9LBLAHDV5k1rjkBvaow9A+Vrbbjb0BJA5xubeA==
X-Received: by 2002:a62:be06:: with SMTP id l6mr7415859pff.310.1595566536039; 
 Thu, 23 Jul 2020 21:55:36 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id z2sm4602328pfq.67.2020.07.23.21.55.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Jul 2020 21:55:35 -0700 (PDT)
Subject: Re: [PATCH] change slave occurence to secondary everywhere
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200723170618.GA2835510@kroah.com>
From: Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <d666ee4f-fe5a-e41e-0c67-6c29be14a048@gmail.com>
Date: Fri, 24 Jul 2020 10:25:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200723170618.GA2835510@kroah.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 ac100@lists.launchpad.net, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 23/07/20 10:36 pm, Greg KH wrote:
> On Thu, Jul 23, 2020 at 08:45:13PM +0530, Rohit K Bharadwaj wrote:
>> changed usage of slave (deprecated) to secondary
>>
>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>> ---
>>  drivers/staging/nvec/nvec.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> Odd subject line, you should follow the other patches for this driver:
> 	staging: nvec: one_line_description_here
> 
> Also, you need to version your patches, this was v2, right?  Put below
> the --- line what you changed for each version.
> 
> v3?
> 
> thanks,
> 
> greg k-h
> 

Thank you so much for the suggestions sir, I have made all the necessary changes and have submitted the patch again, I apologize for any inconvenience caused from my side.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
