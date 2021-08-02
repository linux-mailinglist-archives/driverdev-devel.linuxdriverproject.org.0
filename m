Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 714743DDDFB
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Aug 2021 18:52:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E289B606DE;
	Mon,  2 Aug 2021 16:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAnko7GkZHk9; Mon,  2 Aug 2021 16:52:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28C266062D;
	Mon,  2 Aug 2021 16:52:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF46D1BF867
 for <devel@linuxdriverproject.org>; Mon,  2 Aug 2021 16:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9D2840112
 for <devel@linuxdriverproject.org>; Mon,  2 Aug 2021 16:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AROegCUnVVeL for <devel@linuxdriverproject.org>;
 Mon,  2 Aug 2021 16:51:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD4CF400EF
 for <devel@driverdev.osuosl.org>; Mon,  2 Aug 2021 16:51:53 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id b6so12073053lff.10
 for <devel@driverdev.osuosl.org>; Mon, 02 Aug 2021 09:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=70X9SZ6F2FHAgOnoQdbJaB6JyD+EKRzTayARQg7TP0I=;
 b=JgSQiX6w+TU3Oi1ELceyauTvCS/pRyNID9fIxFybaumkvTKimQ3ag8fh9C30ckkXwy
 NlDh8ooibCHBDnOX2rVXXQ1boIttFf+h36SbV77qpcJGBraj+fKnMQSBjv8LxZPgiHzF
 oyKJfbmq0339ByL7gmUbSgW4WIbj0HkC4X7xLwO6Gl52wDXGl9wNBqKj+SC6EHOJLTjq
 u5sLdTcFeDWx5egFNBVDXyPf3IdHAwKIlVQOCeDFDIZViYhnTHdIzz+3kCxpbKOmOxuF
 HJuQ5UkqNjXakfU0MITC8FNYe22Hxu+HdtZKyxym/+O35l+cszHYTCvoElbcNWDE+ZN0
 vNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=70X9SZ6F2FHAgOnoQdbJaB6JyD+EKRzTayARQg7TP0I=;
 b=AS0/IIRcU/YkvFn6Kb2gkjuvaOMiyCKiOliVp7O9/udLozZUIWUW8QgV7am6ESb8pu
 2QhwqZmR2qUka3mfpbwRYolZHVB64D5AkDFAdaVPYx/vtje8dqnwVyeYU7Trx6NXXyfD
 CHPBitMNVrkF1UDN+dv5WzAXibtzvzQLJ0R0SKzRCyQ1ERQbxyeiKq8fh3MYgqay6/8b
 v5RP4D56so1nXqY2/yjQJfUke3oxxWJJWrsGFWAAlZ2tn9sTqoDQehMZ4reiTHKtZCyB
 iNbImaYjgblx+2BCUUzEePq6bEduhADvnREffKB0Q3CZKmEZ7fTbI/p3jPaIjgp6CeW2
 mw2g==
X-Gm-Message-State: AOAM532GS6rZjw9nZUA5Y39iSWyEza9R8ntYj2dYTS54kDjx6K0FrQRF
 ltgqZVEFcKjdtOU6iTW7N6gKAS8Ovy4EnbEEEfA=
X-Google-Smtp-Source: ABdhPJxfVTll7N5Xtbtlvr/vdwE7ly8UX5q5D6VDRF+SW2VOhQ9GKmamNqlFzw+Bk8dhYUYTLM65UAlV9MVCdPlECss=
X-Received: by 2002:a05:6512:130f:: with SMTP id
 x15mr12736670lfu.571.1627923111740; 
 Mon, 02 Aug 2021 09:51:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:c2b0:0:b029:11e:f84d:b339 with HTTP; Mon, 2 Aug 2021
 09:51:51 -0700 (PDT)
From: Maxwell Watford <lopezjayb9@gmail.com>
Date: Mon, 2 Aug 2021 16:51:51 +0000
Message-ID: <CAJekJMAmCAvKTUQbAuNLTpeo8BoECFQ_QniVYbNdzGjJ0Sjg3w@mail.gmail.com>
Subject: i need your reply
To: lopezjayb9@gmail.com
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
Reply-To: mrmaxwellwatford@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings,

Let me introduce myself my name is Mr Maxwell Watford, I am writing to
you from Westend Credit Union Office Lome Togo, because I have
received a file from the Ministry of Finance Lome-Togo, concerning an
Inherited Fund bearing your name on it, And after our verifications,
we found out that the funds belong to you.

As the manager of the bank, I want you to come forward for this claim
by sending me any of your ID or your passport copy to verify if the
same as the
one in the file. that may confirm from your side to ensure this fund
did not end in the wrong person's hand.


I am looking forward to your urgent reply,
Best regards,

Mr Maxwell Watford
Senior manager
Westend Credit Union Togo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
