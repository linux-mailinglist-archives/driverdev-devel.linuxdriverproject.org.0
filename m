Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32428277D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:22:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0B668665F;
	Thu, 23 May 2019 08:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L245jDFxsuRz; Thu, 23 May 2019 08:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 555D186613;
	Thu, 23 May 2019 08:22:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4269B1BF358
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F943226F3
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hwHfbPS6EJjz for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:22:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-20.consmr.mail.sg3.yahoo.com
 (sonic301-20.consmr.mail.sg3.yahoo.com [106.10.242.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 836E622270
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558599756; bh=S/RYG7PLBW+LGmJyez+/BcqjtLOCtk5wnRcfRY24JtA=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=daEP2ToezwdyEkEO4JFynEqWCFw5GIFejhWi2qlAfjRmrTcR3eBjteuX1VbCzSxvpz3IlhGaYmWTDDkYffUzTk/1IMxg2z7u7hdwFXISSDN+GBoTLK/YsN1V2RduFK8B9r08+s6mzzk7ru995iopz/OkbnfzKwlu4QNuK24oE46E/k2dLhfTl60xSLjnSHTOLMd2aMyaR/nv2uJksJolUQ95vem5t+zfBSzCzsVNXlV6VtOk68pbNzqWSoLwZLWnuttVzEcXMhk25n7ir/XgrMPggOIbNKsIjsU9Gi0mdqJUHSKYvvY0PXqX5KFO8r6ROaSGfv4ulMsrQIb+vQagrg==
X-YMail-OSG: BtiK2OYVM1mDqny_nHk1mG.MVXLHMWkKi1xhqZIt6pMp3Ery09XOhC_81HaeYZH
 Iavfr9GjoIOQeXFZOj2bU23L1jJg90.6wIO8bR5FYa9u0n36w7pyvXBu3B1I1pcolT894YeJkJ0S
 DsnE5JTjJ4hUZ98IvbbIBdrG0jfnHrsJMizAyILffURIfSMkuiCLRJoAvVyvPIGjoSKy800nGr22
 GtK3YtVg_SfnehPQg1x5wl74Dglp6oaEOrlR2cH3NsOYmNcV2WAEEoXJTfpkr9TmR0yiq3guqZvJ
 rGU49QtUznmF8nHwkoX0An9.zNK9xS6e0TR_qwSGDvZ5y.oDlp0Tz94W8kx1_ArGTisc7CIa4gPV
 9oqJqNQMQMS34uaO94Be9lcQaWuauWPE.0Fho3LJw0LtbXShTWM4woYiocyubeAKs07beF_h.KA.
 ._bpxnC2BH3yB261XlGlgoHJy5ZC7mgqPpu.9JQULdBN.St.OIVli1Bejq4MkGRdgHH3k5ax5Jrv
 e3OAuAxlvjL.An955IcPsyr5.Yo_Wg8dydKpnpCRRfJzvjF1gP0ntyOfukzqG1RldcvyXCpYH5iP
 m0EQqdLMEje0QvHtyJqmDNJuY8gYEzim0D1NA74oX.T0WISgm3pmao6WZzW4zvqMg_S99gwZJDmg
 ZIDPMHMiWQAXarf7WE2_10CMxrIV.C32y9kFoUa00YwlbiqHztXsz5m_VH8QuTSSUl9HuH5PbYnw
 IKVJMW1bopu6veBhHc61TQxUEsBklKKPL.AMoSSB7DRIxIXAFxCTRuxGNX1re8Cz_u3UHF1ONg8Z
 UXwROK4Vi7sin8eyvp5Y10zRFdnsnS6CmhAhe4pZsPq5Kl_YfKA8pBymPoRpsUXdLD4Mo6ksmOZn
 GQVnPRb1Ulf6CB4NqE9a8Uu3epr1XQMuDPHbgZKqyAF7hv0JXXN7vbFZBQ3ayZidHIIT_9WdjgrJ
 iddUgQefTaOjNrvmUyYgito7hHgQ2ZFpZddVVahYJoVjYcUKu6g.AUTD4flCKY_blvru3aXvzi7G
 eBasgiYUjKz2vmjluuzvZCA2ROjI7IXMzuPIrICoJqttErpT0YZiSpGvgJpTXIEJo08AekloUlDY
 a9KgmrBTM8tAnB9cMUMAIKdeF.YzgFbv5dpRF3VJ6MZFIveYLghE8u_Ml68f7Sgcj994Md8RJKYG
 roxrfsAPVmdamzm9fI1QCmZBBmXrCm_pkBUOFPWzmEcEZNofRmcMLV._9eEdKeycxR2rXhsGaGyH
 I_UiCDEYurbzpuQg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.sg3.yahoo.com with HTTP; Thu, 23 May 2019 08:22:36 +0000
Received: from 122.163.94.48 (EHLO [10.0.2.15]) ([122.163.94.48])
 by smtp410.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 fb10a1ac34e19c3e25811b0148e9b370; 
 Thu, 23 May 2019 08:22:32 +0000 (UTC)
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove variable
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190523070531.13510-1-nishka.dasgupta@yahoo.com>
 <20190523072246.GD24998@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <4a3d571f-5987-6735-be56-7976457d0797@yahoo.com>
Date: Thu, 23 May 2019 13:52:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523072246.GD24998@kroah.com>
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
> On Thu, May 23, 2019 at 12:35:26PM +0530, Nishka Dasgupta wrote:
>> Variable client, assigned to priv->client, is used only once in a
>> function argument; hence, it can be removed and the function argument
>> replaced with priv->client directly.
>> Issue found with Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/fieldbus/anybuss/hms-profinet.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
>> index 5446843e35f4..a7f85912fa92 100644
>> --- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
>> +++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
>> @@ -124,9 +124,7 @@ static int __profi_enable(struct profi_priv *priv)
>>   
>>   static int __profi_disable(struct profi_priv *priv)
>>   {
>> -	struct anybuss_client *client = priv->client;
>> -
>> -	anybuss_set_power(client, false);
>> +	anybuss_set_power(priv->client, false);
> 
> Same comments are relevant here as the last patch you sent.

So just to clarify this patch isn't necessary and I should cc Sven?

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
