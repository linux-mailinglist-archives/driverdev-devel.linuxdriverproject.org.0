Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C88B6A591B
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Feb 2023 13:33:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F9734035D;
	Tue, 28 Feb 2023 12:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F9734035D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rx9vtbznkC_0; Tue, 28 Feb 2023 12:33:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 612B3402E5;
	Tue, 28 Feb 2023 12:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 612B3402E5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F100A1BF421
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 12:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB1DB81E58
 for <devel@linuxdriverproject.org>; Tue, 28 Feb 2023 12:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB1DB81E58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSkBAElH4Wvf for <devel@linuxdriverproject.org>;
 Tue, 28 Feb 2023 12:33:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A38A681E07
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A38A681E07
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 12:33:51 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id n6so8840966plf.5
 for <devel@driverdev.osuosl.org>; Tue, 28 Feb 2023 04:33:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=CTnmfgflnjYIgylnH75p6dBBcuWNLg6RYUsMpCDgcOW1/1HMm5FXhX/kqfiHD2zUVM
 9unX7J3UPs+BsJuDY0KZX8l3iDWsC7SQTpbtjmBnG4sX3TtMdWstBQBqZsSTCxuV7fJ+
 14N7w0DlUx69mdXSIcz6TX6/gAVJe3G1J7TFp93tThqUZLu1i+b+dIE9OjM3E/qTmIY2
 ZzNN57u6JMiHcKh8GZ0BjYJ/JQ15nUa8FLOdvn1JBU0jp+8qUOy/Z+gaWnamaSwsp7vd
 owfZzNU2q9GAgkbBKz48E2AFggrrwFh8Kf8nG3UbpgGIFn0/vCHv4+ty/505vcDCXWKj
 evxw==
X-Gm-Message-State: AO0yUKXJc4nWIqIGV12Y2HJNXayo4SGyvzRmp4XCAgxhTm2Ro9/VhmPb
 KxTIMkb6cOk9iOYeisE69EE/Q3CEtnvV0yRjSZw=
X-Google-Smtp-Source: AK7set90qkgt+W4MOrbP8POxjoIULr9EPrmnUMebUbqKfnf6uy8HF8aZErEELIb5naJHwOZXsHZNSwxIFadef4dPrJk=
X-Received: by 2002:a17:902:e891:b0:199:482e:6f93 with SMTP id
 w17-20020a170902e89100b00199482e6f93mr6862784plg.2.1677587630734; Tue, 28 Feb
 2023 04:33:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:8c96:b0:444:56bc:9f62 with HTTP; Tue, 28 Feb 2023
 04:33:49 -0800 (PST)
From: Rita Clement <sbaa2016nas@gmail.com>
Date: Tue, 28 Feb 2023 12:33:49 +0000
Message-ID: <CAPKfaoUB=JWWvz1cgwwQUUTq+9g4FU2Qqi5HpgCENpHpGMRBuw@mail.gmail.com>
Subject: Greetings to you
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=STQhprBM8d84fL8UcfcqKEwmLdT/4tdEiPsqKQJVeEM=;
 b=DSBMmNJXHq0X6aIKa9TXEZ9ip1txUhyu+vEQBarrhAqjPDri+pbVm/QVLoAgjx40Gv
 xFcOEURxSPtUhJV1BBielNZYTdWp2IDGS3mn3hdN35mU+DZbuoRLxynEQNz5aA/P7ITy
 NcJuyxsoOTEdTenSAw/B5qv42QhjiqAajjKF44a/Bhnl/3cI05yGMDGjdon67RGcqStr
 aqAcAFHA0ZFsrO6ZzPyoUkLyjxaBGgYujrjg3muybDBqUIbXUnIQh7VYVQ1xoA4/7IgG
 tpihAkxMVxwrQ5s57YmRC0d9UnRHBukzanX7fR0sMSWu/NTyYx2sSkz2UpKNjpdZL1tM
 A1CA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DSBMmNJX
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
Reply-To: rita.clement57@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings
I am Mrs Rita Clement, I am seriously sick and have no hope of making it.
I have a donation of $3,300,000 which I will want you to receive and
give part of it to charities in your country.
Please get back to me if you are interested.
Regards,
Rita Clement
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
