Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2E252FB21
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 May 2022 13:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 647D94182C;
	Sat, 21 May 2022 11:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yoMIyivZEVM9; Sat, 21 May 2022 11:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CADCB4029D;
	Sat, 21 May 2022 11:14:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A5231BF5F6
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 11:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7527061002
 for <devel@linuxdriverproject.org>; Sat, 21 May 2022 11:14:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xiMqYiapbO73 for <devel@linuxdriverproject.org>;
 Sat, 21 May 2022 11:14:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17D8861001
 for <devel@driverdev.osuosl.org>; Sat, 21 May 2022 11:14:14 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id b7so10579678vsq.1
 for <devel@driverdev.osuosl.org>; Sat, 21 May 2022 04:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=X/LfI36BSnheNbUVqprNExBt6+HG6v7WzSsaVsfPn2k=;
 b=FnOfpDWdoFkktQbdpjrwB6N4o5lmzW/eXItryC/SURLCCnqhlLJGkj8C2LoLG1el9L
 wcyoHjNlt37vjqNP0So5BDk7UVzswfeHlS5b3IYlpqzkeGTy3k9chj1h8FPtvANsp/jv
 ovs1HcbU8C5coc7AOcE1t4PQ0Y2uEIC+wSsA44xzNdKzvuIwzheyV8ALmvPsSziaWhR3
 4DIrM7Wr4OQ1V3UpDCucwKSsikIPoeaTY4VD70qBRUyhAEfGai/F1EqLLTrgKRhPhIg3
 9FK8K47BMOb6HHIx5DdhNZUyry8gv9pp18l8qDAefA/edo4HJSMAtyzgwDeq3cIvr6rW
 ydhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=X/LfI36BSnheNbUVqprNExBt6+HG6v7WzSsaVsfPn2k=;
 b=YOYbYa/GgggOReRVRtiwS4nnwgb5r8aAhyGlQ5iQmkWSCuC/SfVw+ZRbvSVmGNioag
 vY5/v7UmLUV9+xs1cb/EHhObaf0me51gIGRBgWe6/0f/hO4RJkrkODyBvUop3uNec/QX
 RHaHCR/k6FABbtNjkQW9V4yuBDfaEQovT/w9y9KrAzA05NJvk7qyR2e1uN+yviaHow7K
 wIp2sM+R3jq/zNMKXGdwdaB0tcLx7oarmYzbjO3OQShm3hXteNsO5CkhieH4VcJE0XDs
 tJoaHSz6Ua0eJpZs6gyf7ZvLzGR2s5Gy+dHiEe2CKqWxARzy2VmR211k/Kojj2tgq0c6
 /12Q==
X-Gm-Message-State: AOAM530pqESbgUAcrnKwWguKZtoBuH6dohP9/CTEJfpqn48RK6+2yIgY
 m+VcIbPiv8tZAYkHHoLl0/wuOaD+m175L+IreQ0=
X-Google-Smtp-Source: ABdhPJyKUzuUEhXkOC9+b7d80Ua94MC5sfUZqLKkqkvN2ZVjotfURg0tQigvAB0weXpD6eARqmhO/p85NR48FhEEAyI=
X-Received: by 2002:a67:c117:0:b0:337:a2ea:98e3 with SMTP id
 d23-20020a67c117000000b00337a2ea98e3mr169754vsj.59.1653131653787; Sat, 21 May
 2022 04:14:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:aaed:0:b0:2bd:e1a:30c2 with HTTP; Sat, 21 May 2022
 04:14:13 -0700 (PDT)
From: "Mrs. Anne" <annl10390c@gmail.com>
Date: Sat, 21 May 2022 13:14:13 +0200
X-Google-Sender-Auth: blj3ekTukwCxPQwTEtzYKv_cBq8
Message-ID: <CA+tzYOV2kjd2e2fAwpRasTKufOJVLOXgaQy1eMiikMT0EQvXOg@mail.gmail.com>
Subject: Hello
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
Reply-To: carterannette557@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQKCkkgYW0gTXJzLiBBbm5lLCBhY2NvdW50IG1hbmFnZXIgZm9yIGFuIGludmVz
dG1lbnQgYmFuayBoZXJlIGluClVLLUxvbmRvbi4gVGhlcmUgaXMgYSBwcm9qZWN0IGFjY291bnQg
b3BlbmVkIGluIG15IGNvbXBhbnkgYnkgYQpsb25nLXRpbWUgY2xpZW50IG9mIG91ciBiYW5rIHdo
byBkaWVkIG9uIEZlYnJ1YXJ5IDI0IGR1cmluZyB0aGUKUnVzc2lhbiB3YXIgYWdhaW5zdCBVa3Jh
aW5lLiBJIGhhdmUgdGhlIG9wcG9ydHVuaXR5IHRvIHRyYW5zZmVyIHRoZQpsZWZ0IG92ZXIgZnVu
ZCAowqM2LjMgbWlsbGlvbikgU2l4IG1pbGxpb24gdGhyZWUgaHVuZHJlZCB0aG91c2FuZApwb3Vu
ZHMgc3RlcmxpbmcuCgpJIHdhbnQgdG8gaW52ZXN0IHRoZXNlIGZ1bmRzIGFuZCBpbnRyb2R1Y2Ug
eW91IHRvIG91ciBiYW5rIGZvciB0aGlzCnByb2plY3QgYXMgdGhlIG5leHQgb2Yga2luIGFuZCB0
aGlzIHdpbGwgYmUgZXhlY3V0ZWQgdW5kZXIgYQpsZWdpdGltYXRlIGFncmVlbWVudCB0aGF0IHdp
bGwgcHJvdGVjdCB1cyBmcm9tIGFueSBicmVhY2ggb2YgdGhlIGxhdy4KV2Ugd2lsbCBzaGFyZSB0
aGUgZnVuZCA0MCUgZm9yIHlvdSBpbiB5b3VyIHBhcnRpY2lwYXRpb24sIDUwJSBmb3IgbWUuCklm
IHlvdSBhcmUgcmVhbGx5IGludGVyZXN0ZWQgaW4gbXkgcHJvcG9zYWwsIG1vcmUgZGV0YWlscyBh
Ym91dCB0aGUKdHJhbnNmZXIgb2YgZnVuZHMgd2lsbCBiZSBzZW50IHRvIHlvdS4KClJlZ2FyZHMu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
