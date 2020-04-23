Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA1F1B5BFC
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 14:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D3C488571;
	Thu, 23 Apr 2020 12:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUJqewblyr-Y; Thu, 23 Apr 2020 12:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 132D6885AE;
	Thu, 23 Apr 2020 12:57:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 954BD1BF392
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 919BF86CDE
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 12:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S30z6l7gJwj2 for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 12:57:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 124BD86CDB
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 12:57:40 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id 131so4638142lfh.11
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 05:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4IzPwc1p9rewfVDR02gT5iXJHo6WGDgE1h5tGgQZ7mU=;
 b=COuoas++m8kh9KGRXhiHJqYkkHYcP2R0N9n5x/wRuy2uQAOiKMUli60CJGPV8ZscFZ
 2UX2tqj9zWW4Y/0dTcTe9p757t/rMDVRNrurrUWydEh1XnEE9ot/ompCf8RWgCa5aGfN
 YamULePVFJRNtd3QFOqj3bGv726bt3Iz2EG+1lN2JL6trl3YggjbqDDuq2xlaeRrNn9r
 JTR27Whjw9ywKLa2pWK+CXNY+iVGP+b+p9BMwEpI2wT/3AZoVlKlola/yMOW1wxee7XT
 ADuxv8fMWvZHbcZMC2QPrK6FBFchlTHP6JCeeoj05kbeq7uppxFHQwltie7WwMKoeHmG
 6hVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4IzPwc1p9rewfVDR02gT5iXJHo6WGDgE1h5tGgQZ7mU=;
 b=D9Wy4cqkReT5CVZ3B7Mh1GwEMJfmXaNekCWKqBAU2VbeDpAqtyZoC4Ilubisfxfolh
 g6rtFQN+b6WM/rO3Nj2ix/UrmB8MK+kMV+2YAP48/xbeHZpTbFI605hlA239dQBfQKgB
 k18Db4gsVkctt6a+W3AyZRsIxcih/La88Ir/WZnxIaDsQ1Ge7gvjgCeRAarxyYjNM65C
 VkZrcrgje75ztzUtRSF8YBQv0bc5p5sMPLiZki8MAtY8MuQpPY/+eC2Met4fZj1hCX0F
 bkDSW6Fl45t3/znxQpMwbbOFdcfISRy00oWpITvEHT0RcSmz8j9UqxWRV2YmeI6jgmOr
 o5qw==
X-Gm-Message-State: AGi0PuZezwrgZsLGlliKDHzmYTHFuP2Mu5O1Z6F8SdKT8P2r1OxoZY7F
 Mc9KqpU1tg/+4jGmJlO2FBo=
X-Google-Smtp-Source: APiQypKjCMt6tyu6ESzGYYRAyReUyR+rMLEyV+2RwlMUA8K/CbCT76O9ynYNvxp9+GM34j8UL9NZMw==
X-Received: by 2002:ac2:4c9a:: with SMTP id d26mr2340685lfl.112.1587646657974; 
 Thu, 23 Apr 2020 05:57:37 -0700 (PDT)
Received: from [192.168.0.160] (84.188.smarthome.spb.ru. [80.249.188.84])
 by smtp.gmail.com with ESMTPSA id s7sm1807991lfb.40.2020.04.23.05.57.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 05:57:36 -0700 (PDT)
Subject: Re: [PATCH] staging:r8188eu: avoid skb_clone for amsdu to msdu
 conversion
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200418084112.3723-1-insafonov@gmail.com>
 <20200423112910.GA3768232@kroah.com>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <fc167249-b052-89f8-1cee-b7d9bcff0d2c@gmail.com>
Date: Thu, 23 Apr 2020 16:02:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423112910.GA3768232@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Saurav Girepunje <saurav.girepunje@gmail.com>,
 linux-kernel@vger.kernel.org, Puranjay Mohan <puranjay12@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 4/23/20 2:29 PM, Greg Kroah-Hartman wrote:
> On Sat, Apr 18, 2020 at 11:41:12AM +0300, Ivan Safonov wrote:
>> skb clones use same data buffer, so tail of one skb is corrupted by beginning of next skb.
> 
> Please properly wrap your changelog text at the correct column (72).
> 
> Also, your subject: line does not have the correct driver name :(

Correct driver name is 'r8188eu':

1. 
http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2016-June/090556.html 
:
> One other point, it is customary to start the patch subject with "staging: 
> rtl8188eu: ..." for drivers in staging. I also prefer using r8188eu rather than 
> rtl8188eu as the former is the actual name of the driver, but either will work.

2. ./drivers/staging/rtl8188eu/os_dep/usb_intf.c lines 483-522/522 (END):
> static struct usb_driver rtl8188e_usb_drv = {
>         .name = "r8188eu",
>         .probe = rtw_drv_init,
>         .disconnect = rtw_dev_remove,
>         .id_table = rtw_usb_id_tbl,
>         .suspend =  rtw_suspend,
>         .resume = rtw_resume,
>         .reset_resume = rtw_resume,
> };
> 
> module_usb_driver(rtl8188e_usb_drv)

Subject contain this name.

>>
>> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
>> ---
>>   drivers/staging/rtl8188eu/core/rtw_recv.c | 19 ++++++-------------
>>   1 file changed, 6 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> index d4278361e002..a036ef104198 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> @@ -1525,21 +1525,14 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
>>   
>>   		/* Allocate new skb for releasing to upper layer */
>>   		sub_skb = dev_alloc_skb(nSubframe_Length + 12);
>> -		if (sub_skb) {
>> -			skb_reserve(sub_skb, 12);
>> -			skb_put_data(sub_skb, pdata, nSubframe_Length);
>> -		} else {
>> -			sub_skb = skb_clone(prframe->pkt, GFP_ATOMIC);
>> -			if (sub_skb) {
>> -				sub_skb->data = pdata;
>> -				sub_skb->len = nSubframe_Length;
>> -				skb_set_tail_pointer(sub_skb, nSubframe_Length);
>> -			} else {
>> -				DBG_88E("skb_clone() Fail!!! , nr_subframes=%d\n", nr_subframes);
>> -				break;
>> -			}
>> +		if (!sub_skb) {
>> +			DBG_88E("dev_alloc_skb() Fail!!! , nr_subframes=%d\n", nr_subframes);
>> +			break;
>>   		}
>>   
>> +		skb_reserve(sub_skb, 12);
>> +		skb_put_data(sub_skb, pdata, nSubframe_Length);
>> +
> 
> Have you tested this?

I have not test this change.

Ivan Safonov.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
