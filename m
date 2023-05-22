Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA2870C074
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 May 2023 15:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DA8560B5C;
	Mon, 22 May 2023 13:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DA8560B5C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYuOonvmjYPx; Mon, 22 May 2023 13:55:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37C9B60784;
	Mon, 22 May 2023 13:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37C9B60784
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A01051BF397
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 13:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7409582330
 for <devel@linuxdriverproject.org>; Mon, 22 May 2023 13:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7409582330
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uoqi_1QOxOw4 for <devel@linuxdriverproject.org>;
 Mon, 22 May 2023 13:55:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02FE782323
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02FE782323
 for <devel@driverdev.osuosl.org>; Mon, 22 May 2023 13:55:17 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-5341737d7aeso5421020a12.2
 for <devel@driverdev.osuosl.org>; Mon, 22 May 2023 06:55:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684763717; x=1687355717;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r9wGz8SrltRz14Oeh6+SGx3oU8yPBGTrFKF1H2ZoB/Q=;
 b=GJ8EJGhQYunIvOVhNThOQmBrd1OHoBcm0LoSJFNK3Cdw0DWDJzGyVbF6Z9GEL9C/au
 w8q/6RKjYIyMapy9j4tV1klyPePQKn971nDnIvMm/OQeJNMpAX74x1Q0JDdjo9qbJEOv
 /xtWSbyg1y+OlkJoaAotCNoEhifePkR7rEBz8ojX2wQGZdwVrLt3ABCkrJlGzmDa3wQS
 wH/rlSSYkSihNYnMZbvbcJtTV5OKBQU3+4JOleZPi42Th8OS9et2IlaOAwjtLDAESS9V
 3MhubrloJmT6GhBML/tpNFDFfl/Bi2+iK5kdn3ibXSq+IkSCPrtYc5wmNlHYWQZmPiUK
 NFEA==
X-Gm-Message-State: AC+VfDyepQV5NxMZap16ESztTxz2VWtyMY7NYLBCU6QXIjOSf63gBN5R
 0w89FNiw0gAO0cwRmIM4wKICiQ1oGs4ltPBYTzk=
X-Google-Smtp-Source: ACHHUZ5G5wy1TWD12XeICzIUp9q9DlWhu0DecUIJq4pg9yODe3eV7q1eVxZaLsrfeozf3yRssIb5b6iiTiBlJXmUNdc=
X-Received: by 2002:a17:90b:3687:b0:250:a964:9379 with SMTP id
 mj7-20020a17090b368700b00250a9649379mr10073410pjb.9.1684763717332; Mon, 22
 May 2023 06:55:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7300:748b:b0:b8:829c:4534 with HTTP; Mon, 22 May 2023
 06:55:16 -0700 (PDT)
From: Arexi Foundation <salabajega1@gmail.com>
Date: Mon, 22 May 2023 14:55:16 +0100
Message-ID: <CAKkGwQ1GwgaKqf3JK2P4d8E_5TWzr4gX=9RFxjXBu3rTdZETfw@mail.gmail.com>
Subject: SIE HABEN EINE SPENDE ERHALTEN
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684763717; x=1687355717;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=r9wGz8SrltRz14Oeh6+SGx3oU8yPBGTrFKF1H2ZoB/Q=;
 b=WKdVyYXf+5OoYC6pysDDCHDleb6SQCMXgDPUX8gRdcr0jMQKqczjhLhwJ+Oh2XS9NC
 iCn+YAWENWmg+uQIDPo0RM6HIM2ylhrsMac8e3ahf1zCMRIZ3Yd5ym+RjstKrJpmKSK1
 ClNF6FH++dGypPomvpsKNEPipy0da+HmUySawxotUNAD29XC132R0kysbi2CmnRpDuBw
 EN1ttJrsTatpslCc0LTjPfX7aWozR8+KMUq/3MwsduMJ7HTVy2X88iH4RXfyWlJqG1VM
 kHEFordnFhINxKOH/DBhBv+0x3TYuKavEPJu2v9jQuZYR70iPH5Jn8ZQ83UOcHvDETrW
 dOtw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=WKdVyYXf
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
Reply-To: charleneduscott9890@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhlcnpsaWNoZW4gR2zDvGNrd3Vuc2NoIQogICBTaWUgd3VyZGVuIGFscyBCZWfDvG5zdGln
dGVyIGbDvHIgZWluZSBTcGVuZGUgaW4gSMO2aGUgdm9uIDEuMDAwLjAwMCAkCm1pdCBmcmV1bmRs
aWNoZXIgR2VuZWhtaWd1bmcgZGVyIEFyZXhpIEZvdW5kYXRpb24gYXVzZ2V3w6RobHQuIEJpdHRl
CmJlYWNodGVuIFNpZSwgZGFzcyBkaWUgR2VuZWhtaWd1bmcgSWhyZXIgU3BlbmRlIGlubmVyaGFs
YiB2b24gNzIKU3R1bmRlbiDDvGJlciBlaW5lIHp1Z2VsYXNzZW5lIEdlc2Now6RmdHNiYW5rIGF1
ZiBJaHIgS29udG8gw7xiZXJ3aWVzZW4Kd2lyZC4KICBCaXR0ZSBzZW5kZW4gU2llIHVucyBlaW5l
IEFudHdvcnQgenVyw7xjaywgZGFtaXQgd2lyIGRpZSBHw7xsdGlna2VpdApJaHJlciBFLU1haWwg
YmVzdMOkdGlnZW4ga8O2bm5lbi4KCkRpcmVrdG9yCkFyZXhpIFN0aWZ0dW5nCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApk
ZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJw
cm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
