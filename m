Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85995676A5E
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Jan 2023 00:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC87B60BE7;
	Sat, 21 Jan 2023 23:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC87B60BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2pRKuJsNbyR; Sat, 21 Jan 2023 23:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A26A760BE0;
	Sat, 21 Jan 2023 23:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A26A760BE0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECF521BF2A2
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 23:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D66E840370
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 23:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D66E840370
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TGoLeohNuO9N for <devel@linuxdriverproject.org>;
 Sat, 21 Jan 2023 23:56:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6E9F4016B
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6E9F4016B
 for <devel@driverdev.osuosl.org>; Sat, 21 Jan 2023 23:56:29 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id hw16so22344089ejc.10
 for <devel@driverdev.osuosl.org>; Sat, 21 Jan 2023 15:56:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gBB8H+06r4JLdHhCAP/dR1ydkD7u9K1B2JRPjc/6+BQ=;
 b=sYDoRJajvsZzwO2HJhw8D1PxzDKIbmALeKgL8514AGHpvlB9Yfd5rWPOdBugZ5nWBy
 DAJ1ssQ2nsqvDyDBEUoJI/eBJMnHPwb/3hCnLE0OZAsMBP0ZYxSz6MwFoY57KM/W+yhi
 Sh9hryR4B4fv2W+hL7meuEMPFXNuqPE+5lOqSqu88C5jHh4ZhDneNW0Lu0AFeznTHsJe
 gilzUqskOgXAuxwd744icVTBIr14qIWR1m/x/t5WdV1XTvmoiOgvYK0x6JNqrtr0iFdT
 7YArIXdvcoRthOEJ6gJB+vgsSCfcClywYXMiPJ97TSr4U78LFS86ORahxPJ023aJ4jA8
 p7Ow==
X-Gm-Message-State: AFqh2komdBSaBiYwYtzXrDvsbtnAX8pTXqpGCUrpZAX6CtgB1rTZyDWM
 QTDjRhz0LqQ4cUMBVMcVZvdOYUZYJcmD3XapO2o=
X-Google-Smtp-Source: AMrXdXtH6cqZq6mzjQYs7y/eYWW6nwnr9qkPa8hwjgBfk/vLfpu13TdKC+/sk/6KPuyY8XuUQ4w10pr/2FgXsX9Q5TU=
X-Received: by 2002:a17:906:99c6:b0:863:f322:70df with SMTP id
 s6-20020a17090699c600b00863f32270dfmr2543571ejn.549.1674345387850; Sat, 21
 Jan 2023 15:56:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab4:ab4a:0:b0:1f2:9705:3b17 with HTTP; Sat, 21 Jan 2023
 15:56:27 -0800 (PST)
From: "Mrs. Bill Chantal" <santandermanager156@gmail.com>
Date: Sun, 22 Jan 2023 00:56:27 +0100
Message-ID: <CAOYC-Fou5uSfH6SkY65EfLTMXZ4YEyF+enVjEtV0BoAt8hLvcg@mail.gmail.com>
Subject: ATM CARD COMPENSATION
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gBB8H+06r4JLdHhCAP/dR1ydkD7u9K1B2JRPjc/6+BQ=;
 b=dpfKRmxa9Uh+4S4wcv96lSudLXb5GjpSF+UHf1e4Vxfl5tLFX25MVC2qBhzk1BGhmL
 TV5l+Thh0iAWTe8gfJiGc9gVUqS/Cdx0KEDRvwOqh+ipQgmX0pzEh7RYASR0m4ipJE/Q
 f1PEq03aEpaTyJvmOCmtG3Jm5rgsk3xozS1ZcVlVjF/AhhkaN3C1WlbC1IFrZrW9cotv
 iXAop61bM30i7l1TLnYMBmQ7wUEX8BJtg/d9NTkSGneheBj/QZhtz52k/uetpqCpi7ka
 P2e6C5i/93SRDoyP7N3GNSQTQLCajaKhJjixo8XgXqIcM3gxQXfeNlVsAX2fHcm2mhyN
 3Uew==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dpfKRmxa
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
Reply-To: mrsbillchantal2022@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear friend

You received 5.4 million euro in compensation from the United Nations.
The payment will be issued as an ATM Visa card sent to you through the
bank To receive the ATM card, we need your address; passport and your
Whats App number please reply with requested information via my
personal email address (mrsbillchantal2022@mail.com)

Thank you
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
