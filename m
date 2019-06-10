Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D855B3AE24
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 06:32:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E31785618;
	Mon, 10 Jun 2019 04:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jX6izVctFtHu; Mon, 10 Jun 2019 04:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4E71855CC;
	Mon, 10 Jun 2019 04:32:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 575B01BF40B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 04:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 537DE203B3
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 04:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vYriJOryEQMf for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 04:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9299A20338
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 04:32:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f97so3111857plb.5
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 21:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xHPzuC4R5KkZBw6vFRw90KpfbbD11GlApZT+SmWKwe4=;
 b=Ss5p1Lwy68hqtdh3br0uV9egK7a/GcBg6EEsyJeGu3+IIamR5xkByvx2tCZ3y7Pg1w
 4AK9N2fAAHodTXOMEkPMOly1SMDOxOTdYTyhHevVoNx6X36PPgiWxsifLf7/zsSiA+4k
 mg2fPTy6ll0dYm6QUjXkHGHXlEg7AOA+hyZluTdR8NVIWGiLy0L1Jvm2noL1EU5zHBHC
 uwTI0rS8FMVQZzi1pxjYgZ8FMZTMK3T8bFbPSuFTDGd49mQFGYZZ/x/hjA/v8rs2wWBj
 ZoZFmr4M6gsuWs0fI7llM7xLgY4a3gRQAjEvZ+g52+ZcjGDCzi7bpRtbc9BNB0HwPCdE
 G0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xHPzuC4R5KkZBw6vFRw90KpfbbD11GlApZT+SmWKwe4=;
 b=smehgtNeNSbmTC38T4XIPNmvF+VvjNp3A8SmiSgQsZaSSPC6+GVUprhDKdgsTJU0yu
 DvKvLb1hbC5UhbsJYhgb5cFvc2u2WM5hgY3BEzRGLHBwfI/v/WfwqB1+eSSVMPSC9Nx7
 Nt5EW21o8q9Ic0+gJyhb70zEmadM0Ynr47uiVuIE7rMqqWjZGoSdpSUq2wLtyWCVIGwn
 RkCgJJHV4GLx9K0rJOcnTZ3ZTrNVRGVM8AbV2LJdfO2Kyki3asQ4hqEqJaBCe8EZ8ByY
 b66jtF3qv6LglPLdrfdLvBv/UKoyU+G2yEYYQ2XCKsjWFJsawd64YZNqpAvnQtCkmrHv
 rdrw==
X-Gm-Message-State: APjAAAXbPubP+O50zZs0ZrD6TH6sm5aMi73wm9MESV8k12lFY5aMBy6O
 Ry3FY9QhU/muNEFygHuMXoA=
X-Google-Smtp-Source: APXvYqzpCQBfxr7tCmPsXXFKsBCVmnhsOxlS5W/E2s+08qDC23SjwQwMkTJAH20Cb2JhL1mczbwGjQ==
X-Received: by 2002:a17:902:968b:: with SMTP id
 n11mr32173861plp.120.1560141153272; 
 Sun, 09 Jun 2019 21:32:33 -0700 (PDT)
Received: from [10.0.2.15] ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id m20sm9102784pjn.16.2019.06.09.21.32.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 21:32:32 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: rtl8712: r8712_setdatarate_cmd(): Change
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190607140658.11932-1-nishkadg.linux@gmail.com>
 <20190607141548.GP31203@kadam>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <98b587c9-df5b-0905-ab8f-69a4bae296b0@gmail.com>
Date: Mon, 10 Jun 2019 10:02:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190607141548.GP31203@kadam>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 florian.c.schilhabel@googlemail.com, tiny.windzz@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 colin.king@canonical.com, larry.finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 07/06/19 7:45 PM, Dan Carpenter wrote:
> Probably you sent this patch unintentionally.  The subject doesn't make
> any sort of sense.  :P

So the problem with the subject line is that git send-email and vim (as 
configured on my laptop) tend to line-wrap even the subject line. Since 
I have two patches that do the same thing for different functions, I 
felt I should have the driver and the function name in the subject line 
(to avoid confusion between the patches and to allow for easy searching 
later). But that doesn't leave enough space in the subject line for 
"Change return values/type" or any other descriptive message. What 
should I do?


> On Fri, Jun 07, 2019 at 07:36:57PM +0530, Nishka Dasgupta wrote:
>> Change the return values of function r8712_setdatarate_cmd from _SUCCESS
>> and _FAIL to 0 and -ENOMEM respectively.
>> Change the return type of the function from u8 to int to reflect this.
>> Change the call site of the function to check for 0 instead of _SUCCESS.
>> (Checking that the return value != 0 is not necessary; the return value
>    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> itself can simply be passed into the conditional.)
>    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



> This is obvious.  No need to mention it in the commit message.

Okay, I'll amend that.

>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> index b424b8436fcf..761e2ba68a42 100644
>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
>> @@ -1367,7 +1367,7 @@ static int r8711_wx_set_rate(struct net_device *dev,
>>   			datarates[i] = 0xff;
>>   		}
>>   	}
>> -	if (r8712_setdatarate_cmd(padapter, datarates) != _SUCCESS)
>> +	if (r8712_setdatarate_cmd(padapter, datarates))
>>   		ret = -ENOMEM;
>>
>>   	return ret;
> 
> 
> It would be better to write this like so:
> 
> 	ret = r8712_setdatarate_cmd(padapter, datarates);
> 	if (ret)
> 		return ret;
> 
> 	return 0;
> 
> Or you could write it like:
> 
> 	return r8712_setdatarate_cmd(padapter, datarates);

Okay, since this is the only point at which a return happens in this 
function, I can do this.

> Which ever one you prefer is fine
Thanking you,
Nishka

> regards,
> dan carpenter
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
