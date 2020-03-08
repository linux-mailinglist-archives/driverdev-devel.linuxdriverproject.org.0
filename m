Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B5B17D5D5
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 20:22:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F09887E94;
	Sun,  8 Mar 2020 19:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XPfumLfSGFk; Sun,  8 Mar 2020 19:22:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3054287C8A;
	Sun,  8 Mar 2020 19:22:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04B871BF319
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0093220501
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 19:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8XiuPVO3wir for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 19:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 04A01203D8
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 19:22:12 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id n8so3671510wmc.4
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 12:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=D7+79NwrEk95vLhnhqaYEUgUdXDmRjOIGLsgZ0X1kRw=;
 b=hIyP1mP82HEjKwYkK6Qczyu5S6k56AX/xd4eZnJeT/xKxNvhxKdubhRFjvnKawCry/
 hqnxOCUZy6p1xQpAF2huP3IZbSJo4aaYGgZ25ZF+ptn2MrRoktHyGUNiSKMKm2uiRJzv
 3nKobObqO93N4XKTV1q3rV6d/Pw84A6U9cHsJ3a7FyHFJNTRYVmXes3ZdxYbB3TaX184
 ZHaARSL/xg6BkDErgRSTp11u0lQTkp8wWNRb4FILrgu4IWEaXjOXXQlvii/O0fYgz4Sv
 CQCLKGPJJTgsaZA5yODi1uaM61LGovNuksSE1b08jF/sJLQ5TH7gw9UnlH7OLG1/Uenh
 vHwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=D7+79NwrEk95vLhnhqaYEUgUdXDmRjOIGLsgZ0X1kRw=;
 b=WLhqv62/3Jo1mzT2Oj0Jq75gr+aupp82+uAMInnbaD67YDqMIUG3xVGG4U24ytyBFx
 8PxvHz1l/Y3JNI42sdljtVKLVpK0KHdaDRZxi6051YvsFW6BKkgg/mP3pJph1PI3/zUr
 ZIJ1WK0/tFst8UI+Ygm+qc7WukqDdAgfg+c7AFAFQa1mLiUOry7wvVRlE+cknwVLbVPG
 2y8PxgZbdHUuYWeQMMxam/yzJfSlu1LbmmGp6DcoOxCOdz7PrweMpDR2Bdxs/ez9yaYG
 pn8GjRS1fHFBnjFvQgDZUYE27tsR5kqn5WKutiVBc1HTl94wUNsMbg9BwHVokcew0fO7
 dYzQ==
X-Gm-Message-State: ANhLgQ2sebqPoYQfzW7dW6mFGsKOp2BKWG+OaUol2KA3pZDLcR0nSwVH
 RogeH7K4xxdnX9GEdzt8mME=
X-Google-Smtp-Source: ADFU+vsimzND9hNjfuJemOYs6CO9wGT5V9Ylg0dKLRicgR7dX/djBgKE989ZF0qNyFVha5+lUwvPWQ==
X-Received: by 2002:a1c:4c19:: with SMTP id z25mr15511807wmf.184.1583695330527; 
 Sun, 08 Mar 2020 12:22:10 -0700 (PDT)
Received: from [192.168.43.18] (92.40.248.47.threembb.co.uk. [92.40.248.47])
 by smtp.gmail.com with ESMTPSA id p10sm55410271wrx.81.2020.03.08.12.22.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Mar 2020 12:22:10 -0700 (PDT)
Subject: Re: [PATCH] staging: vt6656: Use BIT_ULL() macro instead of bit shift
 operation
To: Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200307104929.7710-1-oscar.carter@gmx.com>
 <20200308065538.GF3983392@kroah.com> <20200308161047.GA3285@ubuntu>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <561bc968-f88c-40e3-f53c-5c03f74f75ea@gmail.com>
Date: Sun, 8 Mar 2020 19:22:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200308161047.GA3285@ubuntu>
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
Cc: devel@driverdev.osuosl.org, Colin Ian King <colin.king@canonical.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>>>   */
>>>  #undef __NO_VERSION__
>>>
>>> +#include <linux/bits.h>
>>>  #include <linux/etherdevice.h>
>>>  #include <linux/file.h>
>>>  #include "device.h"
>>> @@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
>>>
>>>  	netdev_hw_addr_list_for_each(ha, mc_list) {
>>>  		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
>>> -
>>> -		mc_filter |= 1ULL << (bit_nr & 0x3f);
>>> +		mc_filter |= BIT_ULL(bit_nr);
>>
>> Are you sure this does the same thing?  You are not masking off bit_nr
>> anymore, why not?
> 
> My reasons are exposed below:
> 
> The ether_crc function returns an u32 type (unsigned of 32 bits). Then the right
> shift operand discards the 26 lsb bits (the bits shifted off the right side are
> discarded). The 6 msb bits of the u32 returned by the ether_crc function are
> positioned in bit 5 to bit 0 of the variable bit_nr. Due to the right shift
> happens over an unsigned type, the 26 new bits added on the left side will be 0.
> 
> In summary, after the right bit shift operation we obtain in the variable bit_nr
> (unsigned of 32 bits) the value represented by the 6 msb bits of the value
> returned by the ether_crc function. So, only the 6 lsb bits of the variable
> bit_nr are important. The 26 msb bits of this variable are 0.
> 
> In this situation, the "and" operation with the mask 0x3f (mask of 6 lsb bits)
> is unnecessary due to its purpose is to reset (set to 0 value) the 26 msb bits
> that are yet 0.

The mask is only there out of legacy originally it was 31(0x1f) and the
bit_nr spread across two mc_filter u32 arrays.

The mask is not needed now it is u64.

The patch is fine.

Regards

Malcolm


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
