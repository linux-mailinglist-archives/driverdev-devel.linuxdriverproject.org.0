Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA897EE3E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Nov 2023 16:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FB0241A81;
	Thu, 16 Nov 2023 15:06:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FB0241A81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsvCCLbqsqyW; Thu, 16 Nov 2023 15:06:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D17B5400E7;
	Thu, 16 Nov 2023 15:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D17B5400E7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E58311BF3C5
 for <devel@linuxdriverproject.org>; Thu, 16 Nov 2023 15:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BE7BF6FA8C
 for <devel@linuxdriverproject.org>; Thu, 16 Nov 2023 15:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE7BF6FA8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bY9j7UiIf6PV for <devel@linuxdriverproject.org>;
 Thu, 16 Nov 2023 15:06:21 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F37C861046
 for <devel@driverdev.osuosl.org>; Thu, 16 Nov 2023 15:06:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F37C861046
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-9d216597f64so129324466b.3
 for <devel@driverdev.osuosl.org>; Thu, 16 Nov 2023 07:06:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700147179; x=1700751979;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=P6G84ldoE2Ehev8TTSbarDAI5zSnG0YTLcf4XHRuYcc=;
 b=hgzpj11a9ygSVj/F0lKyQEolOhBn6hx3NmJhYhYXio0QItObCfMsYMGq3R93TxfRzQ
 I1Pp0kQUSdrSfgym5ETrnBLB0YfG/KZRMmu0ecAVW+KXvpc3OWZFq/yzKiXQjDsqCQSl
 qH6X2SzRU5BHBrv0cUtWl1jHLYeT+rNRiCf+fe60vpejz75xKLdWVZFMjkn/Y1zmGzVu
 tkaBml1vFZBS/lh4K5/KIHzR4f5QtoVrw4MOYQEQvC9kjltFDTGx0ry8//E0yGFePWfN
 2wactD9IZzxIYVnkLRG7tb9kRT+TAatT2waO/mMcsZNqLQ7/SC+pdcqsDwY2B7cl+K3N
 9bUg==
X-Gm-Message-State: AOJu0Yz06379PZBLtgPee+OWbrzaY2wd+ZL+D1FAG9O8Uzw51iTD+BEj
 n1lEFoEaCmrro1ZD0tylaYdm7WVrfduPVR6Xpog=
X-Google-Smtp-Source: AGHT+IF+pMZL0M+6SpBiaz2f8o+3cluY0/ew91xgjybYFT66+uyCS/HPKD3okogmevWKJFb2aNdx9uS/9KzdWC2TSa4=
X-Received: by 2002:a17:906:1d0b:b0:9be:aebc:d480 with SMTP id
 n11-20020a1709061d0b00b009beaebcd480mr13755943ejh.24.1700147178967; Thu, 16
 Nov 2023 07:06:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:640c:f84:b0:1d4:f113:99b7 with HTTP; Thu, 16 Nov 2023
 07:06:18 -0800 (PST)
From: DR RHAMA HENRY <drwillamsmith12@gmail.com>
Date: Thu, 16 Nov 2023 16:06:18 +0100
Message-ID: <CALf2aohppn9muVKntPd4PAZRYx-Cs8LgO_2qrK6ubzo_VM2a8Q@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700147179; x=1700751979; darn=driverdev.osuosl.org;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P6G84ldoE2Ehev8TTSbarDAI5zSnG0YTLcf4XHRuYcc=;
 b=QRDg/Zwo9UYL21rKWZGrNuDgHL7vDlCIcEmqjcRuR3g4k9Qw5JABM+pdyhQPVKuPmV
 6d1XfMpuPEy6D/pO0KjVSSi+UNXaSwgIkBJyJTsciZVhpRudoSDK614zjCzBtHQPyCqG
 7Sfg8AEhgbZXbtm1nfCqzfgLBA7dgZj413i38j/EQDRD38IZmBD8Gtd+fAF25MLCCD0M
 /qYcaiQrrIqhQeFwASG57QtouBbYTvBwpifcfOS6VOwv7Z9FbRSGWWf1oQ0c+H33mF39
 73LE3Nw0vMZhA43lRXuHufJpL8ITGCnbOdcMCD5rn+mt6Bwf+K15HbV7oJoQGbGeK1zE
 ycng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QRDg/Zwo
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
Reply-To: drrhamahenry2@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend.......

I am Dr Rhama Henry. I am working with one of the prime banks in
Burkina Faso.I have a business proposal which concerns the transfer
of. ($5.5 Million Dollars) into a foreign account.

Everything about this transaction
shall be legally done without any problem.Further details of the
transfer will be forwarded to you as soon as i receive
your response.

Please Reply me in my privet e-mail.
(drrhamahenry2@gmail.com) If you
are willing to work with me, send me immediately the information listed below.


(1) YOUR FULL NAME...............................
(2) YOUR AGE AND SEX............................
(3) YOUR CONTACT ADDRESS..................
(4) YOUR PRIVATE PHONE N0..........
(5) FAX NUMBER..............
(6) YOUR COUNTRY OF ORIGIN..................
(7) YOUR OCCUPATION.........................

Trusting to hear from you immediately.

Thanks & Best Regards,
Dr Rhama
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
