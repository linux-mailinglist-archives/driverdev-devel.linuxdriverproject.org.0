Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2719C3E35FA
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Aug 2021 16:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7402D839BB;
	Sat,  7 Aug 2021 14:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bbvPReXkAQM; Sat,  7 Aug 2021 14:58:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF3CD83896;
	Sat,  7 Aug 2021 14:58:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BACD71BF5A5
 for <devel@linuxdriverproject.org>; Sat,  7 Aug 2021 14:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A93B7400FA
 for <devel@linuxdriverproject.org>; Sat,  7 Aug 2021 14:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AwSQm8atByhr for <devel@linuxdriverproject.org>;
 Sat,  7 Aug 2021 14:58:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF0B44000B
 for <devel@driverdev.osuosl.org>; Sat,  7 Aug 2021 14:58:01 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id g30so20024504lfv.4
 for <devel@driverdev.osuosl.org>; Sat, 07 Aug 2021 07:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=ZZjmem3AsUv9i5DTaN+i7u6VVVE0vxkDFvTxJ+NK4ybit+xc8u/Ckt7zmPzueVp2fY
 bybcmfffdEPeO6fVRgHtX2PBHeaQkDbu1HJ9dmFul79OaxEiaHrkppMEEi8k4zvKEsM7
 qUhliagrLd/raDSsCwIIYf9+hq3baqqVrTz7B+cWsJ6bD0xepxZ1Wgf4oYWgX0wSSHcT
 l9907Nbc+tsvSdWKqaA0LEO0x+mvVS3qOwP/etpFC5WDNZPqdh4RIuMNC62jKOMsvdF0
 UJ54twcTPuqY072c8VGq3w3L0fJUcimTP9X+XFwGlvR/sxk8v6wctE9PYqXGedKVlarA
 mF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=xQrYULKok+hL+AIRGJuG9CojAZcnV9Xr+it7yxQJVlY=;
 b=rJGPIcJO6wz2Uznk4vXOtHatRlIMTmhGTC5EjTU3b8cosvYdQrUOL+RAYDGjOThR2j
 NjBAvEbA5YQKriE9A/WWrd09Ny9SpJ6tCutOqUepQZbrBDzKlxdXMr8mQ35ybQCuqodC
 wmj9xEhU39M3SjWUXTFl/zSIXz8kjK0Jzl+0zI0jiqJ2xfREv/iljZTtLyoajLzHbDFq
 tEk1/s8c+jBMGMRPP0mxzsEVxA2Qxp8cs9r/eLVTw3hOMhiHc5OSSJCbIen33QRisXO0
 G6czr9WuxBMWGdABNuAFL8xwRqlJ2u2i7aSTSLTJLKM3tWr6JduUGPZgSuzqj0K7oMOA
 btDg==
X-Gm-Message-State: AOAM531YoAxVMQSf2ylhKyYTdhrb+5dEdEvC1L8n5L7NU6Xc/IJNw0XP
 89BTIEtZJaWWWR+WmGn7W6b9lAf64JJF42hlO14=
X-Google-Smtp-Source: ABdhPJwirQU+5ItQ6o/3jDbGgYa1JMX4Tb1Cc3/OSc3/gpDNatxdDpU5cXwqQWanCxwsPv1V0iuJXwEbh7IzI1kKF2s=
X-Received: by 2002:a05:6512:1096:: with SMTP id
 j22mr11099846lfg.304.1628348279188; 
 Sat, 07 Aug 2021 07:57:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6520:4401:b029:11f:2f5:612a with HTTP; Sat, 7 Aug 2021
 07:57:58 -0700 (PDT)
From: Mrs Aisha Al-Qaddafi <mrsaishag4@gmail.com>
Date: Sat, 7 Aug 2021 07:57:58 -0700
Message-ID: <CA+L6gkkThfZh1ZeFye09-Okx34nHB+-PraLzcbDxh75cpp=Hgg@mail.gmail.com>
Subject: Dear Friend,
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
Reply-To: mrsaishag45@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

I came across your e-mail contact prior to a private search while in
need of your assistance. I am Aisha Al-Qaddafi, the only biological
Daughter of Former President of Libya Col. Muammar Al-Qaddafi. Am a
single Mother and a Widow with three Children.

I have investment funds worth Twenty Seven Million Five Hundred
Thousand United State Dollar ($27.500.000.00 ) and i need a trusted
investment Manager/Partner because of my current refugee status,
however, I am interested in you for investment project assistance in
your country, may be from there, we can build business relationship in
the nearest future.

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply
urgently to enable me to provide you more information about the
investment funds.

Your Urgent Reply Will Be Appreciated

Best Regards
Mrs Aisha Al-Qaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
