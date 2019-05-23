Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9801B2784D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A46E880EE;
	Thu, 23 May 2019 08:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IViBVfS5WbTk; Thu, 23 May 2019 08:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D989887E5C;
	Thu, 23 May 2019 08:43:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F87C1BF358
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6810F226F3
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uUfLkbeNxZgf for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:43:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-20.consmr.mail.sg3.yahoo.com
 (sonic307-20.consmr.mail.sg3.yahoo.com [106.10.241.37])
 by silver.osuosl.org (Postfix) with ESMTPS id 981772206E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558601027; bh=aGIIPcF/RibZFDGfgJj/FxtfRaP5Mq78K/Y2aKRXS7U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=IEgwbfYM4O5sRL6j7MCS2P2DNmWN94NjlrFx9z+s5g+KOF85GYZrCeyT68XxOMPsV44Ds6cUjLxOt+cYLkDZy0Ui+O+pFoctUx8shA5HfjQnXd7BEeaDUkvCOvbrI23rzVyLg7DGDLlha/evI4BPEbeUmSz3Ecc5AKXvHQXFxswuRVtCKTzGq5qtKbUtGRMqDB1k2RspSIMdgTBVMWaNJCa2Hpd9LB9T7WRAv3Njs9kORXJBUu3I0J5vo+K0Wqzhgb7bU/CmJfP+EoLAl/mH+VsJyYx/+IELIAYxZwRucU8hyex3hLcq8TfoK5mTbwZYD10nSONKAX03b/inwNmkmg==
X-YMail-OSG: rWEMg.oVM1kPeKppvoLFj_jm5CLWGW0QI4iWL1vjo2TRAXWfqJ.OVMNAiXxQQqF
 ndhSUS4cMOLjHQLAwCJv7ec.MTAa_qapOzd5ymDX6jwwJ_BQTljQG.06U6kHcbHVcChVXGAcp52B
 EFuNVTfVkG2FvbvZZmaOVSQ6LTO5ABxSNulNYJk36FdnbINzQUYvw96J6.WCLIgkDZKM.xFvMZEZ
 eO6GdscbIKNA2BoViIb3LHyP.7i77rUOQZF3qwjAVk34HIOO4mED2JGi27H0JSHSke_wVMVj9MTq
 WmH0JIkRVpDJ9QPTAd4vJVWD9KkSS3KTmgH39d_LhMaDFp0OqL2gopMIhZJa46ObMWc_Qg0ttBmm
 rDdO_lIT5itZVEgWWC9OcT2tVKtxhNwhFLOPuVTt37IIa2v19_oGa7fYaK2O_0sp.B0nZlFcmZoD
 2QTmY0zIF8C1Ba9XfFS9T8Mvn7GXTd9.gfAQ1ZKzJVmhbMF7AO45IQAXD1smdyp6V0okwok4RTNj
 nahbUyvc8bsxAxk5wxgDYUdgk4F.oAhfFpNrVtLevCbFRmgggrr.5swg_zoGBZ.5kc9Bf.7UCWi6
 16773DqzoQ8phi9QhSTqzf97mSW_Fe2y.6ICbzWLO17ichrOE2HKjcfrYW3eKlzEAJWShhYEP_Bj
 lYJiJj2PbaxhE8EC6XwrFSfPi6OLjmqlmyYZolUyJth5s9ZqEqtXOc_wOcQ9J7yGO7TD3JLas.pL
 9lQG.NuAWzUGlDR_r41mHI_4qUUi01WMtVq2Fyw3OuJKMHgjyS92oblBfgxiNXPwCchamaEK74Ek
 EYk6DcUgpfzbwcow5L.I7yjSgx5roHIzJiCQFQc4y1Ytx_lZKWz6k7Ua..9CE_4jR4SXDlPF13ep
 MPZKwKNzplVobrQ4KOCgO2vLZnkTOA4nfJxJ7ib8ZRjoWM9bD3Fi6DqB2Egrc7BPVa04YwW5nATU
 xmrf6a0nvypEqqEu2z45_i4M5qsfXDJy24U.MRWbgRWITb3IkZpwNwLl17VP2YdIra0UjQ3.KPRG
 laWAkdhhTq7eTWpLrIsNm2q7z3YEWoeDJZJygYqn9wd4q50nUagQn0DAXE2VyZIuTnXgEg60pcge
 e9.zEsTigSBf2vx_tcuSm9JJLEh0NtPS7lbgp9EeD1yNNTDRKwrdDCZx0nPRDorkP4gbkud6zmGk
 u7rrus.2qboUgSuoDUeNKaA4RB09iJ_5kXcblZxH1hRt174dUUPY0gicDG4bZ6v5wScM5YKQZj3P
 S5cc1ihqGLLQ-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.sg3.yahoo.com with HTTP; Thu, 23 May 2019 08:43:47 +0000
Received: from 122.163.94.48 (EHLO [10.0.2.15]) ([122.163.94.48])
 by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 25c79b26375a32cee128f62f8d3166c7; 
 Thu, 23 May 2019 08:43:45 +0000 (UTC)
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
To: Jeremy Sowden <jeremy@azazel.net>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
 <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
 <20190523082702.GB28231@azazel.net>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <e0243244-2374-119d-33ca-1bb3fc16333c@yahoo.com>
Date: Thu, 23 May 2019 14:13:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523082702.GB28231@azazel.net>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 23/05/19 1:57 PM, Jeremy Sowden wrote:
> On 2019-05-23, at 13:51:18 +0530, Nishka Dasgupta wrote:
>> On 23/05/19 12:52 PM, Greg KH wrote:
>>> On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
>>>> In the functions export_reset_0 and export_reset_1 in
>>>> arcx-anybus.c, the only operation performed before return is
>>>> passing the variable cd (which takes the value of a function call
>>>> on one of the parameters) as argument to another function. Hence
>>>> the variable cd can be removed.  Issue found using Coccinelle.
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>> ---
>>>>    drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>>>>    1 file changed, 2 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>>>> index 2ecffa42e561..e245f940a5c4 100644
>>>> --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>>>> +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>>>> @@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
>>>>    static void export_reset_0(struct device *dev, bool assert)
>>>>    {
>>>> -	struct controller_priv *cd = dev_get_drvdata(dev);
>>>> -
>>>> -	anybuss_reset(cd, 0, assert);
>>>> +	anybuss_reset(dev_get_drvdata(dev), 0, assert);
>>>>    }
>>>
>>> While your patch is "correct", it's not the nicest thing.  The way the
>>> code looks today is to make it obvious we are passing a pointer to a
>>> struct controller_priv() into anybuss_reset().  But with your change, it
>>> looks like we are passing any random void pointer to it.
>>>
>>> So I'd prefer the original code please.
>>
>> Thank you, I'll drop this patch then.
>>
>>> Also, you forgot to cc: Sven on this patch, please always use the output
>>> of scripts/get_maintainer.pl.
>>
>> Which arguments should I use? If I use --nokeywords, --nogit,
>> --nogit-fallback and --norolestats then only your name and the two
>> mailing lists show up.  (Also, regarding the mailing lists: every mail
>> sent to linux-kernel@vger.kernel.org is bouncing; should I not send to
>> that list anymore?)
> 
> He is listed in the TODO:

Thank you.

Nishka

>    $ cat drivers/staging/fieldbus/TODO
>    TODO:
>    -Get more people/drivers to use the Fieldbus userspace ABI. It requires
>     verification/sign-off by multiple users.
> 
>    Contact: Sven Van Asbroeck <TheSven73@gmail.com>
> 
> J.
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
