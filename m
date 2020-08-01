Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B56423528F
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Aug 2020 15:06:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06F6686F54;
	Sat,  1 Aug 2020 13:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 567ntgYr4ka5; Sat,  1 Aug 2020 13:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4BF0861EE;
	Sat,  1 Aug 2020 13:06:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BF9C1BF282
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 13:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28C10876E3
 for <devel@linuxdriverproject.org>; Sat,  1 Aug 2020 13:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 60B697hTpn4y for <devel@linuxdriverproject.org>;
 Sat,  1 Aug 2020 13:06:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15A1C877F5
 for <devel@driverdev.osuosl.org>; Sat,  1 Aug 2020 13:06:49 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id r19so35046560ljn.12
 for <devel@driverdev.osuosl.org>; Sat, 01 Aug 2020 06:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ax/Pwtq3Y2qHbJF4PNVmYOhd6N3XKnpfypY6/+4jDSQ=;
 b=nL9gNmMxybnQZTmKhmktw6ICgX7KYugtpBE1pauZoZD9eeGW6gkjbvePdNAVQVcgG3
 g9qZRJwtZ23WuyMGsXNSRD44IexYLcUfhMqszXYfTR5tKOClBIv5dFEvEk0AeMGi9HYy
 crNOrZmu9cYlA6TUqd4aLbcXbj0snsu3dN0yu9svNqj3MY06jpf959nKDLqQIxjLz84N
 D9ySzdRAPpJhp7PXyDRd5xBSGep1jjutiBfOsXsNBjwF7ojSxey4/3ZcfZMQLzZKSVeH
 qa1/V8NwLgh+JuCxQ/3ttqW+4koxZb34hJT6ZSrbN7wHh/JT9YGB4ybXsu+OyhwN3QAS
 pnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ax/Pwtq3Y2qHbJF4PNVmYOhd6N3XKnpfypY6/+4jDSQ=;
 b=SUI4/qXSag8RnZzsQ9yH+wsKitrkwySCYAR00XgLAXUxqSm6o7fHHwOwmkuwAjg15X
 RCnH0nPQVIvECw+gBUQxmNU5NrG8SoxFhW0FSlgtsO0PR3A1VH9a878VXqx7yAtzIqhU
 i7P4lzUOYbphAxcLdrzBO4wZ7smRClLH0/+s6r7uPVuFTFw01RuYDHQcQdzEQ2W1YxUu
 qk9fXQm7OwCDlEYmzbVJ12hEX02H1hai+zaGlb6COeGCz7IkbT6kvIIcc7HdGYhjdqbV
 1C9eFApVCXvYlrsnsfV/vnVXclU09s1ZaQYaGXtgF9KoCXPdAkGtyoyNwTHNzK9QQZe5
 HBQQ==
X-Gm-Message-State: AOAM532L02PcOfVPcMOfCeDGALdEih99tA1B2Kbd7eRTwAxLn7yfwo1J
 VP9trV72s99BzwzUVqFfsU8=
X-Google-Smtp-Source: ABdhPJwkxTq9dQhrA86Zsgn0YMviwS47EPdxu8xVn+mmvAaIcYc+JWEmxqpqj/gaU/UJzqu/RrgBhw==
X-Received: by 2002:a2e:88d4:: with SMTP id a20mr4006508ljk.326.1596287207222; 
 Sat, 01 Aug 2020 06:06:47 -0700 (PDT)
Received: from [192.168.0.160] (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id u21sm896714ljl.11.2020.08.01.06.06.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 01 Aug 2020 06:06:46 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: replace rtw_netdev_priv define with
 inline function
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200801094707.13449-1-insafonov@gmail.com>
 <20200801095108.GA2840539@kroah.com>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <968d30fc-4e5f-b495-e986-b18b05e9a895@gmail.com>
Date: Sat, 1 Aug 2020 16:11:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200801095108.GA2840539@kroah.com>
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
Cc: devel@driverdev.osuosl.org, B K Karthik <bkkarthik@pesu.pes.edu>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/1/20 12:51 PM, Greg Kroah-Hartman wrote:
> On Sat, Aug 01, 2020 at 12:47:07PM +0300, Ivan Safonov wrote:
>> The function guarantees type checking of arguments and return value.
>>
>> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
>> ---
>>   drivers/staging/rtl8188eu/include/osdep_service.h | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/include/osdep_service.h b/drivers/staging/rtl8188eu/include/osdep_service.h
>> index 31d897f1d21f..e0ccafdea9cd 100644
>> --- a/drivers/staging/rtl8188eu/include/osdep_service.h
>> +++ b/drivers/staging/rtl8188eu/include/osdep_service.h
>> @@ -71,8 +71,10 @@ struct rtw_netdev_priv_indicator {
>>   };
>>   struct net_device *rtw_alloc_etherdev_with_old_priv(void *old_priv);
>>   
>> -#define rtw_netdev_priv(netdev)					\
>> -	(((struct rtw_netdev_priv_indicator *)netdev_priv(netdev))->priv)
>> +static inline struct adapter *rtw_netdev_priv(struct net_device *dev)
>> +{
>> +	return (((struct rtw_netdev_priv_indicator *)netdev_priv(dev))->priv);
>> +}
>>   void rtw_free_netdev(struct net_device *netdev);
> 
> Is the cast really needed?

(struct rtw_netdev_priv_indicator *) cast needed for access to '->priv'.

The (struct adapter *) return type is a starting point for simplify
     struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
constructions.

> 
> And no blank line before the next function prototype?

In v2.

> 
> And is this really needed?  Type checking is already happening as this
> is a "simple" macro, right?

1. The flexibility of macros is not needed here.
2. The macro silently assigns ->priv to any pointer, while the function 
indicates such a compile-time error.

Ivan Safonov.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
