Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D4127AD00
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 13:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB61D20130;
	Mon, 28 Sep 2020 11:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TJZavR6ILFd; Mon, 28 Sep 2020 11:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E8002012D;
	Mon, 28 Sep 2020 11:38:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BEB71BF3C1
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 11:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0252786FB7
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 11:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1aUARdhubaH for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 11:38:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F203486FFA
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 11:38:04 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k10so934271wru.6
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/DSfl3PhmxyqK4cCLrMlHEsrYZk0SosXscE+a3oAY9s=;
 b=BKUXY08CAONse8WpQ7sUrmd1q/uBCMq1YsJ7kY2YHySsvfSynLm2E6t5oCMCNvBn2T
 V4kwJbsEvli/SsBH76PZ7yPrZZ+nOkqXa5wFpaDpSt3EVO95vRFKVDEcRupq1zSENVb0
 L6inXyTM8LbbJyYQgch0NOpYZ23Yfo2agilZtogNs3qd4r9kLZqk7pOsAVu9gJtAQOP0
 ec6FQQWIk+srdEQdJH3nEMM6XyGzZaHgBRDDrzcGVoiWMllGCbeEIwrOiMj/ceNymZ1A
 oJpP1+GJ2hKsSURadWl+NIetcMzZMmtoSLAgskc/RKuJlRNzarujyV7A2TAUGtFdZQLg
 aszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/DSfl3PhmxyqK4cCLrMlHEsrYZk0SosXscE+a3oAY9s=;
 b=M7gAL49lCMb5zetnUKKLcHCDCqWtXO9OYgk1Eto5MMBeJRBlT4n1LVP9TE3ypqf4FO
 eOAV4ijQpLa/zf4I7OUNjfAM4cZjSFRDEjJ25bMQEPNiCRgbbLDbS/V0+7k6KwH2BOP4
 tE526a/Oq64w7sBTdytve/G6YGGyMTp270du6DGqoww5lb8dlG6FybpM6dXMkrNQ5s0u
 zhF5w+SYflDCy5HZaQizGGUGetn9WGGMWOBh8R6ZhHxHzHnMA8TUtovewS3ACf9rWp/P
 wKpwf/FSecr+yusa7IthLF+WYOG93BHdnnIoC/uPkIEWTPtyyWrsX2guIKSMiIut/Ehy
 Ebmw==
X-Gm-Message-State: AOAM531T3luofDn6P6AOJ52fYFIMe1uXEy0cOQnregCxiGM/y6XufTEb
 IYi0YnaFZyc0mXw9I9KlGQQ=
X-Google-Smtp-Source: ABdhPJzqVbAgm8Mpq/f7Lw5cB88wTQXRr/O+Mg6pfxX0WJsJ3kspBzf3nQPqzm47Ga4SBXFb3SkYLA==
X-Received: by 2002:adf:ec92:: with SMTP id z18mr1317347wrn.53.1601293077673; 
 Mon, 28 Sep 2020 04:37:57 -0700 (PDT)
Received: from [192.168.1.211] ([95.144.134.217])
 by smtp.gmail.com with ESMTPSA id r14sm1028721wrn.56.2020.09.28.04.37.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 04:37:56 -0700 (PDT)
From: Dan Scally <djrscally@gmail.com>
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
Message-ID: <060b458e-66ee-ab22-5c4c-c8e04affff7b@gmail.com>
Date: Mon, 28 Sep 2020 12:37:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917103343.GW26842@paasikivi.fi.intel.com>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org,
 andriy.shevchenko@linux.intel.com, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 kitakar@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 davem@davemloft.net, tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17/09/2020 11:33, Sakari Ailus wrote:
>> +		sensor_props[3] = PROPERTY_ENTRY_U32_ARRAY_LEN("data-lanes",
>> +							       data_lanes,
>> +							       (int)ssdb->lanes);
>> +		sensor_props[4] = remote_endpoints[(bridge.n_sensors * 2) + ENDPOINT_SENSOR];
>> +		sensor_props[5] = PROPERTY_ENTRY_NULL;
>> +
>> +		cio2_props[0] = PROPERTY_ENTRY_U32_ARRAY_LEN("data-lanes",
>> +							     data_lanes,
>> +							     (int)ssdb->lanes);
>> +		cio2_props[1] = remote_endpoints[(bridge.n_sensors * 2) + ENDPOINT_CIO2];
>> +		cio2_props[2] = PROPERTY_ENTRY_NULL;
> I suppose the CSI-2 link frequency is generally encoded in drivers in this
> case. A lot of drivers already check for those, could you add the
> frequencies here as well (as they are known)?

This one caused me some consternation; I mentioned in a previous email
that I was overwriting the v4l2_subdev's fwnode directly because I
couldn't reprobe() the devices after changing their fwnode. Turns out
that's probably not ok, because as you point out there are some drivers
that check for properties in firmware as part of their .probe() call, so
they _have_ to be there for those to work (including ov5670, which is
the canonical ipu3 driver in the kernel docs). imx258 and ov13858 are
also affected, and I'm aware of at least one other driver in development
that would be affected.


The problem preventing the reprobe working is that i2c_device_match()
relies on a device's fwnode having acpi_device_fwnode_ops to perform
ACPI matching, so after giving the device our software nodes the
matching just fails. I thrashed out a way to make the reprobe work, but
I don't really like the solution so I wanted to talk about it. The long
story short is; clone the driver but add an i2c_device_id matching the
existing i2c_client's name, then use i2c_add_driver() to install it to
the bus before calling device_reprobe(). This does work; it makes the
devices reprobe cleanly at the end of cio2-bridge's init, but it feels a
little bit hacky. Any thoughts? Or if it makes it easier to discuss, I
can just post the v2 containing all the changes that people suggested
after the v1, and showing how this reprobe would work.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
