Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D6B34C409
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 08:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15010606BB;
	Mon, 29 Mar 2021 06:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WazcSCzjMfJk; Mon, 29 Mar 2021 06:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39C6C60680;
	Mon, 29 Mar 2021 06:51:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 499871BF3AE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 06:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C672833CD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 06:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyy8FytN2KsL
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 06:51:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67ECC83372
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 06:51:14 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id kt15so17670221ejb.12
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 28 Mar 2021 23:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=4aNKBC4ARFeahfsVxSB/RJQgnLSLZwS081nyCyPF5nE=;
 b=VJq31acqtAsf6EvzMbfnhQpsZy3e1oIadbobcLQQePKwGYieaIiHnz09yw7Cu4rHlK
 HDDtWhP3lWIF148DGvKW8dxq7dr+YkrsReUM9tc5DXpvHSBBRYZbDrpzuyw+Tlxx5p0D
 69LigQ2M5qJaiOV0F3k0b+0XGrQoj8gjhEWD1zN97pixDRCWHAyxeBhkMRmjca/UJP35
 xHn4f11wvQQJayxbeeofqv2Sp0uXPX9CRybfSgOwD6EewhXYag4agNhcb0zW5hjtFdbQ
 kPvHfHhJJG+jG4Jjvonls+Crj7Blw/uQDu8owZ8EpWjwz7Ed9azevJxmlFQMaKWxz4GK
 S8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=4aNKBC4ARFeahfsVxSB/RJQgnLSLZwS081nyCyPF5nE=;
 b=qUVkEG8U2Lwu9Iwye8yONU7dPnZq/cUXZZvwyHX4mI6KXQnnTt5xjW18BCANcZdm2v
 Yv8thpcQAc+/tmxZV1A2lgsjsDeHFH/uOHgIaG0l//lisNFUjrsHivZVtFVluIeaVFDy
 ZDUCmFnhxEUAFQidUwlz/kpXiTx4UDuZ/sGSiIrrChJRt1biYe+E3y5KNVSFnQc4zgmD
 EJWleFo71jhw21zYVAmqttPaexrRPTXAHZMCCIBQlvTUgL6pNa88YYE583nlHeSt0m7h
 /ny3bq4Omkc1lMUGsydWLhlftNAeXyLEiFKA8eak4aiTQWBbRSOMaia1EZKYcdaxKLtd
 0fkA==
X-Gm-Message-State: AOAM532uoZuI0/zY+NScNxhy/OJ+8xEaz5DUOJmx01N326o6T7hgkz7I
 boyEHLsRrAJ1457OvUkVN2rxjxI74/90NJMA3m8=
X-Google-Smtp-Source: ABdhPJyEwBKL68JAc7D/sdN8hHpkhd5IBOIqOQCfKZHASjQjkcJQlz8CaTA1yZQD+34ug+8Sif/1D27IJw93W7u+FHo=
X-Received: by 2002:a17:906:4c56:: with SMTP id
 d22mr28040152ejw.426.1617000672588; 
 Sun, 28 Mar 2021 23:51:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2790:0:0:0:0:0 with HTTP; Sun, 28 Mar 2021 23:51:12
 -0700 (PDT)
From: "Mr. Marouane El Randa" <a12345hmde@gmail.com>
Date: Mon, 29 Mar 2021 06:51:12 +0000
Message-ID: <CABbEur1jUVb7oOqpcLmdq+iD-ewTCxv5z7hxJgZ2a8=ZmqaoMw@mail.gmail.com>
Subject: BUSINESS INVESTMENT
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
Reply-To: marouane.ei43@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings my good friend,

I have a proposal for you, this however is not mandatory nor will I in
any manner compel you to honor against your will. I am Mr. Marouane El
Randa, a former executive director with Arab Tunisian Bank here in
Tunis; I retired A year and 7 months ago after putting in 28 years of
meticulous service. During my days with Arab Tunisian Bank, I was the
personal account officer and one of the financial advisers to Mr. Zine
Al-Abidine Ben Ali the past Tunisian President who died on self exile
at Saudi Arabia. During his tryer period he instructed me to move all
his investment in my care which consists of US$115M and 767KG of gold
out of the Gulf States for safe keeping; and that I successfully did
by moving US$50M to Madrid Spain, US$50M to Dubai United Arab
Emirate,US$15M to Ouagadougou and 767KG of gold to Acra Ghana in West
Africa as an anonymous deposits, so that the funds will in no way to
be traced to him. He has instructed me to find an investor who would
stand as the beneficiary of the fund and the gold; and claim it for
further investment.

Consequent upon the above, my proposal is that I would like you as a
foreigner to stand in as the beneficiary of this fund and the gold
which I have successfully moved outside the country and provide an
account overseas where this said fund will be transferred into. It is
a careful network and my voluntary retirement from the Arab Tunisian
Bank is to ensure a hitch-free operation as all modalities for you to
stand as beneficiary and owner of the deposits has been perfected by
me. Mr. Zine al-Abidine Ben Ali will offer you 20% of the total
investment if you can be the investor and claim this deposits in
Spain, Dubai, Ouagadougou and Accra Ghana as the beneficiary.

Now my questions are:-

1. Can you handle this transaction?
2. Can I give you this trust?

Consider this and get back to me as soon as possible so that I can
give you more details regarding this transaction. Finally, it is my
humble request that the information as contained herein be accorded
the necessary attention, urgency as well as the secrecy it deserves.

I expect your urgent response if you can handle this project.You have
to contact me through my private e-mail at {marouane.ei43@aol.com}


Regards,
Mr. Marouane El Randa.

Sorry if you received this letter in your spam, is due to recent
connection error here in the country.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
