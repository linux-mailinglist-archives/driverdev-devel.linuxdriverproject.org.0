Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B15447BF44
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Dec 2021 13:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73930823CF;
	Tue, 21 Dec 2021 12:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XlmMPZUwJ8Cy; Tue, 21 Dec 2021 12:02:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E90728190B;
	Tue, 21 Dec 2021 12:02:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA4201BF35F
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 12:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B68FE60E8C
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 12:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbGJx7vADuUr for <devel@linuxdriverproject.org>;
 Tue, 21 Dec 2021 12:02:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95A8360E52
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 12:02:37 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id r5so12149671pgi.6
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 04:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7QGtLFawEUiArnP/F0NTtTDw9l8TEUGBGlmBpy3N6sU=;
 b=Fb8Z91wUKSdANXC7p8M0ICWdjdtynC6ZpDwBrfVHSDHLJJmXWkGM7uCIGJx7+g++96
 7duOE8syWegbRooUV/EzrVFW6kSD/k3XPHGr8pLF64DUv+GqNRo/IJ0VOCmGpxfXxa2J
 olLXMpvuhiFVDTiZnJNDhUsXuvsKBMXPm38w4jbQopr3uDH3veLnBr/V6EqH3Dx0bDfD
 ddVOdV74/QOGp8fTsmJLm8cSHIeIKGwQkLPNxJB+2X9iaWVov/OCq/yWZAc/5Gvv9zhp
 sFBKo288pE3EHm0ekoV3J4RjJt7Fti4qubtp1pteYFQ/690m20cE9wBbkHIZRE1EGjSc
 XlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=7QGtLFawEUiArnP/F0NTtTDw9l8TEUGBGlmBpy3N6sU=;
 b=JZNyWiesvTkMZ+obbUiTLTbp3HyIUMdgulWKMJV/xG+Rt6U3htnxWIlHDLkgY8+zg8
 6eKnNmXO2NovH0Wc5QjCmIbUFxB7v5D/IV1MYOzjOzEg+hzpq5Nib2jmPfryuca/SHPT
 LidkAyB8uEpSK5IkvhNqBM5iD1NTFumiciWKXuH8OsewI3qDlmJKWRYRMyIZ7klcy0nc
 382Dtdrq9eVaJ2useN3pfU66CohsVmG7SauDjFlOZT3///iunbuh2yY2fxRgXpJj9DXY
 sS/Vp1fWdY3bcWa1Ypt6p+eIwPyX1dhfbETpozjVoBxajTTK1O/NN5MqdyF09Y9nafzy
 50rg==
X-Gm-Message-State: AOAM533B9MBDbt0zI7jRI0HF0Y53Niaxyo1qgCJxaDcHg0rkWTzOYPHV
 WSYjXwMTMGgHKq0Rf40U2kJ3VcwgBcWCgAn02Kw=
X-Google-Smtp-Source: ABdhPJzDzmtQCdOUxLozfMD8puz2/V4TybmPW7vn85EsQReB68vpUtMSgKut5fcfQt5S6kdWy9vDlyht/M+iogJLXkI=
X-Received: by 2002:a05:6a00:10d2:b0:4a8:3613:c475 with SMTP id
 d18-20020a056a0010d200b004a83613c475mr2929292pfu.0.1640088156541; Tue, 21 Dec
 2021 04:02:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:654b:0:0:0:0 with HTTP; Tue, 21 Dec 2021 04:02:36
 -0800 (PST)
From: Debora Kareem <deborakareeem@gmail.com>
Date: Tue, 21 Dec 2021 13:02:36 +0100
Message-ID: <CAGYZk4g=uNGHot9ftVX7BhoyHAoo6=1WaRBcNG7MNkCHPdLPVg@mail.gmail.com>
Subject: HI
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SSBhbSBEZWJvcmEgS2FyZWVtLCBJIGhhdmUgc29tZXRoaW5ncyBJIG5lZWQgdG8gc2hhcmUgd2l0
aCB5b3UgdGhhdApoYXZlIGJlZW4gYm9yZGVyaW5nIG15IGhlYXJ0LCBJIGhvcGUgeW91IGNhbiBn
aXZlIHRoZSBwZXJtaXNzaW9uIHRvIGRvCnRoYXQuIMKgc28gcGxlYXNlIGFtIG5vdCBvbmxpbmUg
bm93IHNvIGtpbmRseSBjb250YWN0IGUgbm93IHdpdGggbXkKcHJpdmF0ZSBlbWFpbCBhZGRlc3Mg
YXTCoGRlYm9yYWthcmVlZW1AZ21haWwuY29twqBzbyB0aGF0IGkgY2FuIHRlbGwgeW91Cm1vcmUg
YWJvdXQgbWUgb2sKCldhaXRpbmcgdG8gaGVhciBmcm9tIHlvdS4KClRoYW5raW5nIHlvdSBmb3Ig
eW91ciB0aW1lLgoKRGVib3JhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
