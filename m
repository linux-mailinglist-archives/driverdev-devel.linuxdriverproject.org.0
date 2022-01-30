Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1694A37EC
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jan 2022 18:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EEA44018B;
	Sun, 30 Jan 2022 17:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AafJ9Chu0vsN; Sun, 30 Jan 2022 17:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C607F400E6;
	Sun, 30 Jan 2022 17:50:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67D531BF335
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 17:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5639760D80
 for <devel@linuxdriverproject.org>; Sun, 30 Jan 2022 17:50:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7k95PsQS0UqO for <devel@linuxdriverproject.org>;
 Sun, 30 Jan 2022 17:50:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D16C60B55
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 17:50:45 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d18so10563592plg.2
 for <devel@driverdev.osuosl.org>; Sun, 30 Jan 2022 09:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=f48feGfxQWpJ2NAu1tA2D8IedOIveV78iujaMUpDyjw=;
 b=jgVXTYSp+NBr2oSvlhr/oRMV41qP/ZsxqeifHGXvq3uclvOeBzNUmDiIUaE0F66IHY
 3ugK3MskEt18rnq/Vp0a0fhCiagnV/fgtiPbPDX3RIAf2VmKid5qPLDy8tsP9szf3B9k
 rQHjklN9gzSTiG23k6GjFldqmypXn9gENFV4GNASE66R7p81QgGuurWeoElA9S7/JlPj
 D7xq9X87ugKXh88ChSOkdECV5Lnd2AIXktD1geoXTsGGJATE0FueAtvnmGNS0k3JbD7b
 1AWas46MEQEYTqgUm2AnomPeb+wdUKSnzXgJDAJ/FizrmJusGpcUcPbq8aLNr7+x7UB9
 lmrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=f48feGfxQWpJ2NAu1tA2D8IedOIveV78iujaMUpDyjw=;
 b=fGyNWJfpaoVtcNz3zfR5okSIpYgnGZMVyif84g3nv3SGleH1CS5Qh+vEmWfGCBJh5V
 3S+Yt+WOo9HNKs5eLEuZc/sTr1NPsRaDdodEeS0EJqyAF0HbACCPe9T/Jd5JqKaAvM4D
 gGcUJiTIY99NhZI2+gxVoEN2HIrlgxX5JhRl4n0KNEHG05T6rxH4i7sYeHldHbNnr74C
 BzlUPLyTjjJKfkTuzl5s5q4Vr0gO0h83ArfVkiJZywDOJcyLpSCUrx1GpQqkoX00Cc2o
 1pXq6JuWMQBrwp8P2f7epnZi9FoI6ET7LEqbrzdl/lY83JgkzRO1C//eE4R274G9Kium
 I24g==
X-Gm-Message-State: AOAM530agUEUXcGM6/DH0m9Ckt5mmNctWHxivYRihyM+xWxRalnl/0cJ
 fcGe4YTHyQbC0CYKXC01+MV32rBSeaLIfMkM4fE=
X-Google-Smtp-Source: ABdhPJz//4stSKwrV8oSw4Fn4E+e2mUHLGCFFVqWfAbRmjnmUahVhjsA7lBa4ai5S3zF78RBrWYygizIvQv7F9WGWRU=
X-Received: by 2002:a17:90a:e2ca:: with SMTP id
 fr10mr20498309pjb.51.1643565044547; 
 Sun, 30 Jan 2022 09:50:44 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:5ca:0:0:0:0 with HTTP; Sun, 30 Jan 2022 09:50:44
 -0800 (PST)
From: Alicia Collins <aliciacollins634@gmail.com>
Date: Sun, 30 Jan 2022 09:50:44 -0800
X-Google-Sender-Auth: cDmNqUpCiDPCBZ5d3ADebnNd1jY
Message-ID: <CAK6zzsHQJRu1SMiuEz1KcBjV_rF=fT7-VF+hqN0Ab-k6aLtg7g@mail.gmail.com>
Subject: Hello
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

Hello my dear,

With due respect to your person and much sincerity of purpose I wish
to write to you today, seeking for your urgent assistance in this
humanitarian social investment project to be establish in your country
for the mutual benefit of the orphans and the less privileged ones,
haven't known each other or met before, I know that everything is
controlled by God as there is nothing impossible to him. I believe
that you and I can cooperate together in the service of the Lord,
please open your heart to assist me in carrying out this benevolent
project in your country/position. I am Mrs.Alicia Collins, a dying
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
Sincerely Mrs.Alicia Collins.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
