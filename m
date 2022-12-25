Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7182655C79
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Dec 2022 07:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B83D60BD5;
	Sun, 25 Dec 2022 06:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B83D60BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HsR9QD0zBbW; Sun, 25 Dec 2022 06:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECD1C60AB2;
	Sun, 25 Dec 2022 06:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECD1C60AB2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5F391BF5B5
 for <devel@linuxdriverproject.org>; Sun, 25 Dec 2022 06:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8981400E7
 for <devel@linuxdriverproject.org>; Sun, 25 Dec 2022 06:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4WsS0vfisn5 for <devel@linuxdriverproject.org>;
 Sun, 25 Dec 2022 06:00:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com
 [IPv6:2a00:1450:4864:20::33c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BE8E400AC
 for <devel@driverdev.osuosl.org>; Sun, 25 Dec 2022 06:00:19 +0000 (UTC)
Received: by mail-wm1-x33c.google.com with SMTP id
 i7-20020a05600c354700b003d62131fe46sf6243199wmq.5
 for <devel@driverdev.osuosl.org>; Sat, 24 Dec 2022 22:00:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671948017; cv=pass;
 d=google.com; s=arc-20160816;
 b=xILBb64XTUrk0Z/ZGPzaFsP5ZanIWT0XWI9nCt78EdcYjdI761Lzz++gMP5MbtZ8hd
 kKcHtYu+i7byqEzkSzrKRCCJbTrLcaK0F4uwvvCKRTJZw0zwKGOq3dODLS5e3VHKsx6M
 m3XiAkQ4IDPohFtzlcI7+FHFi9joCOZ5rSEaDKys6P9tjvIEEzVJsC2GlWJ1szKqkOU/
 PKAFzSI1YS6ntfPGK9HR4zpczmdH2EGrRhGshRFM3GOVVim00rx8pZvsZFAkTsAG7b3s
 F/GFqmoHN384BOxfx4Ddzva9DOVboj6dQEIeEYhGFM9YESGb65nUK3VqIApMEQrcO6Hj
 K+nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:content-transfer-encoding:to:subject
 :message-id:date:from:mime-version:sender:dkim-signature
 :dkim-signature;
 bh=Em8XbIgfKAgVplqcIixjoNC5iN0Aa3RdMl4I94ifXnA=;
 b=OeWc6GiLdmDehRwcI9O5u944Sv6YwvVsmaXp3hSg40sq8ANXZY2JmaQRwLChO7DRBN
 8uhAsPnzI49CjqypbC/fMBajTAy32qa14jQCHy95Fue7wEpfPLOMCOXVgOs5eUF1Ek2a
 6+/TJ7f5DGmOB8xGeWnLJ7qxHTAVh/3MyujuQoGs6egFQQwEovhAmsZf7JRK/Qh0y63k
 nglvwTrmYT7+dwKxNa3tnpDdwzrOzQPOEX4KFgUsvBseeVK9k235Qs1DypJCVgYM1eHk
 pHCATWSB7HKlOHSYQ2R6XjB5wKnDT/TKFe/tTZLyOe3n8OjMm62ToAKFXDAlCbD0bW4H
 Rqnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i0ZDcIr6;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::62b as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post
 :x-spam-checked-in-group:list-id:mailing-list:precedence
 :x-original-authentication-results:x-original-sender
 :content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Em8XbIgfKAgVplqcIixjoNC5iN0Aa3RdMl4I94ifXnA=;
 b=d7+zLJxBpMN5DzRdYdvk3fcKDpvejdssINM57pvu2s5BsVO7TvXDLrwW1jggWdP19K
 TTahAHpY8YQE9BXKv2ytfe4YVN4DUkZ+191J2CVzCAHZLddcldria/qFZXO7mdyJFsUP
 p7lLn3hW84Whvj3g1ZxX0wZlUd0VEckzp88y9z92kxPdcll6CEo9XfGMJ4ZKOwoGTdLc
 /KeeozKZoEClIvh+Xs190vQwJbt3EB3WcbJKbmUhO+EVCdZOdb6T//EfE0LtzN1LmZfx
 3aNgonQKQeRnJ+3PIqJkPpDZlp67OUxbO6bwvOaUApBLSJ5HpVlS27QE7LmRdgZCotTF
 rndA==
X-Gm-Message-State: AFqh2kp5yd8BJomOYog25SSPd828IqIF7P3kuKpzzA+dvzmB6vNLI+X/
 6PNjsraDl6WatOQwicIynCM=
X-Google-Smtp-Source: AMrXdXuQ8bm/ESNbrYvn1t/tw48a6Pcffr9e39WurFWnQeh/eLIP3cNVAXZqYem71XhlsLSGqLwfrw==
X-Received: by 2002:adf:d085:0:b0:27b:e9ae:c9c3 with SMTP id
 y5-20020adfd085000000b0027be9aec9c3mr23435wrh.220.1671948017495; 
 Sat, 24 Dec 2022 22:00:17 -0800 (PST)
X-BeenThere: 2030-mohanndahad24@googlegroups.com
Received: by 2002:a05:6000:237:b0:269:604b:a0dd with SMTP id
 l23-20020a056000023700b00269604ba0ddls7720149wrz.0.-pod-prod-gmail; Sat, 24
 Dec 2022 22:00:05 -0800 (PST)
X-Received: by 2002:a5d:430f:0:b0:244:48b3:d12b with SMTP id
 h15-20020a5d430f000000b0024448b3d12bmr8591730wrq.45.1671948005608; 
 Sat, 24 Dec 2022 22:00:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671948005; cv=none;
 d=google.com; s=arc-20160816;
 b=o8tKtqKPCdODnGVizF4tigqKNnSpgBVUErn49gofyS/W9qAGpj/MZ0vDGYRu9WHhFX
 W9Dk38C1Scg2wqKwhqTIeDr83Ia49eaaH5GIAFs/QzKgQSUlZ7JjqXziyR31jw+Sb6CP
 /yh7ESHDCO1VPeoCWGghSG7Ig5C7GpULE8+TbprHxXvmfz8rsFOJTA5TzrBMHJdk78np
 GHKMyMioFGNDtTk95Ybd4x69hH+70Fvc6szT+Jtvfgez+2ObGoDAkOXPEYnbqpiovbld
 mDMLKS62wFGtsu96pQV7KjY+wgj9ImAsah5GysXR/ds+nvxZF2aPp/r5svdKU4d+2jWO
 eGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:dkim-signature;
 bh=aYTBHALsbPt0wOqf5E3viVql+dheWAqLGwNZvtruEwc=;
 b=EKEn2Ls+9apm+JXt1uJ1l+NoEhduqriaMk9iDVwsGFtiCi3jo8JSDayBoJOt9wTx5z
 XnsqkhdfdHPfSQhW+0bft6norAy1zdTW8H9NFsbaS67gyEW+xsjfAE1Gj+azCBQYmqTJ
 wVL3GNmoJzHDTzSNrVidu/MT5FrFbkkZ1YcdVdDcw68CguuunD4gjgYIEjkCroGTCAxF
 oWLpObIs4sQz7HlUEsCaXF2h1d1EwZ4S+rMSPhi6HxqOkhxJTYrGU8UC5mrNL+ZWLN8R
 d+mTe4GwZad+G19Rbmc4uNIYMvWkTFIRgatFC8AA9I7FGsFU4l30JrfN0xtSuZobRi37
 VAjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i0ZDcIr6;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::62b as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com.
 [2a00:1450:4864:20::62b]) by gmr-mx.google.com with ESMTPS id
 x2-20020adfec02000000b00236e8baff63si319661wrn.0.2022.12.24.22.00.05
 for <2030-mohanndahad24@googlegroups.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 24 Dec 2022 22:00:05 -0800 (PST)
