Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9391A4897
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 18:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA7FC88360;
	Fri, 10 Apr 2020 16:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOucM7waRHBy; Fri, 10 Apr 2020 16:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46E508830F;
	Fri, 10 Apr 2020 16:41:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8841BF2EA
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 16:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5AD582206D
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 16:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3UnPu0hvgBW for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 16:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CCD6214E4
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 16:40:57 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id h9so2851647wrc.8
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 09:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hQN/YbSH1U0Hdym1a0eKmIzW7Vl10c/CjDwiNW+YpC8=;
 b=rsK67ak/QIkS4dSW//qtxUdMlLEkfnTtXsElMGAefgL1zRabCq092PAXFJ6rYPp8Mf
 1ZtA8SMpgWt7ur5BK1il8bVz0DavyiJWhvyRzNBlkcRH56kL9WBOPs/TEjvaFdX8IQPp
 DpllDqyn7Wq4uOBw0e5KpJINVdRtcQGk+f8ecePPV3ogN5Q/TYOjBn3m0VonYMFliE6q
 WfhTt8Wx4MKSkcPKo61NHhbrneNzzgDrqZ3nMOXOU8qOhA6tCBPsbETAJoXfaQ9AGuOb
 ML2MWSu7+njetBcevS5hqh5Fhh1euE4SFRKY68P37FVQETyKdWKLrUxibvtNIVoRj53d
 0MmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hQN/YbSH1U0Hdym1a0eKmIzW7Vl10c/CjDwiNW+YpC8=;
 b=RaH9nLGtp2jAoRO4jKQEK/7lUZvZ4mpXn3drApwnzMsOfXUZq7ZwRa5Uu0EVVUxzNH
 Y0Sb1SZoBDkFAJuY3uzeV2OILpF78Sd7N2gVkmhY2rTAWjRTIMykWlqy6YhLbT5XvG7x
 UtyC3DhT/yoPworGzB3Pr59wpYbGoyuvE0SXa9uw0MPxOU4LVRBgJx0q/lT9J4no0bgA
 CP6spMkoa178d3iuCAN/nWoNKSFzu3xN6oDC7qEnnlIWcrnJqQVwFuUMJbWVEXUkXoDv
 ivDyeydRpcPw1Rz+G9YOMKjpFspTX11nG5/wcLOzk+6zfnKAIlnRhv5akBnOqdaBDbU9
 dXtA==
X-Gm-Message-State: AGi0PuaQg44j3ngv7+vuTMlfIQNOwFbRMoNLHlV7HWZaEjaBoklS1YyY
 v7sxYWAvudcmybUwlMMmR2I=
X-Google-Smtp-Source: APiQypIDNW4vIKXpG+QLg0z43/iuXFAou/wGZaok0x+1OLRghgU5g1By6zyECCQVBjFTlxOUm5wGKw==
X-Received: by 2002:a5d:688f:: with SMTP id h15mr5486012wru.352.1586536855546; 
 Fri, 10 Apr 2020 09:40:55 -0700 (PDT)
Received: from [192.168.43.227] (94.197.121.102.threembb.co.uk.
 [94.197.121.102])
 by smtp.gmail.com with ESMTPSA id z3sm3309100wma.22.2020.04.10.09.40.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 09:40:55 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
To: Oscar Carter <oscar.carter@gmx.com>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
 <20200410112834.17490-2-oscar.carter@gmx.com>
 <986e8e5e-245a-cc70-2c6f-8ac3a4a485c9@gmail.com>
 <20200410155911.GA3426@ubuntu>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <fcc434e9-9da4-4f24-19cc-bac8fc7166ec@gmail.com>
Date: Fri, 10 Apr 2020 17:40:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200410155911.GA3426@ubuntu>
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
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 10/04/2020 16:59, Oscar Carter wrote:
> On Fri, Apr 10, 2020 at 04:37:59PM +0100, Malcolm Priestley wrote:
>>
>>
>> On 10/04/2020 12:28, Oscar Carter wrote:
>>> Create a constant array with the values of the "phy->signal" for every
>>> rate. Remove all "phy->signal" assignments inside the switch statement
>>> and replace these with a single reading from the new vnt_phy_signal
>>> array.
>>>
>>> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
>>> ---
>>>    drivers/staging/vt6656/baseband.c | 101 +++++++-----------------------
>>>    1 file changed, 21 insertions(+), 80 deletions(-)
>>>
>>> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
>>> index a19a563d8bcc..47f93bf6e07b 100644
>>> --- a/drivers/staging/vt6656/baseband.c
>>> +++ b/drivers/staging/vt6656/baseband.c
>>> @@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
>>>    	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
>>>    };
>>
>> Actually you don't need the second values
> 
> Great.
>>>
>>> +static const u8 vnt_phy_signal[][2] = {
>>> +	{0x00, 0x00},	/* RATE_1M  */
>> The driver would never attempt use preamble at this rate
>> so it's safe to include in with the next 3 rates
Sorry got this wrong the driver is trying to do preamble (short)
at this rate and it is not working.

So don't apply it to RATE_1M rate.

Regards

Malcolm


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
