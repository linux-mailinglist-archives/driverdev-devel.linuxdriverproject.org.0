Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9D56241B
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jun 2022 22:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85B1140B32;
	Thu, 30 Jun 2022 20:25:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85B1140B32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pXMkm9rM06D; Thu, 30 Jun 2022 20:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0467440B2C;
	Thu, 30 Jun 2022 20:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0467440B2C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48CF01BF2BF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 20:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22EBA40B28
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 20:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22EBA40B28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YPM8Gmtlf2x6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 20:25:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B01264023D
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B01264023D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 20:25:02 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id t25so269360lfg.7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Jun 2022 13:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=C/VRYLtHyQAiz7mRqsXuaaBr3LzY73WM2wgrU7jbN5s=;
 b=XzXIGmJqaKAVDAuORL6eF+IZPNqFcQOsN4oMaR+pV5EWZQuG6BpKiHp34xHwcHruvo
 WklgGkvlYIw8SPVQ+0Hffv1zNE7xyofBW9hAx38nxWTsVa93xHGfISpWvc6zSYBirYoC
 E5opwbbK2iHmcNJ0o93yO7U2lUtwiqQi31NER37TS20OzYoAMAQnG/r+MmX2VTibe32x
 EpRcZu0Y0J97ItuwzzGPNXvqrlemRX4SpVuRyX/yLlnKvfox+XsJ5aSjWM3bXf4xAogB
 rJVz84yY+A29la410gTKLH4BXL0jKFLllUH0of8Dl/SShVwuLpzdUB746K+s3SaA4t8X
 jZZw==
X-Gm-Message-State: AJIora+pnNVqlHUPDoa5mNibmc8m6TspS/B1eBGw1LcNyA8kS80Znt9j
 +Z1YNMWFBQPr6uRminbYLK9BXE80LNnGhSiw9IA=
X-Google-Smtp-Source: AGRyM1soOh0fl3i5gDtT6wT3xYpqwBYl8X6ghgHAIAwlUMIx97+lGQcA3eqWRPSC8C8yj5QAJnM1lLbfRqJEMK1+F/8=
X-Received: by 2002:ac2:5d66:0:b0:481:55cb:9b8b with SMTP id
 h6-20020ac25d66000000b0048155cb9b8bmr1493076lft.546.1656620700493; Thu, 30
 Jun 2022 13:25:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6288:0:b0:1d1:3fe8:3283 with HTTP; Thu, 30 Jun 2022
 13:24:59 -0700 (PDT)
From: "headoffcedirectorwu3@gmail.com" <direofficebank@gmail.com>
Date: Thu, 30 Jun 2022 20:24:59 +0000
Message-ID: <CAH2MJMnar1t_abgF_G_7=BBc8ACJxpDFnZYs2tns6p9M7c=6kA@mail.gmail.com>
Subject: RE
To: direofficebank@gmail.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=C/VRYLtHyQAiz7mRqsXuaaBr3LzY73WM2wgrU7jbN5s=;
 b=gItxvKnukIuaJq3abYsxLClBLdmwZu2a/mZiJqSV8Xa/7eMJTMrojxv5M8KQE+OpBG
 ndOwQ8+juRSmeTd6xO2N+5builTtwaD6pH/q23aOeoTmshZdc6kfeWPF1pDJgX0TPmix
 4ei4baX2h5haKiwWGM3p43VKrO9tqiI6rCzRv1aWI3/hyCJj90x14UOVuT1r2PIVvxp8
 ELQwAUVT8io6k7jK8GBtkqsG2V1D6U4uB0XMSXL46wt3B9ReZB2DUmUbuaZD/8SXlfTp
 Pnzo5enlksOolJeraK6cesvcbs6NDJykDfBimlg5AghyBlTTt1wVaHyRdeMeR09xAJsO
 FMAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gItxvKnu
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
Reply-To: headoffcedirectorwu3@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
 Hello

We wishes to inform you that we received your fund from IMF for safety
transfer to you because that your email address was found in the list
of scam victims. kindly reply for more details to you.

Look forward to hear from you soon

Yours affectionately.
Tony Albert
Office director
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
