Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5652B6C6650
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Mar 2023 12:16:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8ECC540515;
	Thu, 23 Mar 2023 11:16:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8ECC540515
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wG--a2UNH6tx; Thu, 23 Mar 2023 11:16:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BC65403CA;
	Thu, 23 Mar 2023 11:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BC65403CA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D2011BF97A
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 11:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75F2C41E04
 for <devel@linuxdriverproject.org>; Thu, 23 Mar 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75F2C41E04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qmO52bJaaFb for <devel@linuxdriverproject.org>;
 Thu, 23 Mar 2023 11:16:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14A0D41E23
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14A0D41E23
 for <devel@driverdev.osuosl.org>; Thu, 23 Mar 2023 11:16:19 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id ew6so21828301edb.7
 for <devel@driverdev.osuosl.org>; Thu, 23 Mar 2023 04:16:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679570177;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IE0Q22t9nDUcBAUVsmYKmeg+5EtHh5OHc8AXl8b80GM=;
 b=GkxqU9/WWrxJjXV2FihtpM+XCrOtwgw74tCI+Sja21EDaCoOU125LeLvUNK+4vSi3Y
 NaH1kfhdgxChcMlnCDiRoPHFienGe7ZFN+JxL5Me7lhZKUorAYW0AzqjOfFNv6zZvZ+B
 J+Nc5RJ2uYQau+0n8SsHrU1ZtnelPFkDQbYANAPbErQNQDwarcesjxVLk6JHvcopsFLS
 9CIPnOgZeDgfOf78kXs26jOQ8C/k7rVC9tpLfCUtvEupawJY+CavbaEdwhr9mNnoRJpu
 8+Tnp9VjvXvOBrpa/IZaxcbA+VWoQaT7E5P4zxf+pWnDYOtM5N4MgbUrTkk4WHJ7l9FQ
 tBtg==
X-Gm-Message-State: AO0yUKV4Ukk9F/OIqoB5sn4AYYawKJNA+OdzQpPme2YhtIv2eRwwRTte
 5vLCQUMYdK4HiqEwEEAYp0A580E0fF3Fx5+JfWQ=
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
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
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
