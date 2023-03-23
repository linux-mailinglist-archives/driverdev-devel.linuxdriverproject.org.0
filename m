Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229716C664F
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Mar 2023 12:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C71F402F3;
	Thu, 23 Mar 2023 11:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C71F402F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJIpev1vIHrm; Thu, 23 Mar 2023 11:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AAC54018A;
	Thu, 23 Mar 2023 11:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AAC54018A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2461BF40F
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 11:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 659CC40192
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 659CC40192
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id raQxVS7xwZKD for <devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:16:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AD134018A
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AD134018A
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 11:16:18 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id o12so84799175edb.9
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 04:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679570177;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IE0Q22t9nDUcBAUVsmYKmeg+5EtHh5OHc8AXl8b80GM=;
 b=M5c/Dg7nOHtTNStfjAfI/Qab049pCAzeKHlcsBa1/T4XE4clIM7OfHD79RXGzaDU4A
 pISk2I2XgXFLd3rlXtdWMH4cHuf2/g4pLZIKee1pZ1Ew6/hjfox/Hw2BLyI5HqithrdJ
 ZO3sNHQuwyHMihiE9wupUdT3sl3UfgyOkmoYMhvC8IQATdUoommv7QxU+CgRBzeWAW1F
 Rew32ZIa972Q1NxhDcRqIB52VAMf382vRCM80DK6HkJ0yTYV6uXdGK23YTnEgcwQdJnH
 ZXqFsGlSDtfPln6/wezNO+nBVb+emJXBzkSnZTtcJX5FUef0lu8nIuhDQqEttbqRzbt5
 uEFA==
X-Gm-Message-State: AO0yUKUIkVQwPVZ4+gyi8u7UttnVP8ZnWEJ0i++4LWL55X5e80ls3TKG
 PMUMVGJxpOFU5UTfAU3sTuJSKK+bKt0LCcJY76Y=
X-Google-Smtp-Source: AK7set9x056y0rrgevJ46Wj8JBIkKnPfNP/OZ/NK6AGjEqI8MmrK+qPU5ca0050OYjftDmptoIflRV3xgSx+TsJ5NF0=
X-Received: by 2002:a17:907:d9f:b0:8d0:2c55:1aa with SMTP id
 go31-20020a1709070d9f00b008d02c5501aamr5070988ejc.0.1679570176592; Thu, 23
 Mar 2023 04:16:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a98:b192:0:b0:1bd:6284:d0ad with HTTP; Thu, 23 Mar 2023
 04:16:16 -0700 (PDT)
From: "Leszczynska Anna Malgorzata." <saliimmatayaaya@gmail.com>
Date: Thu, 23 Mar 2023 04:16:16 -0700
Message-ID: <CA+EdOwRY9_yVE0NNYMCyPKVL1YgKr=0ZOFxjmne49Si3_Je-RQ@mail.gmail.com>
Subject: Mrs. Leszczynska Anna Malgorzata.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679570177;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IE0Q22t9nDUcBAUVsmYKmeg+5EtHh5OHc8AXl8b80GM=;
 b=ZU32ne/IVqD61ABr2hzJp1SIDSrqBYN4odPzVSLtYCOErsYKODfevM/w6GuYGZM06H
 KZHmeLBLF0r/tW3ElSax/wWX+NoLdOOfgwqgKrBDwL9WweLX06ua/KGXZX9Q0iF8iqOm
 pToWoCVN4nqBRdSEpZVmlllqMVfdQQX72O8w/pExe4WVlbEdXtts7jjjYQRq59YtR9do
 c7U3TXfvHqi90POILA8wkqRwHKkIz9OjotxeONbg6xMs7mQBpktyH7h4nNuFKHrcGcWQ
 jC/Zml5W4BEkfU9YM0U37qr8nogFl9O9NXi0xGbksDGSDrinZCKi3tz6lY7cjSBf/iBg
 mNOQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZU32ne/I
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
Reply-To: annamalgorzata587@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I am Mrs. Leszczynska Anna Malgorzatafrom  from Germany Presently
admitted  in one of the hospitals here in Ivory Coast.

I and my late husband do not have any child that is why I am donating
this money to you having known my condition that I will join my late
husband soonest.

I wish to donate towards education and the less privileged I ask for
your assistance. I am suffering from colon cancer I have some few
weeks to live according to my doctor.

The money should be used for this purpose.
Motherless babies
Children orphaned by aids.
Destitute children
Widows and Widowers.
Children who cannot afford education.

My husband stressed the importance of education and the less
privileged I feel that this is what he would have wanted me to do with
the money that he left for charity.

These services bring so much joy to the kids. Together we are
transforming lives and building brighter futures - but without you, it
just would not be possible.

Sincerely,

Mrs. Leszczynska Anna Malgorzata.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
