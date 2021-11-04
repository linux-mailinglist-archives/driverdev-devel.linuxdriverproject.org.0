Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF08E4453BF
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Nov 2021 14:21:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E670C81871;
	Thu,  4 Nov 2021 13:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9mmH70mfG6F; Thu,  4 Nov 2021 13:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 470FE81777;
	Thu,  4 Nov 2021 13:21:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 077D91BF3D2
 for <devel@linuxdriverproject.org>; Thu,  4 Nov 2021 13:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBBF58186E
 for <devel@linuxdriverproject.org>; Thu,  4 Nov 2021 13:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bS5xsddw1Vqs for <devel@linuxdriverproject.org>;
 Thu,  4 Nov 2021 13:21:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F4608186B
 for <devel@driverdev.osuosl.org>; Thu,  4 Nov 2021 13:21:30 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id h74so5875170pfe.0
 for <devel@driverdev.osuosl.org>; Thu, 04 Nov 2021 06:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to;
 bh=k3gtFAJ4tmI2NgY41moUD6/pIHAYNWEH/05iMD5WGIo=;
 b=FRouOoryPKm2jNhH+IkqoWPRheanvYWtpsxPrD5dd0Lf7ivZ75J1QSfIve1ux2CPMv
 dUBoMcnQTChazxx1QdmMutMnbclSOJh1TpppCL4MS/aGwq9YNfZOgQhhT4wmfWy2t94/
 jp810qJCdKOa6ed1BS8w2Y9qrnQD7Wzg+wor5jRshR/p05K6PbpR6Ms5BD/dskIeRf6R
 NRorECVVGUzwVtwRV5HSUCrQNIY1W7rn9fTgM2eK65SjidYxp9UmbfEVsRX3NsB+IOaI
 IQhNUb4MSfsHMaPMlUN7oHLeXnyCU6THDJOa/j6q0Pk10JapIMi3KKUemRa6QEryFe7L
 LPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to; bh=k3gtFAJ4tmI2NgY41moUD6/pIHAYNWEH/05iMD5WGIo=;
 b=SpoAtmeX5jQOWAqm4+My0PaGobD5SliTxtFSlBc05iyZjteURgVz+6lTCw5SkWgwow
 1WusRkaWL/71UaoGf+LbR0vwHJcmP65tdm2mp/m7q5YS79VEX0fhCCKa1c1J5C5jl7Us
 nxg2+AgcBwFD2T5GfRRfnKRfLTO4WQ45E9zxujM28C+FUgaeA54/NrKv9Ap47525gfXn
 +fk0JR8pUXs0sOgai+8ede54eg6Uweq34CtlmWAAy8O6L3W4jBFTfL5VBkX/OG6YvJsN
 DgsP+no0u6X/uGKfTSRXH+dXBxwEz7PLvhulnW/UoLa3JxcMl4nO2DjL5gmacAS+mSWp
 G9tg==
X-Gm-Message-State: AOAM5304a8uY+2oLuN41afC12ZH69nTL/iLb+/0TEZU7GAbcVyFFfAyK
 us5wIdyuaQbl6G5I83xG0BfLO53IGd+8JwniC8o=
X-Google-Smtp-Source: ABdhPJwnIlP9XNd6VLW6xbg+ivR3zx+QdEqdYTb3j1t3oHNeig1TrouSnKl94OjRemFW7tOGAE2iCV0GutGDHMWmbcc=
X-Received: by 2002:a63:3c4c:: with SMTP id i12mr38251514pgn.447.1636032089809; 
 Thu, 04 Nov 2021 06:21:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:3a88:b0:5d:351f:bd60 with HTTP; Thu, 4 Nov 2021
 06:21:29 -0700 (PDT)
From: Aisha Al-Qaddafi <aisha.gdaffi24@gmail.com>
Date: Thu, 4 Nov 2021 14:21:29 +0100
X-Google-Sender-Auth: RgpTGgfI9q0chJYaVv81IV7YyIg
Message-ID: <CAHpZNyUFF3qKE_QS1EDj=pBw_ZmBm6W05OHMu6pjY7co=fXryg@mail.gmail.com>
Subject: My Dear Friend
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

Assalamu alaikum, I came across your e-mail contact prior to a private
search while in need of your assistance. I am Aisha Al-Qaddafi, the
only biological, Daughter of Former President of Libya Col. Muammar
Al-Qaddafi. Am a single Mother and a Widow with three Children. I have
investment funds worth Twenty Seven Million Five Hundred Thousand
United State Dollar ($27.500.000.00 ) and i need a trusted  investment
Manager/Partner because of my current refugee status, however, I am
interested in you for investment project assistance in your country.
If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment funds.
Best Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
