Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F8F51E662
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 May 2022 12:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7220260A8D;
	Sat,  7 May 2022 10:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vb0jK_UMH5oj; Sat,  7 May 2022 10:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E8F607D1;
	Sat,  7 May 2022 10:10:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 008C61BF3E0
 for <devel@linuxdriverproject.org>; Sat,  7 May 2022 10:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2240827F0
 for <devel@linuxdriverproject.org>; Sat,  7 May 2022 10:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oglp9lFzliVt for <devel@linuxdriverproject.org>;
 Sat,  7 May 2022 10:10:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CFC4827D9
 for <devel@driverdev.osuosl.org>; Sat,  7 May 2022 10:10:52 +0000 (UTC)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-d39f741ba0so9673343fac.13
 for <devel@driverdev.osuosl.org>; Sat, 07 May 2022 03:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=5qi2JGl5h54uiAntgWnhsjNFNm1ZvbvPfrNPRigFnFo=;
 b=SNXh/kfBr29xcFoicEuc4rDizaU2SmaOfbB1giifZ1N4YR4/l2iRZVqpR9R56Yisr0
 rftNszRfCmyiBgY82vN+ll4gzuo8Jg1UVr4a0aDtYyY9XOM1cKVN9OP2OoVTCz4GeWzO
 l0q3OiXJjJaoWnQd3OUiskhdWxFN0XjBGRVNN0CFbnMN4wF2zwaTwwsILkIMRDNU8VCg
 E2vdQv0bleGMYb4JZn+c1EJvHU6BGGoYPRiG+7Cfh6W3sRlnjR3lUsfVZxppAtCmphh5
 cjqO6QFqZdwDdzovbCeCYNUq5MPZxuO9ZCt7lu4pzpqLzLET3rEAanoVIg1C639kJuIj
 d2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=5qi2JGl5h54uiAntgWnhsjNFNm1ZvbvPfrNPRigFnFo=;
 b=o/lBZVco4oFyKY9yQ1b30uUDdnBEAG4QSIm+sJVUHkv6MUuCbe/uuPIx1Q/h0BRB7Y
 /wvhuGPRm61SaRN6uVrKQXVUtuSJ31YTWRzaqyND8JqwL2UUufiGaxOpnHZ5xM96IM2z
 1IFmrlJh7suId9XDbF8vsyAeqqbryMmGjWf61mN0+tUQUr6vKSzwrgsqFiTpag3gZWUJ
 x8zoJ4dH2dCuBnYHdkF1r+9T3oDWYW1dO8klKhsL8xA/v9S9f9mnpm4OQyJFEBL1qwbX
 HWldvHLWaWrEwW2r2rDN9/+r5J3Ge4mEW7VWqsCRmbEKhvGnwfMN55oBxSspWEv55nRT
 YBwg==
X-Gm-Message-State: AOAM532AmRMT87s2rc3l7jvk1jFiBUN5hG2343YQ5foh1HrS3cJk1THx
 oa9RR3qPAsOBf35FMdBzbpqb5Gripfp+KkPFV9U=
X-Google-Smtp-Source: ABdhPJzJZ3vX61Y2PNx7k8sU3xdwzDBgYxxFBY5ASwUDjPUj90kISGY3yaGnnrYPmQ7mF75LsuiAsji/FTPEIfG5bX0=
X-Received: by 2002:a05:6871:7a1:b0:ee:4c48:bfff with SMTP id
 o33-20020a05687107a100b000ee4c48bfffmr943092oap.118.1651918251147; Sat, 07
 May 2022 03:10:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:9399:b0:9f:d91c:3d7b with HTTP; Sat, 7 May 2022
 03:10:50 -0700 (PDT)
From: "Dr.ahmed musa" <ahmedmuso714@gmail.com>
Date: Sat, 7 May 2022 10:10:50 +0000
Message-ID: <CADNue0aXM5iaViBcyz80vVbfYyizPkOTJqgdqvm2sKXF1mkTXg@mail.gmail.com>
Subject: 2022 FUND RECOVERY / COMPENSATION PAYMENT DIRECTIVE OFFICE
To: undisclosed-recipients:;
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
Reply-To: kamaraalima287@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
2022 FUND RECOVERY / COMPENSATION PAYMENT DIRECTIVE OFFICE


I am a foreign delegate from the United Nations fund recovery
committee office/ compensation directive office , your name and
address  are among the listed and approved people for this payments as
one of the scammed victim, i wait your swift response for the
immediate payments of your US$2,550.000.00 compensations funds.

On this faith full recommendations, I want you to know that during the
last UN meetings held at Africa ,it was alarmed so much by the rest of
the world in the meetings on the lost of funds by various foreigners
to the scams artists operating in syndicates all over the world today,
in other to retain the good image of the country, the president UN is
now paying 50 victims of this operators US$2,550.000.00 each, Due to
the corrupt and inefficient banking systems in Africa, the payments
are to be wired via direct transfer, online banking transfer or ATM
visa card,

According to the number of applicants at hand,12 beneficiaries has
been paid ,half of the victims are from the United States and Asia, we
still have more  left to be paid
Waiting for your swift response in other to advice you on the next
step how to process your payment.

Thanks
Dr. Alima Kamara
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
