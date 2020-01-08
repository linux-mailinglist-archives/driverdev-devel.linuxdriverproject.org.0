Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78335134F2B
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 22:55:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28F1120781;
	Wed,  8 Jan 2020 21:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFnClqhV9giW; Wed,  8 Jan 2020 21:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F9E41FFFF;
	Wed,  8 Jan 2020 21:55:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A28131BF5AD
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98FF48698E
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5qOPwYbXgvI for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 21:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9998084F4F
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 21:55:25 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id m24so590942wmc.3
 for <devel@driverdev.osuosl.org>; Wed, 08 Jan 2020 13:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B/miDvuPrnQYzlt4HuGny92Yb8vnKvzEblzzLeQBG2s=;
 b=UNi55vQPeAz+tXf6IpBz3USE1uWzU8WM2Xth74Qvid5qqaLJPvccQBKc3IjlgneoFt
 SUPogeVai6oBW/nBFove5Iw0qwc8Fe87ffi/f7IEzb9y/bXaPWgHSPJj4Yozod1IqlC8
 zuimspEYbQeKD+9PNe7w1lbTZIwNXcNQEvwWy8ZswZ+RAxKW1ESUy3zRFNla/m3DnRf+
 6b5/Ifb6ZLDbokFdTL9hF16q3bfJ4/T0/Y3oph09VjGCFbOrE6KxVzYwolvRGgFhA/ZR
 oaFKSZP73/HXcgby5q5OL47OpnLBrh/1ZLs0LK6FdcaP54zPRCW009NIMNGa/kyGcHyo
 BwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B/miDvuPrnQYzlt4HuGny92Yb8vnKvzEblzzLeQBG2s=;
 b=PkUx3nxJWyjkuGcEwjJYvngIyqKjy+LGRWMrbSJSmT06TypFEDe17dHDXz4AFZk33I
 lhMgyJF0Rt86/gFqPBxLUNHomhvzHo7d0t0myUm8y/KVCbLRrs/EDJaUG+CWMAAifssR
 tXhE6+RKROtiD/fm8ThC/ltI9c54U7nawTi0b6a3dI5pwxCcJ5CxwDl8BxKl2P7eoKUT
 6gvAA8NnkwRnR3husPQlOxr6r8xxJCnq/43Ufxk+87v7iSIRVw8xhDlHGZD+509IaBBZ
 3Ec1pPqX7HF6u60w8ReCtNGyf22ejObSlYYctyynYdY6m9m0aKpcDjNs1H+ESeSkSnZV
 wGiw==
X-Gm-Message-State: APjAAAWZ20eocxmC0YDNCs0ny++zw+fcH6zEZqoHgOQNdsvehInbVNhR
 4mVMFd21t8q1w03y8MWroXDRd4o/
X-Google-Smtp-Source: APXvYqyOY8An2693Ie5iIGosvFGBOcCQjpX7USBmT4Fn96OuBlxleKHBHxEDa93fBZlcNMOH4UDOsA==
X-Received: by 2002:a7b:ce98:: with SMTP id q24mr742673wmj.41.1578520523749;
 Wed, 08 Jan 2020 13:55:23 -0800 (PST)
Received: from [192.168.43.18] (188.29.164.206.threembb.co.uk.
 [188.29.164.206])
 by smtp.gmail.com with ESMTPSA id q14sm534375wmj.14.2020.01.08.13.55.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:55:23 -0800 (PST)
Subject: Re: [PATCH 1/5] staging: vt6656: Fix non zero logical return of,
 usb_control_msg
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <08e88842-6f78-a2e3-a7a0-139fec960b2b@gmail.com>
 <20200103105734.GD3911@kadam> <20200106214518.GB54084@jiffies>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <0a4738e9-425c-4e1b-8e8d-ca3499a29c6d@gmail.com>
Date: Wed, 8 Jan 2020 21:55:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200106214518.GB54084@jiffies>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 06/01/2020 21:45, Quentin Deslandes wrote:
> On 01/03/20 13:58:08, Dan Carpenter wrote:
>> On Fri, Dec 20, 2019 at 09:14:59PM +0000, Malcolm Priestley wrote:
>>> Starting with commit 59608cb1de1856
>>> ("staging: vt6656: clean function's error path in usbpipe.c")
>>> the usb control functions have returned errors throughout driver
>>> with only logical variable checking.
>>
>> Use the Fixes tag for this.
>>
>> Fixes: 59608cb1de18 ("staging: vt6656: clean function's error path in usbpipe.c")
>>
>> 12 digits to the hash.  Add Quentin to the CC list.
>>
>>>
>>> However, usb_control_msg return the amount of bytes transferred
>>> this means that normal operation causes errors.
>>>
>>> Correct the return function so only return zero when transfer
>>> is successful.
>>>
>>> Cc: stable <stable@vger.kernel.org> # v5.3+
>>> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
>>> ---
>>>  drivers/staging/vt6656/usbpipe.c | 8 ++++++--
>>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
>>> index d3304df6bd53..488ebd98773d 100644
>>> --- a/drivers/staging/vt6656/usbpipe.c
>>> +++ b/drivers/staging/vt6656/usbpipe.c
>>> @@ -59,7 +59,9 @@ int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
>>>  
>>>  	kfree(usb_buffer);
>>>  
>>> -	if (ret >= 0 && ret < (int)length)
>>> +	if (ret == (int)length)
>>
>> No need for this cast (no need in the original either).
>>
>>> +		ret = 0;
>>> +	else
>>>  		ret = -EIO;
>>
>> It would be better to preserve the error codes from usb_control_msg().
>>
>> 	if (ret == length)
>> 		ret = 0;
>> 	else if (ret >= 0)
>> 		ret = -EIO;
>>
>> regards,
>> dan carpenter
>>
> 
> Thanks for CC.
> 
> Nice catch. Dan is right, we should forward any error code from
> usb_control_msg().

This is already in linux-next.

So I will do a fix up patch by the end of this cycle.

Regards


Malcolm
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
