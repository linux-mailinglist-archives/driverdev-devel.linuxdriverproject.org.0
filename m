Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB3963D9D3
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Nov 2022 16:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5876460FDF;
	Wed, 30 Nov 2022 15:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5876460FDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HiijAMIfJlS1; Wed, 30 Nov 2022 15:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14DF46100C;
	Wed, 30 Nov 2022 15:47:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14DF46100C
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0AE11BF376
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 15:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9928181F76
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 15:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9928181F76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wbICNK48RJWH
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 15:47:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 171BA81F6E
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 171BA81F6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 15:47:55 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id 136so3018445ybl.4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 07:47:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kJtFhkK0RZjPFD8PLfkGajGi0pAEt4r2Cv91xmvBo3c=;
 b=DIHL34y3aS4Hc283IafUzANdrX+4lBWmWzocSZ+906IeEWas5YeeMnPHHoxmSgQ32/
 j9FueHSZGPFeXlxVHkL8LZDzWcvEMWFOoINLuArtqigKCLjPqr8MdOE+ywH6PaL1C1jo
 l6QYIAT8mKKlB1M/mkjxzHxMeDFph/699iGEiAYg1kNcnhJ6Wxb7e8XHT2yIldbPGvlC
 m+p1MyWWXnEoszZYO5r3a4FGo/iTmYXB6c7sK2iLDI86Yf7HDmk1KU4X19nWPWNBVckK
 NUqa+LKFCjfknwKxJCgU+kCTmz3q+Ht3XqlvqZR+5Uu8TibEAnZUOGeM1tJ2n7jY/syp
 9iVg==
X-Gm-Message-State: ANoB5pk+/jSZoZdMEFPTdG/y/jgUB/wcFR7yXW+YXH4MsQGR4+RNXrJd
 gvef7fZV3QDMduq/JN8Jdt8KFLvAhsuqBhojsCE=
X-Google-Smtp-Source: AA0mqf7XqZt1VNbQ2l0CIrBr4wDlGEH5csT/Eeymw1ZLKvij0ZwxKwb5JElfAxtTcDaHotUVBXU7PZ5pGdHgT+DlIwA=
X-Received: by 2002:a25:cc0b:0:b0:6f3:f978:efaf with SMTP id
 l11-20020a25cc0b000000b006f3f978efafmr22927920ybf.596.1669823273927; Wed, 30
 Nov 2022 07:47:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:6c43:b0:3de:b910:e2e5 with HTTP; Wed, 30 Nov 2022
 07:47:53 -0800 (PST)
From: Dr Stanley Brown <brownstanley681@gmail.com>
Date: Wed, 30 Nov 2022 16:47:53 +0100
Message-ID: <CABodGxh9CeVv+UVYhPNezsrkMszUvHrOC9Gcko4j2bYV0_ms=g@mail.gmail.com>
Subject: ATM CARD
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kJtFhkK0RZjPFD8PLfkGajGi0pAEt4r2Cv91xmvBo3c=;
 b=lVbl71XXxw0+PQu9HABdcB0Y5TzQvRTLqS6Pg7dfvmMRt7YtuC714qJFT7TUQClHik
 68ObjJA00Wk8hl/5scUIjnNBdxjx4ItSBCO2KOwCH3i7BFLxmmkOWZOdlgZAfRE5T+CI
 Oa56QDsrgvgg5umpK5KPu+tLIb2dHopvrzvKtDuHMzKC661FSDNfXxuRGBWaod0ZfEmw
 mMuiBkE+TmOitHQWIOJC15rDVR5VBPV06n0TEknF6wwhIj64brcmAUF0jWIOMaJT2wpw
 bHc4mkegzQQTI2itx3IvRFBr4ho/ABWrSCnhNHS3P3s7JvlR/8U4k+bzhlkeUKAlHY8G
 qn3A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lVbl71XX
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
