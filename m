Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2641D81F64D
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Dec 2023 10:33:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66111610BA;
	Thu, 28 Dec 2023 09:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66111610BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WAW_XxBGYwRH; Thu, 28 Dec 2023 09:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D1C160BB7;
	Thu, 28 Dec 2023 09:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D1C160BB7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3B01BF59E
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 09:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F30D4403E2
 for <devel@linuxdriverproject.org>; Thu, 28 Dec 2023 09:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F30D4403E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryUW9rcpNOps for <devel@linuxdriverproject.org>;
 Thu, 28 Dec 2023 09:32:59 +0000 (UTC)
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9399400CB
 for <devel@driverdev.osuosl.org>; Thu, 28 Dec 2023 09:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9399400CB
Received: by mail-ua1-x942.google.com with SMTP id
 a1e0cc1a2514c-7cbdd011627so1499510241.3
 for <devel@driverdev.osuosl.org>; Thu, 28 Dec 2023 01:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703755978; x=1704360778;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=N5eeKif8/uBqzPfcQA8Wej8olKeSrapIGx5bL0Jx8TY7D2S/VZ1J93RRhBXY0L1RUV
 TiU5CbVphJurhYal7Bf04euRrbR7UscfEYOVdYSST4iBZgyGhd3fSb4u5WbFE3bB6fmp
 utHBGfbYzwcWq3z662LJHs4VEQX4dGq/CxAr84DxS38yBoLz21XoqjGvgjmPYsRh5WXs
 n9ZHfRALcJrcLUSNtwK9g+6eRda4naoWBfzISwjULrxwxYh4H+Ebnah2u7ZoAN2gn3Qd
 e0K5ZL3f0y9Cr9ODnJh07huRAQ/7lA7mC+5Hu3OAMrfL0CPhfKJbM3OlcUdDISpfZyL0
 nGCg==
X-Gm-Message-State: AOJu0YxHU5GlMtK/BTsii0QXWxLhM0L5v1nkHCs/FSCodIGDTMwfEJgG
 RozrNJX4cSGJuqriTALt2DZlsw3ZaCKmFdqomvM=
X-Google-Smtp-Source: AGHT+IEAUIR4QERvM4GXWvgIWbvacHt3unQAmb/HjHvUP6RiBoIYKG3DGwbgNqKKXcDbxE7/ieo7I6B4EQFDb9wDE4Y=
X-Received: by 2002:a05:6102:418a:b0:467:432:4edc with SMTP id
 cd10-20020a056102418a00b0046704324edcmr2853665vsb.31.1703755978047; Thu, 28
 Dec 2023 01:32:58 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:9ece:0:b0:43d:f766:c866 with HTTP; Thu, 28 Dec 2023
 01:32:57 -0800 (PST)
From: CITIBANK <awarymrchristopher8@gmail.com>
Date: Thu, 28 Dec 2023 10:32:57 +0100
Message-ID: <CAAMtbagzFBHZEq=CA6Ze-xGyuSnsPE89B-XDi543_YG7az5m-A@mail.gmail.com>
Subject: WELCOME TO CITIBANK OF AMERICA.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703755978; x=1704360778; darn=driverdev.osuosl.org;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6wpRmhPzZYewxgNPeLpQCxgoFM946UyixDuR+kE4Hhc=;
 b=PFwecoyKhMQAAdtS2NsMcNQXHg0buTpcSf1T/awl9NLr5L/i6E93Xoc7IPYDNYqKVP
 1UJ14PbrP5CtrNKj4DLFd40evuISDShwaz5LaDQdi1iT21h9ttiXug1tgETg7SSssvi1
 qSaFScBGxn00GxvbDukFCmCT0Wr2YRMg6iCt4dgy8PqbnBLbcgp8rq3DdCxuCchUNBQ1
 jxcWHmzGzl41G1jrhWXcOobPejG+3xeY9CUPVObZLGx/W+kJ/XOlw91IKv5lIS6TFEx7
 U+SKEE1yaIjmUhBSeslFDKCJhpO54r2nDcbVRF6njB+mZfoFEgJvvtJhg7sg2O9ibqs7
 xM9Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PFwecoyK
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
Reply-To: citibankofamerican8168@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WELCOME TO CITIBANK OF AMERICA.

1 Pirat St NE, Washington, DC
20543, United States of America

TO YOUR ATTENTION!

This is to inform you that a compensation payment in the amount of
US$20,800,000.00 (Twenty Million Eight Hundred United State Dollars)
was legally approved
and deposited few days ago with our Bank, Citi Bank, and it was
deposited in your name by the
foreign debts settlement/compensation committee. and they instructed
us to credit this fund direct to your
private bank account with immediate effect,

However, Please note that Citi Bank have decided and agreed together to
send this payment to you by either
(1). Bank Wire Transfer,
(2). Cash delivery or by
(3). ATM means.
Depending the option you would prefer to receive this
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
