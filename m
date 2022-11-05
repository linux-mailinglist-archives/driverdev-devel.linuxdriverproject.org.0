Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BD61D7ED
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Nov 2022 07:32:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D006C40256;
	Sat,  5 Nov 2022 06:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D006C40256
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eBmOKBEOM9fK; Sat,  5 Nov 2022 06:32:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AF2B4000B;
	Sat,  5 Nov 2022 06:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AF2B4000B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 28E901BF2E4
 for <devel@linuxdriverproject.org>; Sat,  5 Nov 2022 06:32:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00A9F41A40
 for <devel@linuxdriverproject.org>; Sat,  5 Nov 2022 06:32:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00A9F41A40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xujq6Xy5C8I7 for <devel@linuxdriverproject.org>;
 Sat,  5 Nov 2022 06:32:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD79841A3D
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD79841A3D
 for <devel@driverdev.osuosl.org>; Sat,  5 Nov 2022 06:32:31 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id 21so10473776edv.3
 for <devel@driverdev.osuosl.org>; Fri, 04 Nov 2022 23:32:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RErWd8IxsdYGf3tfe3RD/UB4iJwHSbokQcwUqvQyekA=;
 b=ShS1Kogn1HtVaXYQ5Tj69BfQEzRIUjaBpP02X1GFwcT3i/WXWHhqbY8l9lSFqJarkh
 6uM2zVxOHhMWAIUcshiW0P9oOeCZXelfClhtD7WDNo1wiThE38KPOUYnN9WjD2U7EZt6
 U+lmbWNSSG/Vzxmts1skwmobp/26bJJJcTcFPdWVDnv/NyPhcK2AhX/0pMt2K1G2bD1d
 6QX96GPl9zzAWE4knreT+bWcN7tesSigyOiV/E9tP5s6+ZfAV78IF1E73STvE3j0TIgK
 5rjzL8NHFUM8CB9XFcKNzbdQ7VCRtjfr3c87LWP8h43U5h8zoiw9mHs21fbpI4OUJ6V2
 rPRQ==
X-Gm-Message-State: ACrzQf1ngQcsZTUfYRraGV0JssPaYBb+GtqWwFN9KvF5cWjFMSSM/hh0
 BjD9fVWUl4p/8GBho9aZItI294XCOk2dCluSkMA=
X-Google-Smtp-Source: AMsMyM7g44PWSRqRCjIzfOxg2Xi1nW4v2IuyE/aIRlPzaU78kZEejrO6uVSJxdNgFxxKLo8iLPUXvzfhvmH/YxcG0rU=
X-Received: by 2002:aa7:db96:0:b0:463:a60b:bbcb with SMTP id
 u22-20020aa7db96000000b00463a60bbbcbmr25382246edt.198.1667629949620; Fri, 04
 Nov 2022 23:32:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a070:0:0:0:0:0 with HTTP;
 Fri, 4 Nov 2022 23:32:28 -0700 (PDT)
From: International Monetary Fund <harrysteve1722@gmail.com>
Date: Fri, 4 Nov 2022 23:32:28 -0700
Message-ID: <CALTCeQrb1MWmvk04b46+0RbAA61147mYr3PgxMJ5UWTXxmBe-g@mail.gmail.com>
Subject: FUND BENEFICIARY
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RErWd8IxsdYGf3tfe3RD/UB4iJwHSbokQcwUqvQyekA=;
 b=HQolUCMqzA0vT100NyFvnmrHFdrZ1bPob+aUQ0XGgyjRX84QQ9Uo8UnfDSuKnaMrCB
 GxC9x8nPVc7wqV2Fs1tARCfg3Km08+fUF7zky6uEu3pKdtmK0+Pmb16j2J3X7hGFU5lC
 fmwqC5MNbhw3VrKuyBCiuRzThELXoYA6LO6/GUTdUMBQV5W6rpjxEDbvaPxMDnca1EyN
 H+FmnmsBX4iIxaUuarMdFC6JiNyLSm2O97xNnKfqVIrdZSB2EyyDUhLuZk5g/7Eb85eK
 Zf7HKYUG0IqWqc8OmECmHKrljAApF/Wb181L26pCV04zZw9bztgcJyivMtnHdR0u8rUG
 igpg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HQolUCMq
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
Reply-To: imf.office.dp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

International Monetary Fund/United Nations
Foreign Debt Settlement/Reconciliation
World Bank Headquarters

Dear Beneficiary,
Greetings from the IMF headquarters,
We are surprised to hear that you declined our notification over your
payment alert. This is the 5th times we've contacted you to receive
your compensation sum of $1.5Million dollars but all prove abortive.
For your information the IMF and the World Health Organization (WHO)
have paid many victims their compensation for the ongoing (COVID-19
Disaster Payment) as a relief scheme. Your details are now required
for payment processing through our affiliate bank.

The needed details are listed below:

(1) Your given names and Surname
(2) Your contact home address:
(3) Mobile telephone number
(4) Your nationality
(5) Your email address, Age and Gender
(6) Your occupation and Position
(7) A scan of your international passport or your driver's license for
proof of identity

Send all the above details via email: {imf.office.dp@gmail.com} to enable you
receive your funds

Yours Sincerely,
Kristalina Georgieva
Managing Director
International Monetary Fund
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
