Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C463D9CA
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Nov 2022 16:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E25740B7C;
	Wed, 30 Nov 2022 15:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E25740B7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykOp9rNHiXmn; Wed, 30 Nov 2022 15:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 494BB40239;
	Wed, 30 Nov 2022 15:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 494BB40239
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E741E1BF376
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 15:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFEF860E8F
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 15:47:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFEF860E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nPwNUj5xmgxr for <devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 15:47:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48A4660FDF
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com
 [IPv6:2607:f8b0:4864:20::b33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48A4660FDF
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 15:47:41 +0000 (UTC)
Received: by mail-yb1-xb33.google.com with SMTP id j196so22092357ybj.2
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 07:47:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kJtFhkK0RZjPFD8PLfkGajGi0pAEt4r2Cv91xmvBo3c=;
 b=tW0oNvgx0kh5HAr6CdjOUiLbyA8eSh1MyEYt3YLkIF5pc0q47hGOtlMEr23SGRdvyt
 0hDP2zGMQqZRUFxQOxrX+S6ueBkRS6fLMeMIx3i8nyJ7R6dFRai2xadjrYqeXYBNeCL4
 e/VUs3FEDojmzAGFIUUw6SlY99Y7jwjc1s3qjYMk13FpofWQCnpj2O4026V1j3eOpykx
 jWgy7jmdV89NFyYNHnL5ScQveu9FLpadtXPe7Pt95yeEucsP0mdo37padrQ9Z1OypNmK
 A4qEaHk1a/wXa3VHp2ORdxS+MFD+tIpILEa7PJRpBHDemafHSX2wYCn1okxYiwAqfIj2
 DCLw==
X-Gm-Message-State: ANoB5plIvEsU5alOVdXlZ53BIBYbRk7CxpQ8uiJC6qCkU9jVVzNVKazT
 whbxtwgYdxQPapiw+Hhp5HzrSP8uNzzk9hy5y3k=
X-Google-Smtp-Source: AA0mqf6Dba1O7NZFEH8H4zYvtVhXMMHRNsPJhB47Wp9/Ct7uSWeJjCkGahS2ewNFyW1TeW2WFMq7KDd1jyg6LkBAYLU=
X-Received: by 2002:a25:f827:0:b0:6d2:8f6:ce41 with SMTP id
 u39-20020a25f827000000b006d208f6ce41mr55273511ybd.261.1669823260187; Wed, 30
 Nov 2022 07:47:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:6c43:b0:3de:b910:e2e5 with HTTP; Wed, 30 Nov 2022
 07:47:39 -0800 (PST)
From: Dr Stanley Brown <brownstanley681@gmail.com>
Date: Wed, 30 Nov 2022 16:47:39 +0100
Message-ID: <CABodGxgzVEijbzjmwtn0j+rtGZRYWnaS1GQzQY_7YKW7YMc9Qg@mail.gmail.com>
Subject: ATM CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kJtFhkK0RZjPFD8PLfkGajGi0pAEt4r2Cv91xmvBo3c=;
 b=IaDKdbL74MMV1KbkqY+1Aji+oEEvuHYK0Zu1C0Klwfh1ry88HnTvX4mjCHpvYaAJY+
 CrHRXxRA550BrHdv0XcaQrLxqf5ueOsvrfcmJcrr4d3Vp2PBcoPAnlQax2blhqD28ERu
 azww3XbcNurWtPrgP74OY5rPOwOBUt8EiJiXo6a2E41yUrxjvr8Ra7D6UsG8Y0SZwwXv
 mmTtYH1IM4P8zuXWs+/rcvikUPuup09JE0MO54clUBTmpZuh76F3KRruTVFYMX89LwQ0
 jRDMIvKBjNZ53uq69St01sX9hsKFiXVwiBiAG/JcAJbxGJTZxMVDK9yMlrpmGMzSM8jF
 w8KQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IaDKdbL7
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
Reply-To: paymentc114@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Attention Please,

I have registered your ATM CARD of US$4.5millions dollars with DHL
courier Company with registration code of(registration Code
awb33xzs)please Contact them with your delivery information such
as,Your Name, Your Address and Your Telephone Number:

Shipping company Office:
Name of Dir:James Anderson
E-mail: paymentc114@gmail.com

Contact the shipping company as soon as you received this mail for the
delivery process.

Best Regards,
Dr Stanley Brown
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
