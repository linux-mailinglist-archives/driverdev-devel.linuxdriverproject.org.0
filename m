Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B322E1D2
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 20:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EBCD20781;
	Sun, 26 Jul 2020 18:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3fQtK5OBZQSu; Sun, 26 Jul 2020 18:04:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1305020355;
	Sun, 26 Jul 2020 18:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAA9D1BF42D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E740C85E83
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BTvoXSwYPe0O for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 18:03:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2673B85D7D
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 18:03:59 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id j11so12461115oiw.12
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 11:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=njy1r7SA9A6fHsSkCI0GEnHbYoiGBmKDPik7qyN7YE0=;
 b=BWipaAoAlTbeuMXzOXwuLgqgKDf8t+9SCzJK02Q3RXx7RrUL/HLsFtXqQFgRyFVcGA
 IWvU67/VWyZz6bREp5DuyEMihnTE+oj5iIdUZVA/caUIJaSzwyxRmQZZIZYX2VkVd3qF
 H3JbeRoOCmfkHD+W2CD4FFatE7Hlw0g1MT5zQUvJq0YPFswoEpsR4hUcB8i2LvNFCN6W
 sL8eOVz+aEXt/5IQuPRGUw1/yM4YRabOUB3cRyI77FzKJ1izDzwPduzX+FfwEEP+7j3J
 TyQwiHtIURal8OuiBveHTEgfUUzkK0e/Gp9XA8sfLROPS3LhloNKaAnWMhk4G363mVu+
 iwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=njy1r7SA9A6fHsSkCI0GEnHbYoiGBmKDPik7qyN7YE0=;
 b=eZDvuG/EVXtdps19k86W0uphYoKEZcz2vB97wJZMF+ORr1teNG9p/bqbfWjMvk+uGt
 9Ogk3eGEGW5wjwo/txFLGs/Y/J5DDdelnL5zM686IOGW1/bPqS01Lx+/ZmTEfZe0N41+
 2u3enME2ylDvWi7V/flWyDzhVpRylcuKkFZoNkEAfDKJndU6Tt2qwmhJ9/JvYwakceMI
 fXy7V3w18p+Mr/50cduyIsp83IygtkV4z44bEkBm36cqTyKlVJosMBTdkqqsP2c93Pdb
 cPdn7cuGOeyBXR2HknJY0GvwTgm32XnaC0Za+dEWGT7PA1k25vaTTADCH2usbRwuJA/l
 aJQg==
X-Gm-Message-State: AOAM532CQYMZ6P3F+QIDS0V6fu7jJbIcBJAlqP+cdBlk4FNobIdM7QZr
 zF41tNeq4yOsJZoXo+YaWdU=
X-Google-Smtp-Source: ABdhPJyxz7dndp/8Jap8/LjH8xV/Gz9dw4SFIhAgyYJtbOoN5iuJoOpiCHfRvrssXMFi1HQtdoTvSA==
X-Received: by 2002:aca:5ec6:: with SMTP id
 s189mr14769289oib.119.1595786638381; 
 Sun, 26 Jul 2020 11:03:58 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id w25sm1751619otm.81.2020.07.26.11.03.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jul 2020 11:03:57 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: include: Fix coding style errors
To: Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
 <20200726082636.GA447282@kroah.com>
 <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <da3da8d5-7227-ad65-1449-de9fb46561c7@lwfinger.net>
Date: Sun, 26 Jul 2020 13:03:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/26/20 3:40 AM, Aditya Jain wrote:
> On Sun, Jul 26, 2020 at 1:56 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>
>> On Sun, Jul 26, 2020 at 01:32:15PM +0530, Aditya Jain wrote:
>>> Fixing ERROR: "foo *  bar" should be "foo *bar" in hal_phy_cfg.h
>>> as reported by checkpatch.pl
>>>
>>> Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
>>> ---
>>>   .../staging/rtl8723bs/include/hal_phy_cfg.h    | 18 +++++++++---------
>>>   1 file changed, 9 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
>>> index 419ddb0733aa..fd5f377bad4f 100644
>>> --- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
>>> +++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
>>> @@ -42,7 +42,7 @@ u32         Data
>>>
>>>   u32
>>>   PHY_QueryRFReg_8723B(
>>> -struct adapter *             Adapter,
>>> +struct adapter               *Adapter,
>>>   u8           eRFPath,
>>>   u32                  RegAddr,
>>>   u32                  BitMask
>>
>> Ick, these are all horrid.  How about just making these all on a single
>> line like most functions have them instead of this one cleanup?
>>
>> Same for the other changes you made in this file.
>>
>> thanks,
>>
>> greg k-h
> 
> Agreed. I'll clean it up.

While you are at it, drop the "include;" from the subject. For staging, the 
usual subject is of the form "staging: driver: thing being done". In your case 
"staging: rtl8723bs: Fix coding style errors". The directory of the files are 
not relevant.

I am also not in favor of the large white space between the variable type and 
the name, but that is probably the subject of separate patches.

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
