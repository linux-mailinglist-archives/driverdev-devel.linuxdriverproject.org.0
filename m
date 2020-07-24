Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD3122C97A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 17:51:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C513885F4;
	Fri, 24 Jul 2020 15:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7ClRK7GsrB5; Fri, 24 Jul 2020 15:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1F0687CB6;
	Fri, 24 Jul 2020 15:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5BD1BF39D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 15:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 584CE87ED9
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 15:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6uV2mwuIzlwR for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 15:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5BA287CB6
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 15:51:53 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id x9so4673187plr.2
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 08:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1caOJyn2zbLAKcDiu3mrOFQu1qs9jpF03W2/Gj2Y0nI=;
 b=K6C0N2vE8/nn7p2q2KtKMz4OGJeY8xB215pP67IUgbKWw4ZWU/wIItq4bZ0qrOKUhy
 ARfmjTOLjpwtc7KTry9dGBYVrziGLKIWeXZ6s3jCmiWW3/ZQy0ZwwWzFjUrRn71q3FiI
 KFlKwTEkTWm8i5pw4wT1Jzh3ZYcRJYbGxgUcMIkkrXditdR+ie0ifKOUG9LhDi+sjEwo
 XQNoBF/En013xj2zxy53nMb3JhYIMAW2hxrEiCsSYagD5rCKgnqXRYWpL14H4A613ehz
 HP6kNqcRkgAXQ3bm6lsT40JeHCOa3JPZy1IWyUpOwRFfkSylYwhNcnM+Nn7t1rELsUWR
 +mxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1caOJyn2zbLAKcDiu3mrOFQu1qs9jpF03W2/Gj2Y0nI=;
 b=D0BWyJlMn2ybwd/FtU0mCt2W64T57ZQNpG8sa7bMZ6hV++Zdfb2i4GuJq4pRoSJOpy
 E8bNiu8Pdcm5Ew5jP7wAfFDdXqy6pD3gwE8C6xRvPHq4djvZl/vbxIJZV5WJag95bhqG
 z0V1rcOJ8jvG9hBZX0vGte0xy6UogRl2Q+PXywAGMs805u0xTqkMjPdpRbKQPDpDr8TT
 ZTSpFfVHJEB5jfUI7q+eqtbuDHI8ML1wSQEd7BW84hyvnDLKh2+P7umqsaIi/kkKHdUq
 EiTiVH3+3jymgBOr9WRJQK6fZUtEgEhjklttdvcWKUrMUitXbGCGXq9KYUnLg1vouixv
 Z3lQ==
X-Gm-Message-State: AOAM533OpQsqQnWDrmp8q7lixA8WXGrZE5NcsHH6hiWpgllBxY8kLIcc
 XU1MfxvIC451gARmHDbUHFU=
X-Google-Smtp-Source: ABdhPJz1C47dmE8pVOeUs51Q1QxcGxetVALh7VcI/sk2mkXGP7D9s1AmUNdmdY71LKXDpS7+HL7vmQ==
X-Received: by 2002:a17:902:7787:: with SMTP id
 o7mr8838621pll.327.1595605913215; 
 Fri, 24 Jul 2020 08:51:53 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id n63sm6786713pfd.209.2020.07.24.08.51.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 08:51:52 -0700 (PDT)
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200724140947.GW2549@kadam>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <79c59734-d4ed-7968-5c9d-17d0ffe37b73@gmail.com>
Date: Fri, 24 Jul 2020 21:21:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200724140947.GW2549@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, marvin24@gmx.de,
 p.zabel@pengutronix.de, linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/07/20 7:39 pm, Dan Carpenter wrote:
> On Fri, Jul 24, 2020 at 10:06:34AM +0530, Rohit K Bharadwaj wrote:
>> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
>>  	platform_set_drvdata(pdev, nvec);
>>  	nvec->dev = dev;
>>  
>> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
>> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
> 
> Sorry, I should have looked for v3 at the start to reply to it.  This
> line will break the driver.
> 
> regards,
> dan carpenter
> 

Thank you for your review sir, my intention was to fix kernel coding style issues and hence had picked this one. 
Could you please let me know whether I should undo that particular line and submit the patch again so as not to break the driver? 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