Received-SPF: pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b; 
Received: by mail-ej1-x62b.google.com with SMTP id t17so20547876eju.1
 for <2030-mohanndahad24@googlegroups.com>;
 Sat, 24 Dec 2022 22:00:05 -0800 (PST)
X-Received: by 2002:a17:906:ccc7:b0:814:3c69:5b30 with SMTP id
 ot7-20020a170906ccc700b008143c695b30mr942196ejb.437.1671948005226; Sat, 24
 Dec 2022 22:00:05 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?2LPYp9ix2Kkg2LnYqNivINin2YTYrNmI2KfYrw==?=
 <saradfd5254@gmail.com>
Date: Sun, 25 Dec 2022 08:00:00 +0200
Message-ID: <CAC+vY9Ahm8K74CC_TLTKO832_UmyFBCPu9+aeteNzDkner_Gwg@mail.gmail.com>
Subject: =?UTF-8?B?2KfZhNmB2KfYudmE2YrYqSDYp9mE2KfYr9in2LHZitipIC8g2K/YqNmE2YjZhdip2LnZhA==?=
 =?UTF-8?B?2YjZhSDYp9mE2KjZitin2YbYp9iqINmI2KrYt9io2YrZgtin2KrZh9inINmB2Yog2YXYrNin2YQg2Kc=?=
 =?UTF-8?B?2K/Yp9ix2Kkg2KfZhNin2LnZhdin2YQg2YTZhNmB2KrYsdipINmF2YYgMSDigJMgNSDZitmG2YDZgNmA?=
 =?UTF-8?B?2YDZgNmA2YDZgNmA2KfZitixIDIwMjMg2YXZiNin2YTZhdi52KrZhdivINmF2YYg2KfZhNiv2KfYsSA=?=
 =?UTF-8?B?2KfZhNi52LHYqNmK2Kkg2YTZhNiq2YbZhdmK2Kkg2KfZhNin2K/Yp9ix2YrYqSAtIEFIQUQg2KfZhNmC?=
 =?UTF-8?B?2KfZh9ix2Kkg4oCT2KzZhdmH2YjYsdmK2Kkg2YXYtdixINin2YTYudix2KjZitip2YXYuSDYp9mF2YM=?=
 =?UTF-8?B?2KfZhtmK2KnYp9mE2K/Ysdin2LPYqSDYp9mI2YYg2YTYp9mK2YYg2LnYqNixIFpPT00gLyAwMDIwMTA5?=
 =?UTF-8?B?Njg0MTYyNg==?=
