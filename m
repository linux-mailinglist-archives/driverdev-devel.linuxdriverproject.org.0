Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74019838F
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 20:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFB5C86885;
	Mon, 30 Mar 2020 18:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 735bZCI1WR-Y; Mon, 30 Mar 2020 18:42:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CC0586672;
	Mon, 30 Mar 2020 18:42:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80BAA1BF324
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 18:42:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D00787D39
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 18:42:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0sInp6-ST-pl for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 18:42:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9796687CDB
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 18:42:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w10so23032926wrm.4
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 11:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8XRhKogyecKsSV4qW1x8hTrVeQGUH4iCc/CcjgU9mck=;
 b=TisMD6pc6Nd4x3AkXj4VNDomK/Xtj35nFvmaVY4nv5rIDfxx33N2APlyiTAHrAV+VP
 zs3VrrOhOHSW+aVcm+6AvKmp98Pt+z0Y8y5UmKhv4JeMiSxNUTUO5Ix8BJb+XZJyzhGB
 oTMdBAs918AYZFoFmsY4UszXjdtDqyW5zEtiBETWyWNgj4TMCM+QPTIZU4rLIfzexAGa
 BY5Ma5FjSYgeqDmOcliXyrw/KopFnuxwxjlhy3tD3YYxS6PHFG3OiL0Uyn3gJhNNc/k1
 ljVqKTfWz0UZ7WX1nu+jqrMgspXlghGq2KicbbSiNAaNwix6NK5IiT33+wtJOyIhAV5Y
 LYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8XRhKogyecKsSV4qW1x8hTrVeQGUH4iCc/CcjgU9mck=;
 b=LVlSDefdngdkCSjX87k2HhdmTf+RI9K6lKj8j1LG7COejMWLpGncDFJDh8KEeaKHXG
 54vU/1+H2FEAEM2XI8uBjLqXN2Kz7jmAtAfM+WjHLqnd4XDREbYcqjTsezCMgwFcSAVT
 UVOpmld8QboRplwa11+C0GSdzkBfz8PhCmho7I7XM1LD+DF1kdx/xJn0NtmzmwUiv5xb
 SaMtyX84wDSvyN45UafOC6VeVGA4RUEVNsaHDd7airBEwpi0o6LPcbJquE0zt1KYY5nV
 JYp9cHc+3OOztGee3VTVtTJBILnuAS9ITxTEo5nHObTrbMhHL6NjOi540mCq53/757z7
 90Ug==
X-Gm-Message-State: ANhLgQ2wI26XRVtlg9foTFGHju1c4UfC9tgmC8+JIppzb013Y+mnVgRg
 z8cYrO3MleMIgJ29pAfQjNY=
X-Google-Smtp-Source: ADFU+vvyblRcuB/8qGRcZ3vhqfycuOq1xwgm01TAbEu5m3oAn9STi5PDPJAm79E//bCc1ncE13UYNw==
X-Received: by 2002:adf:fb0a:: with SMTP id c10mr16054757wrr.272.1585593731920; 
 Mon, 30 Mar 2020 11:42:11 -0700 (PDT)
Received: from [192.168.43.227] (188.29.165.144.threembb.co.uk.
 [188.29.165.144])
 by smtp.gmail.com with ESMTPSA id z12sm24608045wrt.27.2020.03.30.11.42.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 11:42:11 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v4] staging: vt6656: add error code
 handling to unused variable
To: Stefano Brivio <sbrivio@redhat.com>, "John B. Wyatt IV"
 <jbwyatt4@gmail.com>
References: <20200330164530.2919-1-jbwyatt4@gmail.com>
 <20200330191439.3bfcb658@elisabeth>
From: Malcolm Priestley <tvboxspy@gmail.com>
Message-ID: <c2e96efe-64d7-61d7-0c4f-58b318b47a68@gmail.com>
Date: Mon, 30 Mar 2020 19:42:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200330191439.3bfcb658@elisabeth>
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 outreachy-kernel@googlegroups.com, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 30/03/2020 18:14, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 09:45:30 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
>> Add error code handling to unused 'ret' variable that was never used.
>> Return an error code from functions called within vnt_radio_power_on.
>>
>> Issue reported by coccinelle (coccicheck).
>>
>> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
>> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
>> Suggested-by: Julia Lawall <julia.lawall@inria.fr>
>> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
>> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
>> ---
>> v4: Move Suggested-by: Julia Lawall above seperator line.
> 
> Actually, as Julia didn't suggest this patch, the place where you had
> this in v3 was the right one.
---snip
>>   
>>   	switch (priv->rf_type) {
>>   	case RF_AL2230:
>> @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
>>   	case RF_VT3226:
>>   	case RF_VT3226D0:
>>   	case RF_VT3342A0:
>> -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
>> -				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
>> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
>> +					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
> 
> 
> Another thing that should be considered in this function is to restore
> the previous hardware state on failures, but I think the way you're
> handling this is possibly the safest, without hardware to test on.
> 
This section of hardware is controlled by mac80211 as is most of the driver.

Users can turn the wireless off then on again to try again but to date 
this is not known to fail with the hardware I have used.

No problems with hardware with this patch.

Tested-by: Malcolm Priestley <tvboxspy@gmail.com>



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
