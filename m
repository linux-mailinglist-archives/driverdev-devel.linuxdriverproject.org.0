Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F78958C16A
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Aug 2022 04:02:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54F9040610;
	Mon,  8 Aug 2022 02:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54F9040610
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pz3ULa-nog61; Mon,  8 Aug 2022 02:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 116AA40143;
	Mon,  8 Aug 2022 02:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 116AA40143
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9582B1BF373
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 02:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DD3F60BFD
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 02:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DD3F60BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9tcBsS5C1ky for <devel@linuxdriverproject.org>;
 Mon,  8 Aug 2022 02:02:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D597260BF6
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D597260BF6
 for <devel@driverdev.osuosl.org>; Mon,  8 Aug 2022 02:01:59 +0000 (UTC)
Received: by mail-vs1-xe2b.google.com with SMTP id s129so7540793vsb.11
 for <devel@driverdev.osuosl.org>; Sun, 07 Aug 2022 19:01:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xEKlpfM/C1d/uEAKA7FK1zsPkxW7iCLSTcUkZBh3brc=;
 b=3KTOVt5IlEQ7a71B03osS/L5QJosHWO24LcD4PDc0JH4RjCPnp7nSKWnN3jdf6MRnf
 V8Z2JMEUpsXzxzOBeZJjyuN9kNK75c6hgx7G9u/xYiD9nJKV4wvM0OF0BarKdeUzMlFA
 MOCdK3ZR9lqR9bAU5k7kDApZEIXm86rG+EIcvcTEBfyUFP47pfiCr6np20K4tzsjUD1l
 7c+rDCKeZpCt8P4OeIrOJhgMj00JQ2Bj4cWyne1dFBaph/iwng/fyzMnF6678rOhSbXZ
 oOQ4botFhVpnI49OblbfLqiyOZyppx4gswFaI+ZtMCI6231Ev4fYLylME7/Yh5Kp3M82
 VMlw==
X-Gm-Message-State: ACgBeo0hjcXOxUBLHcIdtI5q0xGnRfmpWJzxsRULjrJXFk4gD4Qr/xLb
 JD5RYaB+Co4gJ0hQYajpLWLYFfLPJfOsS1aVovI=
X-Google-Smtp-Source: AA6agR5qQqnEPOTm+ElXTBJsIH8nVNLaFaI9q4Awgr9dZ6o7g/74YCDqTlItPLLg2iNXGUfuTZYthARsWQ4qaHOgQ4s=
X-Received: by 2002:a67:ca98:0:b0:386:2789:bf91 with SMTP id
 a24-20020a67ca98000000b003862789bf91mr6728060vsl.46.1659924118466; Sun, 07
 Aug 2022 19:01:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:9fcb:0:b0:2d6:897d:fef6 with HTTP; Sun, 7 Aug 2022
 19:01:57 -0700 (PDT)
From: remitwester nunion <remit2westernunion.130@gmail.com>
Date: Mon, 8 Aug 2022 03:01:57 +0100
Message-ID: <CAKDCppfkUJgkQZx69b-8OsQ+8LqZP-JHrAWR2kT9h4pOJ0rX7Q@mail.gmail.com>
Subject: GREETINGS DEAR BELOVED,
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xEKlpfM/C1d/uEAKA7FK1zsPkxW7iCLSTcUkZBh3brc=;
 b=Orq9gyh3/HdpVK2qIQZIfJlrXRn43gHDQiOjtz2mp96iBpt4hIdHk9S8NM7n3f3z1p
 D8drQbZDX7HurKoIdN9vJTeTE0mzNd79p5oxePxHSvEBK6b2Au8a0ocmgm2/JWVkeS2w
 NZ5K9cKTEJ4aUjSoZavd7fsBI5AQ4V0dtfenAJITzC7mdWxIkMgsExZsUHyJb2+UU35X
 rj0V8VA4GSXE008/1xjHtF40vyrAANUBxw/YeIUgx/nJsKczOZVSNMtQxykGlmCnmhiP
 TDmwRGXThz/1Byk2dzYVs9MhO6vW7ztZK8qXvOwodWzz1LDEs8EmWp8vhG8+bD2kQgDs
 jSLA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Orq9gyh3
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
Reply-To: zenitth.bank000@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

GREETINGS DEAR BELOVED,

($5.5 MILLION,USD) HAS BEEN SENT DEPOSITED INTO ZENITH BANK SO YOU ARE TO
CONTACT THE ZENITH BANK OFFICE NOW AND ASK THEM TO MAKE THE TRANSFER
OF THIS FUNDS TO YOUR ACCOUNT INFO, KINDLY CONTACT THE ZENITH BANK
IMMEDIATELY AND RECONFIRM YOUR DELIVERY ADDRESS WITH BANKING
INFORMATIONS TO HIM IN ORDER TO AVOID ANY MISTAKES / EROR IN
TRANSFER.


NAME OF THEIR MANAGER IN ZENITH BANK IS MR.MICHAEL DUKE
,
CONTACT EMAIL ADDRESS; ( zenitth.bank000@aol.com)

TRY TO GET BACK TO ME IMMEDIATELY YOU CONFIRM YOUR TOTAL
($5.5MILLION,USD) INTO YOUR BANK ACCOUNT.THROUGH ONLINE TRANSFER OR
DIRECT TRANSFER TO YOUR ACCOUNT INFO,
REGARDS,
HON,ROBERT MODU
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
