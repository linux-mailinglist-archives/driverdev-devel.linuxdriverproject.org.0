Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6257A492635
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jan 2022 13:56:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3518440630;
	Tue, 18 Jan 2022 12:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKeOYG-ItKTm; Tue, 18 Jan 2022 12:56:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F389440239;
	Tue, 18 Jan 2022 12:56:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCAA21BF368
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 12:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB89A60598
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 12:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JbLNWMYQE-AZ for <devel@linuxdriverproject.org>;
 Tue, 18 Jan 2022 12:56:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2733D60B9E
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 12:56:31 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 q141-20020a1ca793000000b00347b48dfb53so7283090wme.0
 for <devel@linuxdriverproject.org>; Tue, 18 Jan 2022 04:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=kt7BSYvG+rr2bLEECwLOEMCvBVZotJIk44/4XcKD9H0=;
 b=qVnMKKFkDFfregDqIMLKYbf/6Rfv7ZYgGOembxhYq270XML2HKFtTQgZWIe4suSlTH
 9ZzqBt5SMc2HUATvpaoydj6CpAH75hfC5DF+qG4KwifTo4DrFaHm4c8fs1QJQm7jolVG
 Yz4zXdaQM20LOthQjIWFNEHmWnNyurUbd97AZ4ibUQhIkLNbnMtMag6Xrg6QZ8gZZqDm
 AhE1vYxascg6oV2aYaMhw3KgbAVODS8uHXaxJLKE26GX1yPfuLfQGBvcHdmtP8IdG3mL
 tZhPduIc/yXpUOsnqZjXTAJXBz08l+EgG80HPIwCF9codvQmj8aBOWuUqBF+k09ulJ3k
 hb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=kt7BSYvG+rr2bLEECwLOEMCvBVZotJIk44/4XcKD9H0=;
 b=DmsF+s4ZCQCO4wy9pb+B7oeS+9N6mt89Vs/XNf1OmFJdtrCaIAoLjUezNlm6nVpSo7
 KMf3NCHgcAOyo2IjPBvCNS4IyN+9w+yzIMpPR97MTEjCiQOPLD85TfCXwQgX1aO+xrwQ
 C6hPBeN6rLKMiz4cvxLEcoAvPlaNcZcWg2nuv18T54b5Xu5RPWKgDgXhft+p9/G5lTtt
 vXLHjGeFAA4a48FlxiNJmTD2qI58Epe9H+6njXV9aV3zg8s8TipBK6PjnEki5XhK0b1M
 oCYjhKwsIgSMqWTWcQrAn+HYZnamPnd9ouq+nr3gLom7AHqJyvpXKkmlXcii/bme4Y2k
 JHvg==
X-Gm-Message-State: AOAM533aXWNsy0QASro/wPCx5hkMVFDPRq2F+e3uMsD5v1JJxjo/Uoqb
 y+jYlLgkwhmhsB4upbwxSkMjsJTX0l3UPLOV/vA=
X-Google-Smtp-Source: ABdhPJxGKt76Lg3GTqSnJwaq8ce07osyp5P35JeSOcN9tb1VXjOIJO04UXEDjKYPd9tAaf1+CAAgchajeREZcdHreE4=
X-Received: by 2002:a05:6000:1b0e:: with SMTP id
 f14mr24751578wrz.100.1642510589314; 
 Tue, 18 Jan 2022 04:56:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:e18f:0:0:0:0:0 with HTTP; Tue, 18 Jan 2022 04:56:28
 -0800 (PST)
From: bratikox <bratikox@gmail.com>
Date: Tue, 18 Jan 2022 13:56:28 +0100
Message-ID: <CAFuXTSxdo5QqN-cWu1zvOLDOxST9c2oW0BX-ZHL4Uwk2Qh45dA@mail.gmail.com>
Subject: Salam Alaikum /ADIA LOAN OFFER
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
Reply-To: mohsheikhalhamed@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Salam Alaikum,

We are a United Arab Emirates based investment company known as Abu
Dhabi Investment Authority working on expanding its portfolio globally
and financing projects.

We are offering Corporate and Personal Loan at 3.5% Interest Rate for
a duration of 5 to 10 years.

Please get back to us on Email: mohsheikhalhamed@gmail.com ,if you are
interested for further embellishment.

We also pay 2% commission to brokers who introduce project owners for
finance or other opportunities.


 Yours truly,
 Hamed Mohammad
 (Personal Assistant)
 Abu Dhabi Investment Authority
 211 Corniche, P.O Box 3600
 Abu Dhabi,United Arab Emirates
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
