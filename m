Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCD64CA7CA
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Mar 2022 15:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6242981280;
	Wed,  2 Mar 2022 14:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZPtiNFP37h8M; Wed,  2 Mar 2022 14:18:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FC8981241;
	Wed,  2 Mar 2022 14:18:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6CF1BF3C0
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 14:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6928860A6B
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 14:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bi06bYDmF4KI for <devel@linuxdriverproject.org>;
 Wed,  2 Mar 2022 14:18:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EF4C600B4
 for <devel@linuxdriverproject.org>; Wed,  2 Mar 2022 14:18:50 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id r13so4080028ejd.5
 for <devel@linuxdriverproject.org>; Wed, 02 Mar 2022 06:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Ut6msCn+v0UicFvBsCrhlkSoNby01zMbwSk0/Hdeu5U=;
 b=YEdIjgCx5uClCggqbRFyJfxmPeU6au5e/xQNJ7w2khRYInVIhqUTO6Zi+pqSEUVmmI
 Pcqbjud/AiHyS4WS5UyGyzu6/jStPBnV3H5ju0XprT9VOrY6yHaXFNbIm64DpeGGrtSx
 JLh3zvQKURZ5hJE0H5Eo4c2b0SMIs1WIlMEhvAERCBtBU2qwgE8UFS3mgNuM0kZz7XyZ
 6fej5uaeFVxP6DdMFaqFqftR1eLeWsKEkhA2ZOEInfqjSD8+LGnJ/nGIxUuYTlaExSeb
 cXFrcSNOim3wp1kBKMBICQQNpdvqetEnR3oEaSs+IXsfOGXaaV+lv3O7o+OBNKx9sSHW
 +BoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=Ut6msCn+v0UicFvBsCrhlkSoNby01zMbwSk0/Hdeu5U=;
 b=IP8Iqth/NN+Ez1kBQeKbv4RqQS+qyYlwWfEPCoBrSycxQ366jVOVLvpCRikDIUEyrr
 tym4r6MF3CnVQfmN1HTo0K3ReVuLGOD+xtAl/HUW9/tNf3fDusARQuYhpcVL3MmPOfJJ
 JNvwLScO8kzw6DdHnHtcJ3wnLmXvyn2lIOpShT+eO3vAqL6Iokjb9BjN2Aas36hH/L8T
 oEk6rpFkUMfUhPkmViE7iXyjiSwElEqwrpefKtCXd8zIQscITXwpB7hxnY6YMAy2kuvW
 RqU9N+G+AQC+aC6LMRqz0t/LhscklDshH3a6x0ngOAJ2N2I+mE4WbQmwenLhqqU2Kc1K
 ucCA==
X-Gm-Message-State: AOAM533wEYbc9K8vEuWIMQDopLYfoDk6m0T0cYJaw2CgwpJymhkE7SpL
 lTrL7YonrQEZjZMKEpaRnMkcLUCICtE9lwnDP1Y=
X-Google-Smtp-Source: ABdhPJxTY3UvNnNDA17yrSBb8iRCaZGn40n4c1wE3AA1529qgO1zw+J6256G+Viy1gJz3LCLJivsWcNagjSVXIR5as0=
X-Received: by 2002:a17:906:4c83:b0:6b7:b321:5d54 with SMTP id
 q3-20020a1709064c8300b006b7b3215d54mr22771298eju.676.1646230727840; Wed, 02
 Mar 2022 06:18:47 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:478f:0:0:0:0 with HTTP; Wed, 2 Mar 2022 06:18:46
 -0800 (PST)
From: REV FATHER JOHNBOSCO <revfatherjonhbosco@gmail.com>
Date: Wed, 2 Mar 2022 15:18:46 +0100
Message-ID: <CAJBjPFRHDzdPjetVvEyenc6af216Gqey4rLXerFGDonAXmEmKA@mail.gmail.com>
Subject: re
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
Reply-To: DHL-deliverycompany@europe.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SG9sYSwgcXVlcmlkbzsgRXN0ZSBlcyBlbCBvZiBvZmZpY2UgKElNRikgcXVlIGhlbW9zIGRpc2N1
dGlkbyBjb24gbGEKZW1wcmVzYSBkZSBlbnRyZWdhIERITCBDb3VyaWVyIHNvYnJlIGPDs21vIGVu
dHJlZ2FybGUgZXN0YSB0YXJqZXRhIGRlCmRpbmVybywgZGlqZXJvbiBxdWUgc29sbyBkZWJlIHBh
Z2FyIGxhIHRhcmlmYSBjb2JyYWRhIHBvciB0b2RvcyBsb3MKZG9jdW1lbnRvcyB5IGxhIHRhcmlm
YSBkZSBlbnRyZWdhLCBoYW4gbmVnb2NpYWRvIGNvbiBsb3MgaW50ZXJlc2Fkb3MKYXV0b3JpZGFk
IHkgYWNvcmRhcm9uIGVudHJlZ2FyIFN1IHRhcmpldGEgZGUgZGluZXJvIGEgc3UgZG9taWNpbGlv
CmRlc2lnbmFkby4gc2FjYXLDoSB1biBtw6F4aW1vIGRlICQxNTAsMDAwLjAwIHBvciBkw61hIGhh
c3RhIHF1ZSByZXRpcmUKdG9kbyBzdSBkaW5lcm8gZW4gbGEgdGFyamV0YSBwYXJhIHF1ZSBwdWVk
YSByZXRpcmFyIHRvZG8gc3UgZGluZXJvIGVuCmxhIHRhcmpldGEgYW50ZXMgZGUgcXVlIHZlbnph
OyBwb3IgbG8gdGFudG8sIGNvbXVuw61xdWVzZSBjb24gbGEKZW1wcmVzYSBkZSBlbnRyZWdhIGFo
b3JhIGEgdHJhdsOpcyBkZSBzdSBkaXJlY2Npw7NuIGRlIGNvcnJlbwplbGVjdHLDs25pY28gKERI
TC1kZWxpdmVyeWNvbXBhbnlAZXVyb3BlLmNvbSkuCkZpcm1hci4KUmV2IEZhdHRoZXIgSGVucnkg
Ui4KRGlyZWN0b3IgRGVwYXJ0YW1lbnRvIGRlIFJlbWVzYXMKCkhvbGEsIGNhcmnDsW87Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
