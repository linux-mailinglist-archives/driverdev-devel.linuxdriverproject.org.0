Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA83343EC1
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 12:03:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A35AC401E6;
	Mon, 22 Mar 2021 11:03:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGkm9BIbKERQ; Mon, 22 Mar 2021 11:03:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 023D9401E5;
	Mon, 22 Mar 2021 11:03:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7701E1BF3A1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B80C60602
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5GlTGvjFisBt for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 11:02:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D3E7605CD
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:02:54 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id bf3so18767348edb.6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 04:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=rn+4zXp8k+v1kOYEDeZIw1a495X4bZmAUx7vNTbAlGM=;
 b=rSpCXPhEr8x4lIlJrqDkprRWJnzBpI2PMU2yHmmUJb82VSfsUSXzA8akPPAj2OpHCB
 4zQDtVFYe90aPu0uMRb6LO5+YEAyoooHEB1FUVRcxsWCiP89jGUlOVociuMRsHb+omNu
 9MLIs5KkaVoFJtY/bcmiZygMG+vuPHjPGdRjBmzE1CmHB4npxn5mXShRz4FIsUxuypQ0
 XOsx/QptYo0fb1OQX6rsE9P9YGgmoJddZKltXzXX2N2SfkzsuHiaYCyrXy3h00atc01W
 NjBKd6hfWplpTDAgjZLBLna/YTUkomoZkopIfwGIYQ+QUhLTWlTn6HR97QPUXulJOqDQ
 thig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=rn+4zXp8k+v1kOYEDeZIw1a495X4bZmAUx7vNTbAlGM=;
 b=pF4G/kVCB+SvOZ6p7TV8jKI0P5vq+7p/sVujt2acQQVUJAAxJ9U9fTDjT0Ttsx0Cas
 XHvmXr/s03akFqAKR6oXC098PSJ2iyFdB72H0zOOOY221heghIWUxZDM9l2v041zaKjX
 qJlM2NMGlW/2M5GpLgbN00F1uPVT/qsvpD64a5jr7etusgGP0j7t/BFOO5PwgNCjWzEz
 B50GoF/8sORsWsGO9DlPXpO7IkvlhxX3b5R5t5ZtQsDQp9FW3rIh/xaiYNvbmuJTNSQO
 WcoyvAkwizcj5CSa3sTibVtG4FV9GuW1uM/uBHinsQskOhgxAo9o9diLhntoHChO60mu
 BhDA==
X-Gm-Message-State: AOAM533Qfy2gOILlZkmXvb+iu8FexTJxc1JohMSb2QdJOvn29P88Pdjc
 kZrLLX8vv+VP7dFc5LXwRk0=
X-Google-Smtp-Source: ABdhPJx7tl+095jWjPi2nndIzQLVZPFPUGhfpfSmkjKcA1Bki4xVIdDo3wwh/WT2vui9tWZ/oEWocw==
X-Received: by 2002:a05:6402:5252:: with SMTP id
 t18mr25586178edd.258.1616410972952; 
 Mon, 22 Mar 2021 04:02:52 -0700 (PDT)
Received: from [93.173.65.134] (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id 90sm11797082edr.69.2021.03.22.04.02.51
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 22 Mar 2021 04:02:52 -0700 (PDT)
Message-ID: <6058792C.90801@gmail.com>
Date: Mon, 22 Mar 2021 13:02:04 +0200
From: Eli Billauer <eli.billauer@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
 rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 1/2] char: xillybus: Move class-related functions to
 new xillybus_class.c
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-2-eli.billauer@gmail.com> <YFc65bvAN3/ZNsww@kroah.com>
In-Reply-To: <YFc65bvAN3/ZNsww@kroah.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/03/21 14:24, Greg KH wrote:
>> +config XILLYBUS_CLASS
>> >  +	tristate
>> >  +
>> >    config XILLYBUS
>> >    	tristate "Xillybus generic FPGA interface"
>> >    	depends on PCI || OF
>> >    	select CRC32
>> >  +	select XILLYBUS_CLASS
>>      
> depends on, do not select.
>
>    
XILLYBUS and XILLYBUS_PCIE are currently enabled as M in several Linux 
distributions. Making them depend on, rather than select XILLYBUS_CLASS 
is likely to disable the driver in those distributions.

With "select", "make oldconfig" sets XILLYBUS_CLASS to the correct value 
smoothly and silently.

Besides, isn't this the intended use case for "select"? A config symbol 
that doesn't depend on anything else, and solves a technical need to 
compile Y if X is enabled?

Or is there a way to use "depends on" without this problem?

Regards,
    Eli

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
