Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A41A05FD
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 17:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FEE323376;
	Wed, 28 Aug 2019 15:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXr13A0ITdP6; Wed, 28 Aug 2019 15:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3726D231A1;
	Wed, 28 Aug 2019 15:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC171BF574
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A238888CF
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oviC1K3qtVEv for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 15:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CC95887F8
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 15:17:54 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id i63so458927wmg.4
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 08:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=WyiSw2nRgiZA25mEaN43/uhDjB007i6cQ+HN5h3ds3Q=;
 b=iuenxOCyFgRW57if5qsNZlSLSTxV7Mh0w9NtH5EOeJ1WWNDG3t0lSABMIgqIXht/yC
 WZA6nz4F9gErP0RGxOODe3wRK0QQ/6gaWp46aP+26AhhTwZzSlpPL54QAvKk7tkqxzK7
 SGc9ewWWHDADdKoVB3QUETyb7nQ1/MzXwEyLJX2hxegzOJs+5nv2ouAEngEmFJA57AZL
 wYJjIqqOAlKtGlnBJe1D+U+mLPtszfTLJ8Wj58KM6PkoiuBRxdSMX4tyHNhyl1c31+F/
 JjsR2JnNtKZG2liqNf3Q1KIuM2EDKcGbgRiSUH08dJUkMPt1UC9JTE66vixb9Sn5sbUI
 J9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=WyiSw2nRgiZA25mEaN43/uhDjB007i6cQ+HN5h3ds3Q=;
 b=BqxBVPnEY3/4h2m6EXbb/VsvKB1m624urSaM6VVhvN9QBrwpJSFVifO6kVR3Y0OPie
 KHLi5kbOrzHy8wHur0fSRIp0bwld7FCd7n6zaJXRO4hmAgbxrs8KPesyKX0NSPA5awty
 d3Q/iByRU4FE2590MIaurgfczQXiFW1gQcMBj7fUfJHYO9YBS52fD329UNEOlDLw60ue
 nsGFHHproWGuPNqFZ03hYlHgpCerOexfv9FgURUoIpFUsIXUjt+D5302s0e8XLlpz8An
 rXNawTize001QK7RtAdrznhHnxpV90O17P327+YEd6m7EzWhn6VyqkzKZqvfbidG2KDe
 34IA==
X-Gm-Message-State: APjAAAXOflNqvQkuvrT03vgkVSEg1+0Pg2XfRqfGDIw4njy4GYZ8lUu5
 QNy88xBCQFPhMiB/PCtQkraqKw==
X-Google-Smtp-Source: APXvYqwH4sFdRo7kgwhzZjXE6IwIvhdcDqB65nQeKnOyrXSctpcIpJTkmPN/rztPzYoZ/91YuhsSPw==
X-Received: by 2002:a1c:238d:: with SMTP id j135mr5754384wmj.39.1567005472383; 
 Wed, 28 Aug 2019 08:17:52 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id r190sm4158890wmf.0.2019.08.28.08.17.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 08:17:51 -0700 (PDT)
References: <20190827205917.8308-1-rui.silva@linaro.org>
 <20190828083519.GA29752@kroah.com>
 <0b740eb9-5ef4-8346-aa78-6b07bb060e7b@infradead.org>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2] staging: greybus: add missing includes
In-reply-to: <0b740eb9-5ef4-8346-aa78-6b07bb060e7b@infradead.org>
Date: Wed, 28 Aug 2019 16:17:50 +0100
Message-ID: <m3blw9wc81.fsf@linaro.org>
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

Hi Randy,
On Wed 28 Aug 2019 at 16:09, Randy Dunlap wrote:
> On 8/28/19 1:35 AM, Greg Kroah-Hartman wrote:
>> On Tue, Aug 27, 2019 at 09:59:17PM +0100, Rui Miguel Silva wrote:
>>> Before moving greybus core out of staging and moving header files to
>>> include/linux some greybus header files were missing the necessary
>>> includes. This would trigger compilation faillures with some example
>>> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
>>>
>>> So, add the necessary headers to compile clean before relocating the
>>> header files.
>>>
>>> ./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
>>>   int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
>>> ./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
>>>   __u8 data[0];
>>>   ^~~~
>>> ./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
>>>   int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
>>> ./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
>>>   int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
>>> ./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
>>>   int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
>>> ./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
>>> u8 phase, unsigned int timeout);
>>>      ^~
>>> ./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
>>>   int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
>>> ./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
>>>      size_t peer_space, unsigned int timeout);
>>>      ^~~~~~
>>> ./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
>>> ./include/linux/greybus/hd.h:1:1:
>>> +#include <stddef.h>
>>>  /* SPDX-License-Identifier: GPL-2.0 */
>>> ./include/linux/greybus/hd.h:29:5:
>>>      size_t peer_space, unsigned int timeout);
>>>      ^~~~~~
>>> ./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
>>>   int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
>>> ./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
>>>   int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
>>> ./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
>>> struct gb_message *message, gfp_t gfp_mask); ^~~~~
>>> ./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
>>>   int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);
>>>
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>> Reported-by: Gao Xiang <hsiangkao@aol.com>
>>> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
>>> Acked-by: Alex Elder <elder@kernel.org>
>>> ---
>>>
>>> v1->v2:
>>> lkp@intel:
>>>   - added greybus_protocols.h include to svc.h header
>>> Alex Elder:
>>>   - remove extra line in operation.h
>>>
>>> Looks like lkp can now find missing headers that we can not :),
>>> it must be the config. but it is right.
>>>
>>> Greg please note the new include in svc.h may need to be changed
>>> when moving headers to include/linux
>>
>> As a version of your first patch is already in my tree, this one will
>> not apply :(
>>
>> Can you just send a fix-up patch against my staging-next branch instead?
>>
>> thanks,
>>
>> greg k-h
>> _______________________________________________
>> devel mailing list
>> devel@linuxdriverproject.org
>> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
>>
>
> linux-next of 20190828 has these warnings:
>
> ./../include/linux/greybus/svc.h:91:18: warning: 'struct gb_svc_l2_timer_cfg' declared inside parameter list will not be visible outside of this definition or declaration
> ./../include/linux/greybus/operation.h:188:34: warning: 'struct gb_host_device' declared inside parameter list will not be visible outside of this definition or declaration
>
>
> Are they fixed by some of these patches?
>

Yes, this [0] should fix it.

---
Cheers,
	Rui

[0]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-August/138016.html
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
