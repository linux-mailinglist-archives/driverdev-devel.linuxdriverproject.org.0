Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34F193B41
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 09:47:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01B9E88AD3;
	Thu, 26 Mar 2020 08:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id frcVBd79Y+xE; Thu, 26 Mar 2020 08:47:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5518A889C0;
	Thu, 26 Mar 2020 08:47:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 785E81BF380
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 08:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 715F1883F2
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 08:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4SQG2yDvcZy for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 08:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05916883D2
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 08:47:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id m3so6027420wmi.0
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 01:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aHsFOW/hRqJNBE26Z5Tub2WJh8U/eUTrSdlnpK42LdU=;
 b=K2/UIb0SKVqYqh8r2H12voDOpO0H039juj10pbN91ol+gT5TlMsO16CcYLXW5nGseJ
 RjUw2ZVwtcpGz7ANIAb1H97nQmPvCo8HSDgLq/NnXnORWtAJkjOIiSoh6ABZLwtYh89v
 3eDGJar5Rr3Tp4MwKnxEVqN3tKmSx2W9eM8vPJRTp1t+mHDFTHJ/Y4dF4GmpV8f/Tq8W
 Y38RAZ768onB+G84eIZq6aqlARVB/DwRHPThxtlSoCYl7b6flYWsi2L1KwQFtdnidpQg
 qT4+uviao1LrO4aQl3lwIV7naNh3UI4h5KEK8e7SGsWqxFV8V57QyEaKtuFB0Y9pwbm6
 vIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aHsFOW/hRqJNBE26Z5Tub2WJh8U/eUTrSdlnpK42LdU=;
 b=rwxJzQ5cOJoIPvYiqo++XT8Opxd/dpMIksmekPCNFw/aP2CsQUMOUvK8DoudbMsBwm
 SVZmYw8SjOm8HZJP17JIVokWyL3Jwy9kGoeaHv2SBNIxwRovCmwbYREyjf3uLZfM6p+Z
 NdTCSdm6Z0drlw3Y/CviSLekJlg7UlA/g7Rp8nC9t4cG+Wk5BMhHkOnm3SZ4hgtYdsQX
 4FyZ96bRCezZi8lO96bsBvI6xBtfh8LtE2YoZDcw9R88bmW+vad7NPk3RjRDjDssyoJw
 FX6ivKJwCo6PO6i6qTCl+7N7+r7W8LP47gfIb9jrX/Z5NT5P8XW/fbqjpeI04zpZHaJi
 vRrw==
X-Gm-Message-State: ANhLgQ0Q77Vkh4y8h5IVGB7VsID4eOZQqOXI94oHUhaOE+7r+Jgxuzn1
 G8TyoJnts36ae6VZn0lh4Z4=
X-Google-Smtp-Source: ADFU+vtf+5fVBQiQHUFA4G1j/8ab61fwr3VH/WIprGNCGY1eVEd78rWMvs31OrRFnqCyzgrVsyRzDw==
X-Received: by 2002:a1c:9904:: with SMTP id b4mr1995516wme.34.1585212420392;
 Thu, 26 Mar 2020 01:47:00 -0700 (PDT)
Received: from [192.168.178.22]
 (dslb-002-204-140-180.002.204.pools.vodafone-ip.de. [2.204.140.180])
 by smtp.gmail.com with ESMTPSA id s131sm2527282wmf.35.2020.03.26.01.46.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Mar 2020 01:46:59 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: cleanup long line in odm.c
To: Joe Perches <joe@perches.com>, gregkh@linuxfoundation.org
References: <20200325215940.9225-1-straube.linux@gmail.com>
 <9b369028adca4105c376094db569637cf8bb1fa2.camel@perches.com>
From: Michael Straube <straube.linux@gmail.com>
Message-ID: <147371c7-54f9-3d17-b497-24044aa5c654@gmail.com>
Date: Thu, 26 Mar 2020 09:45:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <9b369028adca4105c376094db569637cf8bb1fa2.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2020-03-26 01:08, Joe Perches wrote:
> On Wed, 2020-03-25 at 22:59 +0100, Michael Straube wrote:
>> Cleanup line over 80 characters by removing unnecessary parentheses.
> []
>> diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
> []
>> @@ -590,7 +590,7 @@ void odm_CCKPacketDetectionThresh(struct odm_dm_struct *pDM_Odm)
>>   	if (pDM_Odm->bLinked) {
>>   		if (pDM_Odm->RSSI_Min > 25) {
>>   			CurCCK_CCAThres = 0xcd;
>> -		} else if ((pDM_Odm->RSSI_Min <= 25) && (pDM_Odm->RSSI_Min > 10)) {
>> +		} else if (pDM_Odm->RSSI_Min <= 25 && pDM_Odm->RSSI_Min > 10) {
> 
> The test above this already guarantees pDM_Odm->RSSI_Min <= 25
> so the block could be written just
> 
> 		} else if (pDM->RSSI_Min > 10) {
> 

Ah, yes. Thank you. :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