To: undisclosed-recipients:;
X-Original-Sender: saradfd5254@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=i0ZDcIr6;       spf=pass
 (google.com: domain of saradfd5254@gmail.com designates 2a00:1450:4864:20::62b
 as permitted sender) smtp.mailfrom=saradfd5254@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list 2030-mohanndahad24@googlegroups.com;
 contact 2030-mohanndahad24+owners@googlegroups.com
X-Spam-Checked-In-Group: 2030-mohanndahad24@googlegroups.com
X-Google-Group-Id: 68851416281
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlegroups.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Em8XbIgfKAgVplqcIixjoNC5iN0Aa3RdMl4I94ifXnA=;
 b=AGg+5rdhiECTiNoYpZK8QXN0hp+YqdU5lcacaRKQZCA0W/zul11/pdia9QvtM1Ho6W
 nvsKs1sNmxJc3+NrrtNYGVbzTtyHgAK3PwFFaAuDGfmTpCP44DEugoJZPmnltX5kXwkc
 34U7WrKxNuEYta+tZEqR84Rxidjsqf9cDDd4Jp0W+mtIS7vT3DTvTMcMZNJZT4C5anN3
 FugoaDPIpCIXkH/ZkAC5YeeLv5Cnbzs5StdSJPSVXmaWKZsdOVSbuKuZEz7uFGuxNMoe
 xw/CqFoAe8d9YgKJsreMrEpymVJU1gutvnukO70QhAGCMV/TfupWhq3aKeEYSBx9zdjX
 XIww==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Em8XbIgfKAgVplqcIixjoNC5iN0Aa3RdMl4I94ifXnA=;
 b=MGm6Xk00df6wrRWbjtP+PE0Aqf98df98G0YC3D33EiWnugD8kTvTfEOfwzw6+C4Ev3
 qbZdLb3scGqdLKNAgGznPfJcWGraFqsSL1XYW7k1JL9AREw1tDba9TLoD4zEMV38+Q9j
 6d1uSbsKg1/+4y/IxmV37kKhlhtGybz6h8Yew0cKJFlYrLXOhr0z5GwH1ECNX4S6hf1Y
 8xVsFLxoeENT5KrW0cPMzlXkq0TwAqa1iWm4K449MAqK3j3kWtnrBnXcOyV42N0xm2tR
 rlMyr5hhJ9LOT2FAN/23GrlVZNv/qOcIpJjfuZAynfD/nyPvifKSjt8i1ZGZwEocQLDv
 hOlw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=permerror (bad
 message/signature format)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=googlegroups.com
 header.b="AGg+5rdh"; dkim=pass (2048-bit key) header.d=gmail.com
 header.b="MGm6Xk00"
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
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

