Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F2A277D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 577DC30F2A;
	Thu, 23 May 2019 08:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emomt6970Zf0; Thu, 23 May 2019 08:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5103C234AC;
	Thu, 23 May 2019 08:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 761A01BF358
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70C9F873D2
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BIxHoaThhuW7 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic306-19.consmr.mail.sg3.yahoo.com
 (sonic306-19.consmr.mail.sg3.yahoo.com [106.10.241.139])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8F84873B8
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558599686; bh=E/uHxKenCXnIKVyqamMtzpuIm7N65ct0qGJJ0FCI1Ak=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=KpSHZCdTjK7243RLm+p4Imlzos9B2DKe0BgvJPaQgbaHxV3Ii+31GwCo8fMbEQ7RQWB74jyQ/2nAgvY33SvSz7SV7ULQ+NMrBC9yqRaScErG2BxuqZBXvDi6Vqze/gjXtTPce6Md17AJtg6zG2ISMoDcyvQZqwB9bmIk3doG414yP5F9p46Hzbv9IpqNLTngomBVPRmukwdshmmo0JJWFI7dw8kinjbZY1F2rbU6grr+rjcdd8mF0cv0yEuHmrmAqfeyU4WHhzr6Y6TDvmppvtdOom6VY66TOl5G4ZGP4uXM9HiIrRRNeekVCh4GzVWeRWRF3DwX5LafXLJpTLFbYg==
X-YMail-OSG: V2kHCuEVM1l0AtNzk0CGA4otXYpb9KmQZt95mZOk7AUWzYYuxYxCwsw2WJljq0Y
 pwLz8t_Iyc0POHGa9Fmoo25IHq4jPn.OmvJvubNmkeI5myFHZuCeOnwDSlthZc26QbF_VvdJJj3M
 teB3j1iBwORFQiCO19uNQEyBi5eRzTgxFUwtlcRXUS35EFb0gL22nwS3rIgwpprkfSLXXQH7aLW5
 0i26m1cpV6uf1ZbC0seNNDTjoTfn8mIvNKAAw6qxJLt.CogEohpdC6a2VDyxPAjBfiHSDwBzi4Uj
 TfSEosFVLfAvXl06ppqblU_UnVrBHqENc_VpBsDUC6W3j8bHuto5a_IW3gP5WejmN_u31JtkLSpu
 RDvCrWUy8QQ4OWKbwSBpDwayM.Ul4aYvYIBYREPBta1FgUibpZGUf.erYz5rKufbomDzjU.Aqlae
 GbKvm5lR33pwRuibYvl9c5J2V2pHN2TzcKEtNA7E03JiKkcBhIxpBzr_wIshWWq02IcRbZgZ_oBT
 31hQ6uxE4cyoPwlUU7gW32xAmB5BB8jEWU7OV_aWhSIHIOjDDoPR9xmPb33evnjiL4yWLYCtHTVU
 6TZ1pgnBrEznn7FFxuhTtol3JQ2UR02DWDsHdwASek1MTS5yqdN0P0a70ha73ws9H0eTANCnWVqr
 t8Sm9cPN3fXU2OrOdur2bS4U81UG9M40LM9EvQOPPeEUeHxgYbJwib6CY2nXFTD6m_jurcwxn2kI
 d66AmldD4EH3GcFkC3Nr31wFrO8Lznx_mpfi5rGxZP2S2zrdCEi4auNg9DYLt.wBMVvBUuEmaDsf
 N_mZXuXBdNurteCNW_PmyLqVj_YHXyvrUsFbw.67wGBbpS9QuvHssKE5NfQghIhuiPMLBotUwGoi
 _TVLmVH5SRtFeU3aHjRzwS1U.riEsZs88nppS0PntEkLc_nlHBVlAvsx7SW.S3JRhtoEE3fedxld
 VTUQUsWTDqcglP_9erlmAu7DTtsuuvMtSITJkPZncynYSfHNx2mbnuK4TygSgbvDmcRpa7itMuD8
 SUoFcc857og3d3gLZDTDH.mWYkoTrlxSNDX1fZe5J0wZNq3dN6o_ocPDzX2FHKyE0SSlf.nWS0H9
 NM4p3vaFkYmcObRXB8RTUgYbRNmn6f6X2ZPutIVx.rcBecYB_2zAFJh8knJS8GN4KupWJNPh5tkS
 .lni_u9l6Qx_oRh4fWSwhEDCE0JzmFRf1PX8l6QvOLlBpkl5A2A.BH7vZsoew09dMZrz.EOUMjoC
 EFinZr8tK3sDvTrGXTWQ5
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.sg3.yahoo.com with HTTP; Thu, 23 May 2019 08:21:26 +0000
Received: from 122.163.94.48 (EHLO [10.0.2.15]) ([122.163.94.48])
 by smtp405.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 4bcceba69bc3902cf75a63b0f88bd783; 
 Thu, 23 May 2019 08:21:21 +0000 (UTC)
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
Date: Thu, 23 May 2019 13:51:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523072220.GC24998@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 23/05/19 12:52 PM, Greg KH wrote:
> On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
>> In the functions export_reset_0 and export_reset_1 in arcx-anybus.c,
>> the only operation performed before return is passing the variable cd
>> (which takes the value of a function call on one of the parameters) as
>> argument to another function. Hence the variable cd can be removed.
>> Issue found using Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
>>   1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>> index 2ecffa42e561..e245f940a5c4 100644
>> --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>> +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
>> @@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
>>   
>>   static void export_reset_0(struct device *dev, bool assert)
>>   {
>> -	struct controller_priv *cd = dev_get_drvdata(dev);
>> -
>> -	anybuss_reset(cd, 0, assert);
>> +	anybuss_reset(dev_get_drvdata(dev), 0, assert);
>>   }
> 
> While your patch is "correct", it's not the nicest thing.  The way the
> code looks today is to make it obvious we are passing a pointer to a
> struct controller_priv() into anybuss_reset().  But with your change, it
> looks like we are passing any random void pointer to it.
> 
> So I'd prefer the original code please.

Thank you, I'll drop this patch then.

> Also, you forgot to cc: Sven on this patch, please always use the output
> of scripts/get_maintainer.pl.

Which arguments should I use? If I use --nokeywords, --nogit, 
--nogit-fallback and --norolestats then only your name and the two 
mailing lists show up.
(Also, regarding the mailing lists: every mail sent to 
linux-kernel@vger.kernel.org is bouncing; should I not send to that list 
anymore?)

Thanking you,
Nishka

> thanks,
> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
