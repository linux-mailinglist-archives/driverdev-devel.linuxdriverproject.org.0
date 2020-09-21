Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A4D2725A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 15:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21AFB20532;
	Mon, 21 Sep 2020 13:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5g7z8VuCPJk; Mon, 21 Sep 2020 13:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 449412051C;
	Mon, 21 Sep 2020 13:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 751CA1BF376
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 13:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6AD5886084
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 13:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M5EUsczVDY-G for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 13:34:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5FD185624
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 13:34:00 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id k18so12708436wmj.5
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 06:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=PSlR6UEl0k2mghvqxd0Ilre5cll+vxg1D9fFnWV554k=;
 b=rgQgX6qUkRAi0UCi/mtfzJqE/csdkBuY4H2g5YPpJn3xtwt1X7JxJAi+3wprjmcKZC
 aHgWow6pFeJQzhXjl/ZYmeOsOU/iyCw+Dw9oySAPctYk3EBKE9TcRi0YY/BFKbFKPTpU
 9u0XpcCHQcywy13FSP0L39aabKU5+xvApYqLigXc/mXSJ9fg+4W3AFZdCFiB1/RUEjO4
 RkGZfN3RixKgV1NxUKprEFYmKv/xzIDZ9oV9zuRM6Nutj8UcYbgKSMvNxHRHAmTEwFRn
 EyzXLbQpI6jLExIj44MTLDNuUW695bYoYRdiNGO5lYb/Sx0k8GF95BtkGQo/YQmvoRQ7
 Rdww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=PSlR6UEl0k2mghvqxd0Ilre5cll+vxg1D9fFnWV554k=;
 b=FcqV99iSrdEFy6qW+O9WLNOLYN/ImMzZYVJBkT9HD08AXTa6tbOvGZWlQPWgABzCUc
 OkbI3s+pvGXHwP8Hi9k9EZ92nUd9ea76CwxTOGvhr/02hidVg4tmlOE8GVa5Rwba6zas
 QBmkHbr5HUe3gwOmEOXMIKa+FTwmxIXnBlgAgyGsc6jOxDobj8TpwklG7P+sbZcZgapR
 DBwpLvPRmoOv9Gr+baZjbukvAdiyNt+kO0ddM+mNCuWqIaFqjm+q1CHGbKDidjWxG6sP
 2agg2WBJ5rQkfIZinhLpzYmZW5lhu45G8lavn5Jaq9Ev3oyzL1eS0OwHb0DSkQ6H9xEm
 YLeQ==
X-Gm-Message-State: AOAM530UaZ/zR3miA9FtB5advOULqr0dyfVuhkr/0Nh0U+Tw3peNoukv
 VVQmVrrVQBLEsNyOCbmbvJg=
X-Google-Smtp-Source: ABdhPJxs7SLQzpL7shi76iakBUBJaNASPqq5USxGQbR2ll5qMDRJbC8+U5kFag9gl1ppteY3tamIVA==
X-Received: by 2002:a1c:9a0c:: with SMTP id c12mr30789130wme.85.1600695239140; 
 Mon, 21 Sep 2020 06:33:59 -0700 (PDT)
Received: from [192.168.1.211] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id d9sm13017803wmb.30.2020.09.21.06.33.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Sep 2020 06:33:58 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
 <20200918075157.GF26842@paasikivi.fi.intel.com>
 <20200918130739.GA3956970@smile.fi.intel.com>
From: Dan Scally <djrscally@gmail.com>
Message-ID: <66e33cd5-6c1e-310a-61e8-6cde720ffa19@gmail.com>
Date: Mon, 21 Sep 2020 14:33:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918130739.GA3956970@smile.fi.intel.com>
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
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 kitakar@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 davem@davemloft.net, tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 18/09/2020 14:07, Andy Shevchenko wrote:
> On Fri, Sep 18, 2020 at 10:51:57AM +0300, Sakari Ailus wrote:
>> On Thu, Sep 17, 2020 at 03:45:14PM +0300, Andy Shevchenko wrote:
>>> On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
>>>> On 17/09/2020 11:33, Sakari Ailus wrote:
>>>>> a module and not enlarge everyone's kernel, and the initialisation would at
>>>>> the same time take place before the rest of what the CIO2 driver does in
>>>>> probe.
>>>> I thought of that as well, but wasn't sure which was preferable. I can
>>>> compress it into the CIO2 driver though sure.
>>> Sakari, I tend to agree with Dan and have the board file separated from the
>>> driver and even framework.
>> And it'll be linked to the kernel binary then I suppose?
> Solely depends to your Kconfig dependencies and declaration.
>
> From code perspective you may do it before enumeration of the certain device or
> after with reprobe.
>
>> I don't have a strong opinion either way, just thought that this will
>> affect anyone using x86 machines, whether or not they have IPU3. I guess it
>> could be compiled in if the ipu3-cio2 driver is enabled?
> Of course!

Apologies both - my inexperience is showing here: I thought you couldn't
make it compile into the kernel where it's dependent on another piece of
code that's configured to be a module? In my case, ipu3-cio2 plus some
other dependencies are configured as modules; VIDEO_DEV and VIDEO_V4L2
notably. Is that not right?


It would probably make the probe() ordering issues easier if it could be
compiled in, since I could just rely on late_initcall() in that case and
I guess that should work.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
