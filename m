Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2279C6E969A
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Apr 2023 16:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7B4942B68;
	Thu, 20 Apr 2023 14:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7B4942B68
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jL5kB3od23Ln; Thu, 20 Apr 2023 14:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAF7942B3C;
	Thu, 20 Apr 2023 14:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAF7942B3C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D32BE1BF836
 for <devel@linuxdriverproject.org>; Thu, 20 Apr 2023 14:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC4B16FF3D
 for <devel@linuxdriverproject.org>; Thu, 20 Apr 2023 14:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC4B16FF3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OBVzJ-iJl6fu for <devel@linuxdriverproject.org>;
 Thu, 20 Apr 2023 14:06:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 059E76FF54
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 059E76FF54
 for <devel@driverdev.osuosl.org>; Thu, 20 Apr 2023 14:06:07 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id l15so2905665ljq.8
 for <devel@driverdev.osuosl.org>; Thu, 20 Apr 2023 07:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681999566; x=1684591566;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TikCagQRGSzGWOj2YMiTIgqMIw7ESQMXtg8OU9sy6Ns=;
 b=NyZM7p+8jJ6zVFukfpD6PUUzoHSa9Qy9ahBI9+xSfF+SunGNshjfxRsYvmN/ZSqmsb
 gkwpVIGnhtBW2YR4PXp/GapI/CALjKrgB5yoAx1o5dGQi8iOl9I9NsaJYFo+Oykq3gap
 z/6PKK7JGgGhvMliyZ9JE0DLm4LC8Nnc4lvE7dHswwwPEDueq/cCgJz5cZA5uezE7xV2
 KlTv0J8Ef5zvz4fR2kkQQW5faDk0dxEwYi4431ksTkzg/hkMTWGTaNS32BLK/QzTX8Et
 Tg4h0oL01NrawYk4FDZ4FoS5hQflSru4H/o/feCXQEWOQKq5p35J6gMiedJzbHvcuQbo
 wqtA==
X-Gm-Message-State: AAQBX9dy+WcVBixuXm8E1A34PM/w4z2NhTu6urhj5FPCpZvF0wzOXvTW
 REhuVtsETBILqRnoFW9Wnh602AuSCHUYGrUum3s=
X-Google-Smtp-Source: AKy350ZAIBhRgc7xuRNxCCiAkak5GPWewkwVhUurFlBZa1hq/Ms0tqn4fMGz1iBEZ6HzGn8Le3wn4a2NtTcFIcNsGGY=
X-Received: by 2002:a2e:3211:0:b0:2a8:b286:826e with SMTP id
 y17-20020a2e3211000000b002a8b286826emr468893ljy.33.1681999565503; Thu, 20 Apr
 2023 07:06:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6e05:0:b0:21c:eb41:ced4 with HTTP; Thu, 20 Apr 2023
 07:06:04 -0700 (PDT)
From: SPENDE <mdr363027@gmail.com>
Date: Thu, 20 Apr 2023 07:06:04 -0700
Message-ID: <CAJcOtGDV5_1fhY0DO0RfUcvjODLvuv+XcMFX6D67-HY8YR7mTg@mail.gmail.com>
Subject: spende
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681999566; x=1684591566;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TikCagQRGSzGWOj2YMiTIgqMIw7ESQMXtg8OU9sy6Ns=;
 b=PyVlTtUHo65JHluSvhi3/JtESiVRNSe3ySkYYmf2aIaqKUInPaXMA3m18aahh9Xj/n
 ZShh8/bzesPZmcGyVAUsg5L5eXBKviERnecIv+aQxnZaAsUpL10u+St5DmVj+SdBJqru
 FOTgSfAUHwy2v8d8DO9loWAFgEw/J/UT9mv0w62aJIUXFntsXhNXVYDSI58TuBIo7S3a
 YsRgk2xwfn6D7lHcVFwhw6zEKgWftSA1vbhrynw+6Ak6+5c19me8FoOpVs1UO/pEkbhk
 ELXgleIfzg3FRRgkQa5yyxqoTQSGDQYty4Oxq3ciSk02JVSmlbUL6zxmZ7BC7+Hcp3jH
 vX4w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=PyVlTtUH
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
Reply-To: stefanopessina92@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkRlciBCZXRyYWcgdm9uIDEuNTAwLjAwMCwwMCDigqwgd3VyZGUgSWhuZW4gdm9uIFNURUZB
Tk8gYW5nZWJvdGVuL2dlc3BlbmRldApQRVNTSU5BLkJpdHRlIGtvbnRha3RpZXJlbiBTaWUgc3Rl
ZmFub3Blc3NpbmE5MkBnbWFpbC5jb20gZsO8ciB3ZWl0ZXJlCkluZm9ybWF0aW9uZW4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
