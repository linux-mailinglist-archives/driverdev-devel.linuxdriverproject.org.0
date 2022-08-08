Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD4058C2AA
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Aug 2022 06:57:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 771DA40915;
	Mon,  8 Aug 2022 04:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 771DA40915
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TF0AgOP7RWVZ; Mon,  8 Aug 2022 04:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4110740629;
	Mon,  8 Aug 2022 04:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4110740629
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C79D41BF3DB
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 04:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AE3241504
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 04:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AE3241504
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gwpO-Jg7tuo6 for <devel@linuxdriverproject.org>;
 Mon,  8 Aug 2022 04:57:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5987414E4
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5987414E4
 for <devel@linuxdriverproject.org>; Mon,  8 Aug 2022 04:57:25 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id 199so11956482ybl.9
 for <devel@linuxdriverproject.org>; Sun, 07 Aug 2022 21:57:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc;
 bh=PZAOvEP8y9NUTdKSg2I4lT2Thu72LLSrd2eQZDbBvIM=;
 b=7OM+RaspxCBJT0Vn66bwqdOFnelTJI6GHoFcuWw5vR5xr9PpU2bnNu+jsL1uZ6OnCL
 adJRsNxKgzgioXu8cCNIQ8th+3aAib19QsCSYmO2oWSg5ciJ82lvGfF/WbxvmMkR/YjA
 PBNSZQfe2t6P3Na/QsfTyPKgH8j/sfHafff5AFPghTwFoQtZU+0qE33KgZHhljU7X3PL
 ziN/77s1HbWiMA9KXB56tFzN2A+jekfgwo8+Drvvd1YtRklHib4MjKMZwzxHZ5VvHJmu
 g8U+Sr/QOoZXaQ3X1KhhhaWY583MkIJpduGfosz/baCVK0Zte5a1VD7bv05lpior4ueb
 SCPQ==
X-Gm-Message-State: ACgBeo3BCZsA5wpNAvS8knO88wBTzgbBv8xwGKjNAgC71AnZTmeH33j1
 nhuIRxuH4FOimM77tMqyDR6Lg42JArWjXvq7hDw=
X-Google-Smtp-Source: AA6agR49XikSa3Bg/hxoPjzqlonQ67RPh3/Uw3f0XoMbFqF/fzrlVoqhr88Hkp5yUqh4mShW18E2XchcQHj7uVGx1R8=
X-Received: by 2002:a25:2385:0:b0:67a:6cf6:d935 with SMTP id
 j127-20020a252385000000b0067a6cf6d935mr15760938ybj.276.1659934644607; Sun, 07
 Aug 2022 21:57:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:5810:b0:18d:8074:1097 with HTTP; Sun, 7 Aug 2022
 21:57:24 -0700 (PDT)
From: Abraham Amesse <akhilmallick73@gmail.com>
Date: Mon, 8 Aug 2022 04:57:24 +0000
Message-ID: <CALEi1ovu_1xGsEQr2igj6mDbYAuio4ohymYmPJq_v1YVPhSUtA@mail.gmail.com>
Subject: ///////'//////////Ugrent
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
 bh=PZAOvEP8y9NUTdKSg2I4lT2Thu72LLSrd2eQZDbBvIM=;
 b=Wy3SCSpqUO08F8YM+LDCfp097jekx5LyBfR8VjpsoYXg+0xQYlC/uzKdBV1nZGc75S
 oPHD+FhLSVQqlD2MvwMBck7FalXbZ5G7RSFYKOnrMKq0RdhtRznYUrEb7jTiKCrbx+3j
 kk8LTCVWzPyORBLcxXi9ZUYCzHwwcAY+iIboVSz2Y0ftqB98oEkXCswxXWN/HXImkO0A
 EDnZUPO4TvvpRADhb6Dui5+Qjv2qk4J+k/9zDmDo+N4x75uXWHwU/yNQSm/Hcy/TSDaY
 odQh5iu/3ENggw8ShJ6yXBDPS5i/KqADE6BSVKfZVVfHl+PDvLRzcs9X0MI0+KiD2xor
 rnRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Wy3SCSpq
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
Reply-To: abrahamamesse@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I have very important information to give you, but first I must tell
with your confidence before reviewing it because it can cause my
work, so I need someone I can trust to
I can check the secret
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
