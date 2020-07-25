Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D3022D963
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 20:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D0AE2048E;
	Sat, 25 Jul 2020 18:49:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pI+a0sKV2THw; Sat, 25 Jul 2020 18:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CFD642039E;
	Sat, 25 Jul 2020 18:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B92B01BF5DA
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 18:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B590F883C1
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 18:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1KaEPsShDiPs for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 18:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9072883BF
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 18:49:21 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l27so2316132oti.3
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 11:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rMyb1gO3q+v65MaIVuTcYIle7Wdt4tjlApNFSHQMhoA=;
 b=IeqhwkoAGMsuiqAFwxeyeJD1ArMD7DDh1kvr35hYkSEa7vAAo9Mkerlw9DBz548GNr
 bVbommZ44uBja6vI548WYNUw1Ej1QYdSa/P22PLFeltPACVePYpkYiMcMUrlQn32RRRs
 7oyi42ibOJgz47MrzafTjWmy3YTDCYMI/TED6GK8T0VrN/JVM8Su+ZykPwimtuJTJkbA
 gMUKoEZBaAHPOkAe9lxda/858rkzDQFC4XgTs5+YPxkmpwpbnd/GCARSVHHnn1DLuVSz
 AqDR6uMAN4YzLkWREmRtyyg8LJ5JUXkVkrIoRDajGE0utbEbvT5OH8fIvERBgBc7Xme4
 veDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rMyb1gO3q+v65MaIVuTcYIle7Wdt4tjlApNFSHQMhoA=;
 b=HKH1B7DIoDzE/Kw40oPGGMf2vCsA5GFwWMBud6eazyx7poTdQ5B+0FQg55uVTnGAbi
 +ya+rlBrrt/YPd+y+ATu/w4T4sbpy/dVqr8RczZcOoJKvuEPR66weQNu5VMIuQd67dWV
 tzgf66jHsU/jWbnTVXBZGUkJ8iggbiscszciHK/l6HWeyB7mlfBv8L9Mocdq/TEeZ/Og
 J4dOTCXArL0MfjzKtjlVh+tq9oDuLhIRKtInu/K6vcrjqVyHqIN2r7/UJ6m7pruJsynU
 QWNL/gwqdK652bltGr4OFzLfZO6M5p47Bb7VbfBHf9bayFl0Q6NesyCV197dBzwke+et
 +TdQ==
X-Gm-Message-State: AOAM530ySPy4jWe5Nx+kB1BzzuPiMp82ESRW2feJVvnllUc38Jwy4XJn
 zorPCdRR3S1lW0inmR/Ms1Q=
X-Google-Smtp-Source: ABdhPJwRtHGA53qzVQAfRO5i9xkHDMSRTJmtpjENMgOwLX7nr8G//q1IyCJFe1LB13PCVTz3X73oOw==
X-Received: by 2002:a9d:5d2:: with SMTP id 76mr14224874otd.55.1595702961035;
 Sat, 25 Jul 2020 11:49:21 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id m24sm1646438oof.5.2020.07.25.11.49.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jul 2020 11:49:20 -0700 (PDT)
Subject: Re: [PATCH 1/1] STAGING - REALTEK RTL8188EU DRIVERS: Fix Coding Style
 Error
To: Joe Perches <joe@perches.com>,
 Anant Thazhemadam <anant.thazhemadam@gmail.com>
References: <20200725122041.5663-1-anant.thazhemadam@gmail.com>
 <aab59eb1-baff-5de1-4e14-88ffc42db1fe@lwfinger.net>
 <d4427fb12f9d4735ec82355bbe99f7b3098fc1a4.camel@perches.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <18de15c4-1737-ae8b-b213-6f44792774be@lwfinger.net>
Date: Sat, 25 Jul 2020 13:49:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d4427fb12f9d4735ec82355bbe99f7b3098fc1a4.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, Merwin Trever Ferrao <merwintf@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Anoop S <anoop.skumar1507@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/25/20 1:39 PM, Joe Perches wrote:
> On Sat, 2020-07-25 at 12:47 -0500, Larry Finger wrote:
>> On 7/25/20 7:20 AM, Anant Thazhemadam wrote:
>>> Running the checkpatch.pl script on the file for which patch was created, the
>>> following error was found to exist.
>>> ERROR: space required after that ',' (ctx:VxV)
>>>
>>> Fixed the above error which was found on line #721 by inserting a blank
>>> space at the appropriate position.
> []
>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
> []
>>> @@ -718,7 +718,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
>>>    				res = _FAIL;
>>>    			}
>>>    		} else {
>>> -			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
>>> +			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
>>>    			res = _FAIL;
>>>    		}
>>>    	}
>>
>> In fixing one checkpatch.pl condition, you introduced another - the resulting
>> line is too long. You should fix only one such condition, but you should fix any
>> others that are introduced. You do need to document it.
> 
> I think that doesn't matter as it was also too long
> before this change.
> 
>> Patch subjects for this driver should be written as "staging: rtl8188eu: .....".
> 
> How likely is it that this driver would ever be
> moved to drivers/net/wireless/realtek/rtlwifi?

Very unlikely. It I wanted to undertake that kind of effort, I would switch to 
one of the later versions from Realtek that uses nl80211/cfg80211. Despite that, 
it is likely that only the USB driver from rtlwifi could be used.

Larry



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
