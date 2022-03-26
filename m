Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01134E837B
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Mar 2022 19:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D89CB4015A;
	Sat, 26 Mar 2022 18:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nzpv6dd0iHB1; Sat, 26 Mar 2022 18:45:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ED6340129;
	Sat, 26 Mar 2022 18:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E524E1BF427
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 18:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC8D140902
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 18:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IyXLSGytCW1C for <devel@linuxdriverproject.org>;
 Sat, 26 Mar 2022 18:45:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D86540901
 for <devel@driverdev.osuosl.org>; Sat, 26 Mar 2022 18:45:43 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id dr20so21166016ejc.6
 for <devel@driverdev.osuosl.org>; Sat, 26 Mar 2022 11:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=CIJp5wIGNWfTgX1euazFf4UzLvecmkYBEZnvZ0Yavpo=;
 b=hvokuGS5VX/a6vVo72PBuCC/jpJ7GvLNTr6IGF5wlzvwRDmAluvqXjyUIRjnAF/pX+
 VKn7ndMWG/yWiVCb9WcVIH0rmAczDXywwHJCXPm1kvGu9UnoUBVZX7diTaKIaf3x39hc
 uu/99VnC8RWPWLroNRyi78iqhMFWENOrQdSnWSXetrWQKan1k6DQtEIRG9YSOoIqiC2q
 edSuPnaS2Fr0bHIoghzJkhEzPsOP2SKmZ4Qg36Qhp03p9OSsA/LBEwMgIXnkEk1I7vfN
 NI6cURvqdw38ZFPfau47VQhQ6DBtFwWkyNbwYs0/vU2JSqKjfIuhKJOF9VDEs0uhtA9W
 Fr6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=CIJp5wIGNWfTgX1euazFf4UzLvecmkYBEZnvZ0Yavpo=;
 b=xkM4XE5hWr+yoz9LCm7PNcAIIi2XQuCgbgVTQeDLmetwOydyHE3qE7tJzdLtwivgf7
 Ha37bnRj0jXDihcL3Y7707ywef0tU6oJhmpym6BVrZMVJvThQteDEWBZxbvVRhzS1+bM
 JnopzmEpLDmfth9s18rQiirziOn4JO+MDbrpgufCQDvNQS8L4Mdjv3V0V3OCPHxxrVbZ
 bNqYS4M4XwU4kdtmMETYrJjie64fUL+xnCPxtPv1xWj9k9dVazjYL5rjJGCfEO9OjdQ0
 Ds17Yj7cdgT/yTLcXX6dYpJNvULR0hA/6sCq+RFqtsGoXwnKMWQvg9DIP/c89R5TZf+r
 rRqA==
X-Gm-Message-State: AOAM531HqtXvbdy1BS0wPSro4UF9Yh8+HVDw/z4TLXmJOqTUprlpZWSo
 QBK48Q9bL4aPGI37voFGSnmjrd3F8SBw2mPzBLM=
X-Google-Smtp-Source: ABdhPJwkCNRpCftFL858Euc3aWijitfQSuIj5ng9RAnkTWlkd4Pn9cX8/G0TmQeC4KSoPFh3vYmzFiC54Y6aTOvsWfw=
X-Received: by 2002:a17:906:29db:b0:6df:ec76:af80 with SMTP id
 y27-20020a17090629db00b006dfec76af80mr18928904eje.177.1648320341084; Sat, 26
 Mar 2022 11:45:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2b04:0:0:0:0:0 with HTTP; Sat, 26 Mar 2022 11:45:40
 -0700 (PDT)
From: Alicia Collins <aliciacollins634@gmail.com>
Date: Sat, 26 Mar 2022 10:45:40 -0800
X-Google-Sender-Auth: wxR6-DD7IaZ8x3EBNNdYJK5D3N4
Message-ID: <CAE_faopwt_0XrKJ7WgKC8xT6XBXozCZAvv1urGt8yemHz3Sjxg@mail.gmail.com>
Subject: Hello my dear
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello my beloved,

With due respect to your person and much sincerity of purpose I wish
to write to you today, seeking for your urgent assistance in this
humanitarian social investment project to be establish in your country
for the mutual benefit of the orphans and the less privileged ones,
haven't known each other or met before, I know that everything is
controlled by God as there is nothing impossible to him. I believe
that you and I can cooperate together in the service of the Lord,
please open your heart to assist me in carrying out this benevolent
project in your country/position. I am Mrs.patricia. Robert, a dying
widow hospitalized undergoing treatment for brain tumor disease, I
believe that you will not expose or betray this trust and confidence
that I am about to entrust to you for the mutual benefit of the
orphans and the less privileged ones. My late husband made a
substantial deposit with the Bank which I have decided to hand over
and entrust the sum of ($ 12,500,000.00 Dollars) in the account under
your custody for you to invest it into any social charitable project
in your location or your country. Based on my present health status I
am permanently indisposed to handle finances or any financial related
project.
 This is the reason why I decided to contact you for your support and
help to stand as my rightful beneficiary and claim the money for
humanitarian purposes for the mutual benefits of the less privileged
ones. Because If the money remains unclaimed with the bank after my
death, those greedy bank executives will place the money as an
unclaimed Fund and share it for their selfish and worthless ventures.
However I need your sincerity and ability to carry out this
transaction and fulfill my final wish in implementing the charitable
investment project in your country as it requires absolute trust and
devotion without any failure. Meanwhile It will be my pleasure to
compensate you with part of the total money as my Investment
manager/partner for your effort in handling the transaction, while the
remaining amount shall be invested into any charity project of your
choice there in your country.

Your early response will be appreciated to enable me to send you
further details and the bank contact details where the fund has been
deposited for you to contact the Bank for immediate release and
transfer of the fund into your bank account as my rightful
beneficiary.
Thank you very much for your kind consideration and I wish you well
and God enlighten you in this social humanitarian project.

Best regards and God bless you.
Sincerely Mrs.patricia. Robert.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
