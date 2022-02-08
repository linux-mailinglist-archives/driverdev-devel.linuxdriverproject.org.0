Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DE64AD031
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Feb 2022 05:12:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62DA260C19;
	Tue,  8 Feb 2022 04:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPZKl0NoQTB1; Tue,  8 Feb 2022 04:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D72E60C0F;
	Tue,  8 Feb 2022 04:11:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50E6C1BF377
 for <devel@linuxdriverproject.org>; Tue,  8 Feb 2022 04:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BA9140887
 for <devel@linuxdriverproject.org>; Tue,  8 Feb 2022 04:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzn6Tgu_mHqT for <devel@linuxdriverproject.org>;
 Tue,  8 Feb 2022 04:11:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C061A40883
 for <devel@driverdev.osuosl.org>; Tue,  8 Feb 2022 04:11:55 +0000 (UTC)
Received: by mail-pf1-x444.google.com with SMTP id s14so1708089pfw.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Feb 2022 20:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=4HWW3srFwPeoeibWEbuFvJKgAXfTYBcpWGvdOE3ZrkM=;
 b=lYKvlhrukwKxmCq0eJSiZhJlAcTJBccadXFJbgAnH6d004s/WccG0zegKMEh80bEmo
 +of6ThRn87c5icBwfpCTNgVNSYsj4deR+g0WDTthArRBO32TkJXAEm/zt6kLcy2i43JG
 icREiJjbOLxH+sFWcAmss9mNbBHXzRpiRxGK/Kgu4YzyKIYZAyoT1vzPKfYKKUNoTFej
 cKyUI3HADjSyS/oB3E4rywaBkh8Z82qYVEwWzKRjnkEKD6gX46PzWYFoxedhnOx5A+DC
 E8Aa3kRf2CZVL4TPVYRDRqK8ATB8+3JFO3ThcTD4oUSgHebxr8xDPjEP6iUicMTBBDuT
 xKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=4HWW3srFwPeoeibWEbuFvJKgAXfTYBcpWGvdOE3ZrkM=;
 b=S186pbwlQsgMaWXOnWAt7XOj9QNBT33Nxu3fN8yf4L39w18jIktXqsghT4w4I6yUlS
 gOjkIuQbgQ56z9FyNZasytvUjSu1uTXKAAYpW9huOdNLZIW1qSlpfn7LQ5WneehbB2h9
 KZsbfi9S2XEnsq0pVbe6Me0W5pyCzFILER0VxvfQEyu6jIb+Syo8Dz56EqVGSh2CHXGB
 lbQHPrmnu+Fq7SIS99hNh9ieQYrFX3jnTXmFmFxnFdq29XxYe9asyVmSxHlcW8qrVVWi
 NdR7Y1PBy4Xnk930XGzqXIkkuPe3ULwvbadWZajEkPLg3uMaMNgJCNJja8q5fm//oWF0
 Ub5w==
X-Gm-Message-State: AOAM531gQFv0vw6znhmzFhwvR2uNFwlxrVcoflJJojHcSbuya6yhf3OZ
 E9qpRCMCBpVlUANTTC/mr+HzRpJUcHsX9OMteSY=
X-Google-Smtp-Source: ABdhPJymEWr9pSiI1FVkg3xVN+3t2GZj5mV9kvzUQqg+UEU9B9KiZRVp73XQs9j03kSTTmz6rJcTIrj8IZbQkMWMAHo=
X-Received: by 2002:a63:81c8:: with SMTP id t191mr2041138pgd.223.1644293514579; 
 Mon, 07 Feb 2022 20:11:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:178d:0:0:0:0 with HTTP; Mon, 7 Feb 2022 20:11:53
 -0800 (PST)
From: "Mr. Timo Helenius" <juanangelino0001@gmail.com>
Date: Mon, 7 Feb 2022 20:11:53 -0800
Message-ID: <CAE93Of3pk3nfj05NsjyXdR312ZqdGLDz1gy1LLjnzcdZgfZcBA@mail.gmail.com>
Subject: Revamped Catastrophe
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
Reply-To: selassie.abebe@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gClRoZSBJbnRlcm5hdGlvbmFsIE1vbmV0YXJ5IEZ1bmQgKElNRikgRXhlY3V0aXZlIEJvYXJk
IGhhcyBhcHByb3ZlZAppbW1lZGlhdGUgZ3JhbnQgcmVsaWVmIGZvciBjaXRpemVuIG9mIDI1IElN
RidzIG1lbWJlcnMgbmF0aW9uLgoKVGhpcyBpcyB1bmRlciB0aGUgSU1G4oCZcyByZXZhbXBlZCBD
YXRhc3Ryb3BoZSBDb250YWlubWVudCBhbmQgUmVsaWVmClRydXN0IChDQ1JUKSBhcyBwYXJ0IG9m
IHRoZSBGdW5k4oCZcyByZXNwb25zZSB0byBoZWxwIGFkZHJlc3MgdGhlIGltcGFjdApvZiB0aGUg
Q09WSUQtMTkgcGFuZGVtaWMuClJlcGx5IHRvIHRoaXMKRW1haWw7c2VsYXNzaWUuYWJlYmVAeWFu
ZGV4LmNvbQpCZXN0IHJlZ2FyZHMgYW5kIFN0YXkgU2FmZQpNci4gVGltbyBIZWxlbml1cwpDb3B5
cmlnaHQgQCAyMDIyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
