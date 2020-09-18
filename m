Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8744F26F7B5
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 10:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 200412E1ED;
	Fri, 18 Sep 2020 08:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjc0KAVMUhva; Fri, 18 Sep 2020 08:09:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9F4E22E1E1;
	Fri, 18 Sep 2020 08:09:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E59121BF3FC
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E21568539A
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 08:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1f1JG4vmszln for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 08:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1C1DF8535F
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 08:09:41 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so4400628wmh.4
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 01:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=gIrm1k0wpBO+eG/xwOUwVK1CI6UvN3iLydbukNax9ZE=;
 b=jtE79XAVK5733uuedxsF172ExqK61Iq/tIYkEbK22R/GQJ15ULvPNA88TJx4Vg5kxu
 dUOVOh1VWe5yU5c6fdiBHZmu8RcVYTmnMg8IHx4SCoTxkhERu4iiuBilqG/KDHirNoQ8
 aXSI0aqdZmoM28b9brmY/VnOPfT5hpMtG7ensFCr/wHab8o0RxrYFpa38BqagGuO0OD+
 z88WHZ+Xe+uvPLQqr26relcJxObDz4Kvi+54kCUNrZbLCZEhsWJOQV3bP/Ics+Tt5+5H
 r1jy7C6RrgAVW0/4GpibBZ2vwT9nP5Lwtt+8dUpF2rTKEYLOLVWBxvGhDT2a2b0yI4+b
 gwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gIrm1k0wpBO+eG/xwOUwVK1CI6UvN3iLydbukNax9ZE=;
 b=ISia0lUqZYT5OiRzFkPXNQm7iiPgt/uV5nmYeuH/w4VYTHbzKmYruzxLnbr7okjTzX
 B4tUXao0BQUR3HGLu1JGGcu/gouzGBtd5uq3MuA2+fcvTpmErdjJicrjumfSRsMfp3jo
 4tKhxyzXMw7NUIyb4C1M0lKNGLS+0fvDem/RqiYpqXFQ90qstG7PlkHXnJVpKJwj4+LD
 Jg7vbRSaMJuWZJp/KW7wd3Fo5KXlp1I2kHG9MSOI0m2/+13JjzCUJNkf0BSeMwiZ1L04
 tSJHQB5BSiEMbSdGj8q160cfxDqfpkGxTsvz4X4McDNtX0ZMChxLHd3ZrCGN02OqD0RG
 0Srw==
X-Gm-Message-State: AOAM530hCacEMyLq9Z05p02ZzwG75qoD6SAegL8cXKMD0+8ICHr668yn
 sDgCa6e9Ms9NcMMZZs5HFus=
X-Google-Smtp-Source: ABdhPJxJ0IwUFY6Xv/t+mR5ajPysGzi/rS/mCDNnoE1QdqD15G5LwitAj581stJGotZV+zRvcolD5g==
X-Received: by 2002:a1c:bbd7:: with SMTP id
 l206mr15100540wmf.185.1600416579489; 
 Fri, 18 Sep 2020 01:09:39 -0700 (PDT)
Received: from [192.168.1.211] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id 63sm4053820wrh.71.2020.09.18.01.09.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Sep 2020 01:09:38 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200918080335.GT4282@kadam>
From: Dan Scally <djrscally@gmail.com>
Message-ID: <e9d19d97-7733-04aa-2c61-e7e367a97baa@gmail.com>
Date: Fri, 18 Sep 2020 09:09:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918080335.GT4282@kadam>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 kieran.bingham@ideasonboard.com, linux-kernel@vger.kernel.org,
 kitakar@gmail.com, sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
 mchehab@kernel.org, davem@davemloft.net, tian.shu.qiu@intel.com,
 yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ah, shoot - good spot, thanks

On 18/09/2020 09:03, Dan Carpenter wrote:
> I ran Smatch over the code and it spotted an off by one.
>
> On Wed, Sep 16, 2020 at 10:36:18PM +0100, Daniel Scally wrote:
>> +#define MAX_CONNECTED_DEVICES			4
>> +#define SWNODE_SENSOR_HID			0
>> +#define SWNODE_SENSOR_PORT			1
>> +#define SWNODE_SENSOR_ENDPOINT			2
>> +#define SWNODE_CIO2_PORT			3
>> +#define SWNODE_CIO2_ENDPOINT			4
>> +#define SWNODE_NULL_TERMINATOR			5
>    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
>> +struct sensor {
>> +	struct device *dev;
>> +	struct software_node swnodes[5];
>                              ^^^^^^^^^^
> This needs to be 6 instead of 5 to prevent memory corruption.
>
>> +	struct property_entry sensor_props[6];
>> +	struct property_entry cio2_props[3];
>> +	struct fwnode_handle *fwnode;
>> +};
>
>> +		nodes[SWNODE_NULL_TERMINATOR]   = SOFTWARE_NODE_NULL;
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Here.
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
