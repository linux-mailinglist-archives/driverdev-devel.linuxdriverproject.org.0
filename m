Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 191AB5B2997
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Sep 2022 00:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0364136C;
	Thu,  8 Sep 2022 22:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0364136C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rQPblcSYhHIV; Thu,  8 Sep 2022 22:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF6BA41295;
	Thu,  8 Sep 2022 22:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF6BA41295
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55F201BF387
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 22:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30D58827CA
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 22:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30D58827CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27MXGMhGBRBr for <devel@linuxdriverproject.org>;
 Thu,  8 Sep 2022 22:51:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEED080DA3
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEED080DA3
 for <devel@driverdev.osuosl.org>; Thu,  8 Sep 2022 22:51:19 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id bq23so30243155lfb.7
 for <devel@driverdev.osuosl.org>; Thu, 08 Sep 2022 15:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=hK15mOGR1sLrRSE9uxghxmGpoWK45hR6lwfMjMyiPds=;
 b=5wfN1b8+0IoM5IJJdTLjrO4XJHaI3NVjt3I90rVkNOIvPvUjODWLd0x8Y5LXed0ula
 tK/L+beC/QYlovpXWKD5HXTxfGnoM0LM3keFBYOZJPFVLsdYGPKcd/armwLfSesnvXpo
 fyQ376vepSbJBDq9y80u9Hr1ZBYk1PzQ/oRiuMMra5uABUObGkWiLQ6oN8GlOdyqLx7N
 d7MFX904GsQtpvVQjnVeh9/2jGa/3OpUwPJWEEeC/GfBK1K7efvdOx/ojR8Ud4rOO+Yd
 rCkX2l+612cO9zc3wtdM1r2tM4VPtjokYEPZshbCcbVpV1rRUE/iK4Mexg58Cr4Tpw/D
 bgNg==
X-Gm-Message-State: ACgBeo1rRJ6mJBduQfBtvDXSjimpp/Jf4kLI0FBvzpGdf2FLXvaOjNmk
 oDzt866k+JXPQvJRTHY2BcbaD0HA/a/DzWH6ovo=
X-Google-Smtp-Source: AA6agR66MaumXegErZu4hDEfatGHlpjzI04bg0U/N7MrZIgrtISCyKYXx229gHVJ0HrGom6RsUBKvgmxY2kSVd77xoE=
X-Received: by 2002:ac2:4f03:0:b0:496:d15:e70c with SMTP id
 k3-20020ac24f03000000b004960d15e70cmr3172672lfr.102.1662677474547; Thu, 08
 Sep 2022 15:51:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:1e03:0:b0:1e4:50f1:86ab with HTTP; Thu, 8 Sep 2022
 15:51:13 -0700 (PDT)
From: MRS Salem Chantal Lawrence <salemchantal100@gmail.com>
Date: Thu, 8 Sep 2022 15:51:13 -0700
Message-ID: <CAK3F0AJKZ-u5o94bOcGcVni=BieHCA_eQTNyuDgQC1R-VpjSSQ@mail.gmail.com>
Subject: International Monetary Fund (IMF)
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date;
 bh=hK15mOGR1sLrRSE9uxghxmGpoWK45hR6lwfMjMyiPds=;
 b=h2oEPxOBBDgwd7jA+z4bUToX4QDMelnXLcaO3AeewvdXaWxlvkbRCtRg55xASBjomm
 vfgl+AWTQTqyS23V9oE1yHrQrhhJJ+yrM09e+GKy81HHBULDAdB7qXj9LuTzyIxasNo2
 QsJjBRaw+mpR6ajmrAEnGSa3N7XJ4U5bTk8c6xgAhADIyZzGH9FW3tqjWW6V1cV97KBV
 RBZs15+UMoX4LNo4qCwt1B4AGIxaMdjHtn3ptfTYCfCkUUIKYDnPsY8XWG7Vc6vlIAJg
 yMPNGV/QENs/PStBMUzhTPESceSTgoz4pOYDaqGw66Rl02pCOdjEzoQx+wiLtU5ZWV9X
 3Prg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=h2oEPxOB
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
Reply-To: mrsbillchantal@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attn: Beneficiary!!

You have Been Compensated with the sum of 4.6 million dollars in this
United Nation, the payment will be issued through ATM VISA  CARD and
send to you from the Santander Bank, we need your address and your
Whatsapp number (mrsbillchantal@mail.com)  contact  me.

Thanks.
MRS Salem Chantal Lawrence
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
