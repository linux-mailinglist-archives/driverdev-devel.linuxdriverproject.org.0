Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D35343EC0
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 12:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94CE9402E8;
	Mon, 22 Mar 2021 11:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6b_S8J7-S2P8; Mon, 22 Mar 2021 11:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 292E440266;
	Mon, 22 Mar 2021 11:03:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8D61BF3A1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E225824E3
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 11:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oUoLsWUmupKJ for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 11:02:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B99AD82430
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 11:02:52 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id j3so18713149edp.11
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 04:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=bP+9z6+/AkKUxzaywvKK+rP+LUX4mnyV5vUY0XfiapI=;
 b=U5A5HLjn1OM9WQMo02CnQFoZT61qpIexv+AYTEiQV8KkU8A993NDIWHj1SSlsr+jh3
 LJAYURPXOwBg8QK5wHvw9nEbrnotmZDTWaOAgDWf0ZfLTU8YeTjND/XVWrWgYASDMVtu
 DLhHKO87djD3auYQ+5pCZCDynOFIzb2ueBNZyiMleMJYWn98RKv69PvRsFQuwi/szjJS
 NcefUZWOeQf7IKCShLRQEKfS7MyLy/N01NeKO+JLpc64E01o3eUvPzNBOF1isNJo6I5V
 WppEE+UkE59L3NZtvdN7IuDfVCIIb5mGi/KKQV0N+6UYnTpMDVikH/qNM4xE7yNhe8GZ
 fc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=bP+9z6+/AkKUxzaywvKK+rP+LUX4mnyV5vUY0XfiapI=;
 b=gtQFsHexrLEUmk4WmU5AmiC5LVYpHGZ7sMl0ZOPJZmU3aSYLpnVFqwF0mvSGEZ3qJK
 wVMiNzil3xeVq384KG/uwgyRIRAhrPJNGgrFWbdHZGEsR33aMb0iO8WEqzHDM9P42v/5
 IeHoDZATkGXHPW9T1cd1A/GccC3+a8fJX4UKTNcuYlElfYO3mucmRzyexqfkot8gtCqG
 o/QGkVkwJymApH5RXyL+0nXiYaMM8BMPiSJ1Q9ff3xAgVRPqpO6U426HE/yKNeXlcagG
 NsCU46A+WGQ/pX6Kbt64e5KBpIJdl/HSjhGRjyAJZkWtf3dcvopC7T16QrO/SRASnHEl
 cXMg==
X-Gm-Message-State: AOAM532k0cGx6uWadnlJRrb7wFxDG0dp84xHGPC6GWaP7dCQxN6oq3+P
 a4ChOmgzMXdDd4bNB/yh3mU=
X-Google-Smtp-Source: ABdhPJzf/qlCLC5yeB8AWurXmXJOGGXXV5jfC4r8FY0SKsW+7CbDGnuB4Xh+HdZ1h6zlHChYCMYn3g==
X-Received: by 2002:aa7:cf90:: with SMTP id z16mr24987525edx.273.1616410970752; 
 Mon, 22 Mar 2021 04:02:50 -0700 (PDT)
Received: from [93.173.65.134] (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id v8sm11125318edc.30.2021.03.22.04.02.49
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Mon, 22 Mar 2021 04:02:50 -0700 (PDT)
Message-ID: <60587922.2040903@gmail.com>
Date: Mon, 22 Mar 2021 13:01:54 +0200
From: Eli Billauer <eli.billauer@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
 rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 2/2] staging: Add driver for XillyUSB (Xillybus variant
 for USB)
References: <20210311095033.20956-1-eli.billauer@gmail.com>
 <20210311095033.20956-3-eli.billauer@gmail.com> <YFc6z9REEo27FMA+@kroah.com>
In-Reply-To: <YFc6z9REEo27FMA+@kroah.com>
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

Hello, Greg.

Thanks for your comments. I'd like to address a couple of them.

First, there's the lockless FIFO that is implemented in the driver:

On 21/03/21 14:23, Greg KH wrote:
>
>> +
>> +static unsigned int fifo_read(struct xillyfifo *fifo,
>> +			      void *data, unsigned int len,
>> +			      int (*copier)(void *, const void *, int))
>> +{
>> +	unsigned int done = 0;
>> +	unsigned int todo = len;
>> +	unsigned int fill;
>> +	unsigned int readpos = fifo->readpos;
>> +	unsigned int readbuf = fifo->readbuf;
>> +
>> +	fill = atomic_read(&fifo->fill);
>>      
> And the number changed right after reading it :(
>
> Again, no atomics, use a lock please.
>
> This is a USB device, you are NOT doing high-speed data transfers at
> all.
>
>    
The current XillyUSB hardware is USB 3.0 based, running at ~400 MB/s, 
and this is just the beginning. For comparison, when the PCIe-based 
Xillybus started at 200 MB/s, I didn't believe it would reach 6.6 GB/s.

So that's why I made the effort to implement a lockless FIFO, with all 
the extra synchronization fuss. And yes, it works perfectly, and has 
been heavily fuzz tested on an x86_64 machine. The memory barriers are 
carefully placed to make this work on less favorable platforms as well, 
but even if I got it wrong -- odds are that the fix will be a line or two.

Replacing atomics with spinlocks is a piece of cake, of course. But 
given this extra information, do you still think it's a good idea?

As for the specific remark on fifo->fill changing after reading it -- 
that's OK, since it would just mean that the reader of the FIFO doesn't 
see the extra data that has just been written to it. This doesn't break 
anything.

Moving on to the second topic:

>> +static loff_t xillyusb_llseek(struct file *filp, loff_t offset, int whence)
>>      
> USB devices do not have a "seek", why is this needed?
>
>    
Xillybus' device nodes are optionally seekable, which gives the user 
application access to a RAM array on the FPGA (or logic emulating it, 
such as registers). This holds true for the existing Xillybus API as 
well as the one for XillyUSB.

Thanks and regards,
    Eli
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
