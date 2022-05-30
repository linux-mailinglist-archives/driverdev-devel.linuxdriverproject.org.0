Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DED53803D
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 May 2022 16:22:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 020AE611DB;
	Mon, 30 May 2022 14:22:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBR1qVmGJ-h1; Mon, 30 May 2022 14:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0256611D9;
	Mon, 30 May 2022 14:22:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0E61BF332
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 14:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4867084116
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 14:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tn9updCKa1lU for <devel@linuxdriverproject.org>;
 Mon, 30 May 2022 14:22:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C63788410B
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 14:22:51 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id s23so11439496iog.13
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 07:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=XJqXgw0Qi4Ge6Q57wB4GlvotoYnhUuSq68y9152a6AE=;
 b=Uon8wdSqHAkD3+idsDwqsw5/RYE9GUuamAt3cXARqV3NAeDaGTFSLoXs/G0hoAHt+5
 codSJJxeeG8vzFjwPvQIVi8pQwh8BHkUEnJ12EbeOHHixGjwXNoKXbv093UEgoEUQfeX
 Wod0GKDhAdiR/Ye/ytirv8v0lLWuUvpQJix1wPyUwccxWGh+xUage9MXo7G5h4Fk521r
 DI2oe8/v8oseOn3Ob0K+CIOBqiMgej7MNHpUOxL774B1gIBhklt7oanUcWy5rMkcHIBO
 DPJxFGRqOeAdN5gDE89YSbgO4qUovR5BE7nFCFMjyJGWrnHFIj5hKg5UUE4gd+cXFCdp
 hO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=XJqXgw0Qi4Ge6Q57wB4GlvotoYnhUuSq68y9152a6AE=;
 b=eLDKN3MMsnGwF+UeqbS+G15JKLR4RqRPVW2zX4hMNnamrkUJ1WNBNbG7SPzC1kbp9b
 92kjzXfKguj48VGeTYWT7RfSpzPKnhm4Y871ohkdClPoVZwe+7+Os7OYRHNfTedIoWxy
 Xy+LAxPLBqmDKkWmaPLpVVtwNLCIjmvqjFKLHv2aar2dRsAIzVEUg/lJ6TsPlkZe51Pk
 +/NUfopzbwh1Bqo0wi3kFRGpRtbfztroaXaJAIj2DOwCY/07yr8i3OXmg/uvTREvH3kE
 +g+Q2BLaoG/p0Q1GqoBn7sgH2FKf28rmiTbT9jTAl193GyuY/Zb5IByY0ZVPMOiIhluY
 ZNVw==
X-Gm-Message-State: AOAM533U+qDbSdPj86mYas+YAHBTQZ50Ox7imFqZwBTaOSNr2hXqN/8S
 7t2VCYI0xVyMoL7HNF61Wipv8Bq5OKM6OMbToEk=
X-Google-Smtp-Source: ABdhPJwtvJ+07dKTyr7TpOGjLPDpnwsexIyHiV/hfgzfTPNlT+ipRRN6pgsw9s1i3X6T+BTCXU16HSeeuxtReVm1TBY=
X-Received: by 2002:a05:6638:498e:b0:32e:be76:f908 with SMTP id
 cv14-20020a056638498e00b0032ebe76f908mr20858880jab.66.1653920570933; Mon, 30
 May 2022 07:22:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6622:f06:0:0:0:0 with HTTP; Mon, 30 May 2022 07:22:50
 -0700 (PDT)
From: Attorney Amadou <koadaidrissa1@gmail.com>
Date: Mon, 30 May 2022 07:22:50 -0700
Message-ID: <CAOh7+P_+cJJknP6BJXj8NWX7nn8nkbA=aoSG2t49pestA9PG0g@mail.gmail.com>
Subject: 
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
Reply-To: barristerbenjamin221@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gZGVhciBmcmllbmQuDQoNClBsZWFzZSBJIHdpbGwgbG92ZSB0byBkaXNjdXNzIHNvbWV0
aGluZyB2ZXJ5IGltcG9ydGFudCB3aXRoIHlvdSwgSQ0Kd2lsbCBhcHByZWNpYXRlIGl0IGlmIHlv
dSBncmFudCBtZSBhdWRpZW5jZS4NCg0KU2luY2VyZWx5Lg0KQmFycmlzdGVyIEFtYWRvdSBCZW5q
YW1pbiBFc3EuDQouLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4NCuimquaEm+OB
quOCi+WPi+S6uuOAgeOBk+OCk+OBq+OBoeOBr+OAgg0KDQrnp4Hjga/jgYLjgarjgZ/jgajpnZ7l
uLjjgavph43opoHjgarjgZPjgajjgavjgaTjgYTjgaboqbHjgZflkIjjgYbjga7jgYzlpKflpb3j
gY3jgafjgZnjgIHjgYLjgarjgZ/jgYznp4HjgavogbTooYbjgpLkuI7jgYjjgabjgY/jgozjgozj
gbDnp4Hjga/jgZ3jgozjgpLmhJ/orJ3jgZfjgb7jgZnjgIINCg0K5b+D44GL44KJ44CCDQrjg5Dj
g6rjgrnjgr/jg7zjgqLjg57jg4njgqXjg5njg7Pjgrjjg6Pjg5/jg7NFc3HjgIINCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
