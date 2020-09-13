Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A555267E8D
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 10:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1EC40203E2;
	Sun, 13 Sep 2020 08:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JW-ekVaH5LI; Sun, 13 Sep 2020 08:19:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 813392043B;
	Sun, 13 Sep 2020 08:19:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFB7D1BF5A9
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 08:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9EAE3203E2
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 08:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLTZnz51Cbr8 for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 08:19:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FED5203B8
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 08:19:46 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id r7so18971230ejs.11
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 01:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JTKNL3SAmNHKeei1RZzkVvOMmOlCapOPSJPDjjnYcso=;
 b=gt3G012Fk9LsL8CBSfPNsHZSvpO7B2EiWQ3Urw2pp8MvAVpChF2/+f2uh2WJzoDug8
 oAA6HDYFyXo+43hr3C0/JuHLIOU8BjJVvQPWqqwpntS7LaVywo/fV1Uv/6vFVTJJ+s2+
 QCclrN0G2AGKJPEp4RR+G1lzeNXkPjJg964+QAtc5oMageZU7PBobhvuwQewWNbaYFLN
 k/YqUogC6hNkZdwCorn0QxNUQkYJktWksXB0TdJXt/8rIa3uIReIeVR1s1vmcfwfbyre
 D1oO+N7FBEdSYxx6wQ2tgFD5gT3feQ+m0LSWXpbblKZIVi4t6dRJT8Fod+yarCEjcv3O
 0hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JTKNL3SAmNHKeei1RZzkVvOMmOlCapOPSJPDjjnYcso=;
 b=tlWiYL0fGHMX4ykwRyKuTA3NvnoJlp99lukQaJnUEFsvcVMAio1KSEWUAetM4B6r9J
 qiSa0CUlsa2OMzVPMRpR+jjAv3v+kXPen42PClqYwd1CZ5egs66v9gd2+LCe/yWF2ChW
 7PHu0y2NkUqMGA9OMfW5nOuyPa/uEXi3YnBW80Hs/2h5du2lseC4bpDKs/EUFd6TfTfl
 VpfEuhbrIesn8EXBAh2Ug22yRwSV1q8Mm21BiaIcopjc6y5GOWppcx5YWVBz/io2q1RI
 AgfqDmdOwCzgrVJkJVZ0wtzXXX+ERZa5PfXziBfwnERcOKHkhh05AeKStpHreikTAE4q
 K5Kw==
X-Gm-Message-State: AOAM533Irp8tJr12Eixtn5JbgCtfu2L6LzEVHAoi7KFJQS7XxKcyzOAa
 KLJXWHnyVHY0/QW4swz0TfA=
X-Google-Smtp-Source: ABdhPJypyUpgAp8jm8ENIIoF0lNg+ji5zjKNJqUavIkE6xyq4R8JfjD2bwaHFXdKICqbBNNssXpK5g==
X-Received: by 2002:a17:906:4a51:: with SMTP id
 a17mr9172003ejv.381.1599985184917; 
 Sun, 13 Sep 2020 01:19:44 -0700 (PDT)
Received: from [192.168.178.22]
 (dslb-002-204-143-192.002.204.pools.vodafone-ip.de. [2.204.143.192])
 by smtp.gmail.com with ESMTPSA id dm22sm6455855edb.49.2020.09.13.01.19.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Sep 2020 01:19:44 -0700 (PDT)
Subject: Re: [PATCH 1/5] staging: rtl8723bs: refactor cckrates{only}_included
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org
References: <20200912084520.8383-1-straube.linux@gmail.com>
 <f5fdb27843143dfefb1a1a416dab63931fef6d41.camel@perches.com>
From: Michael Straube <straube.linux@gmail.com>
Message-ID: <30b4b012-61ed-18e4-4c0f-bc9f247f2dbf@gmail.com>
Date: Sun, 13 Sep 2020 10:16:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f5fdb27843143dfefb1a1a416dab63931fef6d41.camel@perches.com>
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2020-09-12 20:22, Joe Perches wrote:
> On Sat, 2020-09-12 at 10:45 +0200, Michael Straube wrote:
>> Refactor cckrates_included() and cckratesonly_included() to simplify
>> the code and improve readability.
>>
>> Signed-off-by: Michael Straube <straube.linux@gmail.com>
>> ---
>>   drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 14 ++++++++------
>>   1 file changed, 8 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> index a5790a648a5b..4e0d86b2e2e0 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
>> @@ -56,11 +56,12 @@ static u8 rtw_basic_rate_ofdm[3] = {
>>   
>>   int cckrates_included(unsigned char *rate, int ratelen)
>>   {
>> -	int	i;
>> +	int i;
>>   
>>   	for (i = 0; i < ratelen; i++) {
>> -		if  ((((rate[i]) & 0x7f) == 2)	|| (((rate[i]) & 0x7f) == 4) ||
>> -		     (((rate[i]) & 0x7f) == 11)  || (((rate[i]) & 0x7f) == 22))
>> +		u8 r = rate[i] & 0x7f;
>> +
>> +		if (r == 2 || r == 4 || r == 11 || r == 22)
>>   			return true;
>>   	}
>>   
>> @@ -69,11 +70,12 @@ int cckrates_included(unsigned char *rate, int ratelen)
>>   
>>   int cckratesonly_included(unsigned char *rate, int ratelen)
>>   {
>> -	int	i;
>> +	int i;
>>   
>>   	for (i = 0; i < ratelen; i++) {
>> -		if  ((((rate[i]) & 0x7f) != 2) && (((rate[i]) & 0x7f) != 4) &&
>> -		     (((rate[i]) & 0x7f) != 11)  && (((rate[i]) & 0x7f) != 22))
>> +		u8 r = rate[i] & 0x7f;
>> +
>> +		if (r != 2 && r != 4 && r != 11 && r != 22)
>>   			return false;
> 
> It would be simpler to add and use an inline like:
> 
> static bool is_cckrate(unsigned char rate)
> {
> 	rate &= 0x7f;
> 	return rate == 2 || rate == 4 || rate == 11 || rate == 22;
> }
> 
> so these could be
> 
> bool cckrates_included(unsigned char *rate, int ratelen)
> {
> 	int i;
> 
> 	for (i = 0; i < ratelen; i++) {
> 		if (is_cckrate(rate[i])
> 			return true;
> 	}
> 
> 	return false;
> }
> 
> bool cckratesonly_included(unsigned char *rate, int ratelen)
> {
> 	int i;
> 
> 	if (i <= 0)
> 		return false;
> 
> 	for (i = 0; i < ratelen; i++) {
> 		if (!is_cckrate(rate[i])
> 			return false;
> 	}
> 
> 	return true;
> }
> 
> 

I've just seen that there are already rtw_is_cckrates_included and rtw_is_cckratesonly_included
in rtw_ieee80211.c that can be used here.

I will send another series removing the functions from rtw_wlan_util.c and use the ones from
rtw_ieee80211.c.

So please don't merge this series, thanks.

Michael

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
