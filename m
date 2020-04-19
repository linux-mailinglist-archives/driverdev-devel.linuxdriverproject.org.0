Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD591AFD48
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 21:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92AF285C19;
	Sun, 19 Apr 2020 19:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Eh9kFdBmjBS; Sun, 19 Apr 2020 19:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70BCB85B95;
	Sun, 19 Apr 2020 19:11:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B842C1BF263
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 19:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B048685B95
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 19:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJlO6HQXmXgt for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 19:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7C2C85B8D
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 19:11:53 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id d17so9398915wrg.11
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 12:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FI/d5vUanPoY/w9CFz9ztVpckNOs2yAH7yeEI0jwxxk=;
 b=TeAKEJzXgkKQhogSLGSn3QaBpFFxEN1BViaBJF/CftadXJ2I3zyKKZx0gMaO2FScIE
 2NqxB2LNRovAFP/SWkRHiY44djHp4V1CKXU8CzD77GKxQA2AgVA9PuB9xxXYVAYZznI6
 IufvgdMwOmyu7zNnNcerNjs3pyrlT0wIX1gMjOf20IDehbLEq1/QUD2BH5KSPGrbmPpx
 pFZstrOVagYMhdr880HK8V0g8ZUcG8IIObqAFAKyYyvPWXmjYjdBMozf2wW1uZnWxAW0
 S8Da0bZNpOOb/PBOedvafNDBingCq3Drfw8XOXRZD0l85k09dEQ8tySumOfWezGaFVJ6
 k51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FI/d5vUanPoY/w9CFz9ztVpckNOs2yAH7yeEI0jwxxk=;
 b=ausyTD8U3U2bCyQEoQRUIdWld4Qmr5tLJ7buHue+QY5p6ZFIamXB1dSM5eK7xKym1m
 tUXQvjkqsrJA2OeH9WDIksI/D2hJNh4xv/qHhNo3O7CHaHpI7AMvm0dt2y/FaOVRAe42
 zRvQ0HTcCOzWl9oB203Ucm/u7v3A9Zmt1+48yGGLIMrx2aOUX+4+IRkw/uLWCWErPEis
 n1ChWaXBliG5pAXbK5mFnWSXLYo2PdO+6idIBGTcICPIi91qVKnsLZWqnyQ34DiYoHDQ
 3jBOWgwi1gKunceu9WcyMibcO18G5DMptZVoXoKbmtoy5rOXv3sHmaDsTaxTqq+mG/xw
 1BcQ==
X-Gm-Message-State: AGi0PuaytKiil20gUhkTXggrgJD9YZzxjVVRrrfjS2FVxhJGz/mGfXV9
 iV3Sdzj9EEBMSwJ0xzVfQ2s=
X-Google-Smtp-Source: APiQypJ7QXh3q+4eyBwvhIYkqxsNrT160nQ7vd8xptJcjjP5IyLErVTGIC/rUAmErJovrneYnG4Low==
X-Received: by 2002:adf:b6a8:: with SMTP id j40mr15692991wre.255.1587323512211; 
 Sun, 19 Apr 2020 12:11:52 -0700 (PDT)
Received: from [192.168.43.227] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id x6sm10940118wrg.58.2020.04.19.12.11.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 12:11:51 -0700 (PDT)
Subject: Re: [PATCH] staging: vt6656: Refactor the vnt_ofdm_min_rate function
To: Stefano Brivio <sbrivio@redhat.com>, Oscar Carter <oscar.carter@gmx.com>
References: <20200418134553.6415-1-oscar.carter@gmx.com>
 <20200419195534.1463ddcd@elisabeth>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <1c118ba5-627e-17ee-7f21-100e2eb67cf1@gmail.com>
Date: Sun, 19 Apr 2020 20:11:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200419195534.1463ddcd@elisabeth>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "John B . Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all

On 19/04/2020 18:55, Stefano Brivio wrote:
> Hi Oscar,
> 
> On Sat, 18 Apr 2020 15:45:53 +0200
> Oscar Carter <oscar.carter@gmx.com> wrote:
> 
>> Replace the for loop by a ternary operator whose condition is an AND
>> bitmask against the priv->basic_rates variable.
>>
>> The purpose of the for loop was to check if any of bits from RATE_54M to
>> RATE_6M was set, but it's not necessary to check every individual bit.
>> The same result can be achieved using only one single mask which
>> comprises all the commented bits.
<snip>

>>
>> -int vnt_ofdm_min_rate(struct vnt_private *priv)
>> +bool vnt_ofdm_min_rate(struct vnt_private *priv)
>>   {
>> -	int ii;
>> -
>> -	for (ii = RATE_54M; ii >= RATE_6M; ii--) {
>> -		if ((priv->basic_rates) & ((u16)BIT(ii)))
>> -			return true;
>> -	}
>> -
>> -	return false;
>> +	return priv->basic_rates & GENMASK(RATE_54M, RATE_6M) ? true : false;
> 
> priv->basic_rates & GENMASK(RATE_54M, RATE_6M) is already true if
> non-zero and false otherwise. Note that I haven't checked if the
> rest is correct.
> 
Yes only 1 or more needs to be true and it is false when none present.

I have run-time checked the patch and it does function as before.

Regards

Malcolm.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