2KfZhNiz2YTYp9mFINi52YTZitmD2YUg2YjYsdit2YXYqSDYp9mE2YTZhyDZiNio2LHZg9in2KrY
qQ0KDQrYqtmH2K/ZitmD2YUg2KfZhNiv2KfYsSDYp9mE2LnYsdio2YrYqSDZhNmE2KrZhtmF2YrY
qSDYp9mE2KfYr9in2LHZitipINij2LfZitioINiq2K3Zitin2KrZh9inINmI2KPYtdiv2YIg2KPZ
hdmG2YrYp9iq2YfYpyDYqNiv2YjYp9mFINin2YTYqtmI2YHZitmCLg0KDQrZiNiq2YLYr9mFINmE
2YPZhQ0KDQrYr9io2YTZiNmF2Kkg2LnZhNmI2YUg2KfZhNio2YrYp9mG2KfYqiDZiNiq2LfYqNmK
2YLYp9iq2YfYpyDZgdmKINmF2KzYp9mEINin2K/Yp9ix2Kkg2KfZhNin2LnZhdin2YQNCg0K2YTZ
hNmB2KrYsdipINmF2YYgMSDigJMgNSDZitmG2YDZgNmA2YDZgNmA2YDZgNmA2KfZitixIDIwMjMg
2YUNCg0K2YjYp9mE2YXYudiq2YXYryDZhdmGINin2YTYr9in2LEg2KfZhNi52LHYqNmK2Kkg2YTZ
hNiq2YbZhdmK2Kkg2KfZhNin2K/Yp9ix2YrYqSAtIEFIQUQNCg0K2KfZhNmC2KfZh9ix2Kkg4oCT
INis2YXZh9mI2LHZitipINmF2LXYsSDYp9mE2LnYsdio2YrYqQ0KDQrZhdi5INin2YXZg9in2YbZ
itipINin2YTYr9ix2KfYs9ipINin2YjZhiDZhNin2YrZhiDYudio2LEgWk9PTQ0KDQoNCg0K2YXZ
gtiv2YXYqToNCg0K2LPYqtiq2LnYsdmBINmF2YYg2K7ZhNin2YQg2YfYsNinINin2YTYqNix2YbY
p9mF2Kwg2LnZhNmJINmF2Kcg2YrZhNiy2YXZgyDZhNmD2Yog2KrYtdio2K0g2LnYp9mE2YUg2KjZ
itin2YbYp9iqINmF2KrYrti12LXYjA0K2KrYudiq2KjYsSDZh9iw2Ycg2KjZhdir2KfYqNipINin
2YTYrti32YjYqSDYp9mE2KPZiNmE2Ykg2YTZhNiq2K7Ytdi1INmB2Yog2LnZhNmI2YUg2KfZhNio
2YrYp9mG2KfYqiDZiNi52YTZhSDYp9mE2KjZitin2YbYp9iqDQrYo9it2K8g2KfZhNiq2K7Ytdi1
2KfYqiDZgdmKINiq2YLZhtmK2Kkg2KfZhNmF2LnZhNmI2YXYp9iqINmI2YTZh9inINin2YTYudiv
2YrYryDZhdmGINin2YTZgdmI2KfYptivINmF2YbZh9inINis2LnZhA0K2KfZhNij2LnZhdin2YQg
2KPZg9ir2LEg2KXZhtiq2KfYrNmK2Kkg2YXZhiDYrtmE2KfZhCDZhdiz2KfYudiv2KrZh9inINi5
2YTZiSDYqtiz2LHZiti5INmI2KrZitix2Kkg2KfZhNmG2YXYp9iw2Kwg2YjYqtmC2K/ZitmF2YfY
pw0K2KjYtNmD2YQg2KPYs9ix2Lkg2YjYqNmF2LnYr9mEINiu2LfYoyDYo9mC2YQg2YXZhdinINmK
2LPYp9i52K8g2KfZhNmF2LPYptmI2YTZitmGINi52YTZiSDYp9iq2K7Yp9iwINin2YTZgtix2KfY
sSDZiNiq2LPYp9i52K8NCtmD2LDZhNmDINmB2Yog2KrYs9ix2YrYuSDYp9mE2YjZgtiqINmE2YTY
rdi12YjZhCDYudmE2Ykg2KfZhNmC2YrZhdipINio2KfYs9iq2K7Yr9in2YUg2KPYr9mI2KfYqiDY
udmE2YUg2KfZhNio2YrYp9mG2KfYqg0K2KfZhNmF2LHYptmK2Kkg2YjYqtiq2KjYuSDZiNmC2YrY
p9izINin2YTZhtiq2KfYptisINmF2YYg2KfZhNiw2YPYp9ihINin2YTYp9i12LfZhtin2LnZiiDY
udio2LEg2K/ZiNix2Kkg2K3Zitin2KrZhyDZiNiq2YfZitim2KkNCtmI2K3ZiNmD2YXYqSDYp9mE
2LDZg9in2KEg2KfZhNin2LXYt9mG2KfYudmKINio2LPYsdi52Kkg2YXYuSDYrdin2YTYp9iqINin
2YTYo9i52YXYp9mEINin2YTZhdiq2LrZitix2Kkg2YjYqtit2LPZitmGINmG2KrYp9im2KwNCtin
2YTYo9i52YXYp9mEINio2KfYs9iq2K7Yr9in2YUg2KfZhNiq2K3ZhNmK2YTYp9iqINin2YTZiNi1
2YHZitipINmI2KrZhdmK2YrYsiDYp9mE2LDZg9in2KEg2KfZhNin2LXYt9mG2KfYudmKINio2KfZ
hNi02YHYp9mB2YrYqQ0K2YjYp9mE2YjYttmI2K0uDQoNCg0KDQrYp9mE2KfZh9iv2KfZgQ0KDQrZ
g9mK2YHZitipINi52YXZhCDZhdmG2YfYrCBNaWNyb3NvZnQgRGF0YSBTY2llbmNlDQrZg9mK2YHZ
itipINin2YTYqtmG2YLZhCDZgdmKINin2YTZhdmG2KfZh9isINin2YTYr9ix2KfYs9mK2Kkg2YjY
p9mE2KrYrti32YrYtyDZhNis2K/ZiNmE2Kkg2KfZhNiv2YjYsdipLg0K2KrZgtmG2YrYp9iqINin
2LPYqtmD2LTYp9mBINin2YTYqNmK2KfZhtin2Kog2KfZhNij2LPYp9iz2YrYqSDZiNin2YTYqti1
2YjYsSDZgdmKIE1pY3Jvc29mdCBFeGNlbA0K2KfZhNil2K3Ytdin2KbZitin2Kog2KfZhNij2LPY
p9iz2YrYqSDYp9mE2KrZiiDZitmF2YPZhiDYp9iz2KrYrtiv2KfZhdmH2Kcg2YTYqtit2YTZitmE
INin2YTYqNmK2KfZhtin2KouDQrZgdmH2YUg2KfZhNiu2LXYp9im2LUg2KfZhNij2LPYp9iz2YrY
qSDZiNin2YTYqtiu2LLZitmGINmI2KrZgtmG2YrYp9iqINin2YTYqtit2YTZitmEINmI2KfZhNiq
2YjYstmK2LnYp9iqINiw2KfYqiDYp9mE2LXZhNipDQrYp9mD2KrYs9in2Kgg2KfZhNiu2KjYsdip
INmF2Lkg2KXYt9in2LEg2LnZhdmEINin2YTYrdmI2LPYqNipINin2YTZhdiq2LPYp9mF2K0g2YXY
uSDYp9mE2KPYrti32KfYoQ0K2KXZhti02KfYoSDZhdmH2KfZhSDZgtin2KjZhNipINmE2YTYqtmD
2YjZitmGINmI2YLYp9io2YTYqSDZhNmE2KrZhtmB2YrYsA0K2YHZh9mFINin2YTZgdix2YjZgiDY
p9mE2K/ZgtmK2YLYqSDZgdmKINmD2KrYp9io2Kkg2KfZhNio2LHYp9mF2Kwg2KfZhNmI2LjZitmB
2YrYqQ0K2YHZh9mFINmF2K7YqtmE2YEg2LnZhdmE2YrYp9iqINmF2LnYp9mE2KzYqSDYp9mE2KjZ
itin2YbYp9iqINmI2KfZhNin2LPYqti52YTYp9mFINmI2KfZhNmF2KvYp9io2LHYqSDYp9mE2YXY
qtin2K3YqQ0K2YTZhNin2LPYqtiu2K/Yp9mFINmB2Yog2LPZitin2YIgUkRELg0K2KrZhtmB2YrY
sCDYp9mE2YXZh9in2YUg2YXYq9mEINin2YTYqti12YHZitipINmI2KfZhNin2K7YqtmK2KfYsSDZ
iNin2YTYqti12YbZitmBLg0KDQoNCg0KDQoNCtmE2YXYstmK2K8g2YXZhiDYp9mE2YXYudmE2YjZ
hdin2Kog2YrZhdmD2YbZg9mFINin2YTYqtmI2KfYtdmEINmF2LkNCg0K2YXYr9mK2LEg2KfZhNiq
2K/YsdmK2KgNCg0K2KMgLyDYs9in2LHZhyDYudio2K8g2KfZhNis2YjYp9ivDQoNCtis2YjYp9mE
IDogMDAyMDEwNjI5OTI1MTANCg0K2YfZgNin2KrZgTowMDIwMjM3ODAwNTgzIC0gMDAyMDIzNzgw
MDY5Mw0KDQrZgdin2YPYszowMDIwMjM1ODY2MzIzIOKAkyAwMDIwMjM3ODAwNTczDQoNCi0tIApZ
b3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRo
ZSBHb29nbGUgR3JvdXBzICLYsdik2YrYqTIwMzDZhNmE2K/Yp9ixINin2YTYudix2KjZitipIiBn
cm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBl
bWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byAyMDMwLW1vaGFubmRhaGFkMjQrdW5zdWJz
Y3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdl
YiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvMjAzMC1tb2hhbm5kYWhh
ZDI0L0NBQyUyQnZZOUFobThLNzRDQ19UTFRLTzgzMl9VbXlGQkNQdTklMkJhZXRlTnpEa25lcl9H
d2clNDBtYWlsLmdtYWlsLmNvbS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
