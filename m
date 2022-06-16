Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F65B54DE96
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jun 2022 12:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFB1B41A22;
	Thu, 16 Jun 2022 10:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqahzDI74zLh; Thu, 16 Jun 2022 10:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4113541A24;
	Thu, 16 Jun 2022 10:04:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD47B1BF47A
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9F5D60B59
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6AsEUmikdy8 for <devel@linuxdriverproject.org>;
 Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com
 [IPv6:2607:f8b0:4864:20::112a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F72A60776
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
Received: by mail-yw1-x112a.google.com with SMTP id
 00721157ae682-313a8a8b95aso9099017b3.5
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 03:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lLG88JCPgF7Yhflf4FNi4GQedsSNMbwmPtgneUr9Mu0=;
 b=PdcTMD+WHdt8CvSVWT35Lk3yAn+V3hrbCh6acB5z7fv9Fj6kzTi9Y3NQimIjC3Fv99
 og10ZtxfcTXUiocvADuvb3vmOB5bZrM/nKHhQpMTBVzmQ6StWATZer6EH34kIFBCE+IX
 S4xxHXyCYQEZMf2nffT5iY7XbwODkeBXNrufu6mAZypggwg6koVciPDbjZq3u1EKeuNh
 BLaCNzfUT3rv0m7kmphYyp2wi1FPTrP/rtuQaC8UQ4R9feOfIt/gIJACOJ8N1zWK2e+8
 EuO+xsVze7nbq9XLrrxrUOZisHNILPrWhHTeNrV/l16OoAWEyL/1dkxgTugWDkx108A9
 jwhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=lLG88JCPgF7Yhflf4FNi4GQedsSNMbwmPtgneUr9Mu0=;
 b=u6Vd++KBhegUslnuUlnhgIcNT4zAk4erXP04JcX9XH79GurHsBiYDnBj5SxrS1K2mz
 3dJ1iPDkbafbAxwnl99Kz0Rhz6wpOvli2/77d+CNPrioklS9aTytsWBjuM5hNYV8UB4n
 9OSaikxrE4PknBiWXqSB0iUsZ97Nyki932BhUA8oFiGUnRHrCILvHNTEkxwd72Zi0pHZ
 aZYsEx/1VLE3Tbf96JLrSyjxAbzKDmQ4xmm4dhIvIVWZFuFKkcXFmcQ67C/uLDXjjxDY
 vsoNvwVQE0xUr8yB8uWbBCPxwxXLAqkuqLTe4NCtIuEpEgphUU/i8/WzyqiFDS8DflKb
 Mz6w==
X-Gm-Message-State: AJIora8Eetj2+ll/cLpuvpj6S3Y54od/EyK68gboDYNYc0tdvV9u42MW
 zRhrpPKTPburThKWPut77kHLm6zkrVu4HUnJAkc=
X-Google-Smtp-Source: AGRyM1uuiQbj+6Ki2ExVwizk5MidcYho5N2WeOe4cIvSK3IF9IWX8czuIYWjJA0e5gY4Ob+nfTVtBBkUvkIWbhnYw5Y=
X-Received: by 2002:a0d:fa85:0:b0:314:67dd:2566 with SMTP id
 k127-20020a0dfa85000000b0031467dd2566mr4762598ywf.66.1655373858340; Thu, 16
 Jun 2022 03:04:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7110:808e:b0:184:acf6:584a with HTTP; Thu, 16 Jun 2022
 03:04:18 -0700 (PDT)
From: MR ANTHONY EDWARD <fizzypeace01@gmail.com>
Date: Thu, 16 Jun 2022 11:04:18 +0100
Message-ID: <CALtVAbcpQ3iuTN3k_3pwpxPkCHKSH94Uj0X_JOaeWD=96fncKA@mail.gmail.com>
Subject: DARLEHENSANGEBOT
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
Reply-To: clmloans9@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkJlbsO2dGlnZW4gU2llIGVpbiBHZXNjaMOkZnRzZGFybGVoZW4gb2RlciBlaW4gRGFybGVo
ZW4gamVnbGljaGVyIEFydD8KV2VubiBqYSwga29udGFrdGllcmVuIFNpZSB1bnMKCipWb2xsc3TD
pG5kaWdlciBOYW1lOgoqIEJlbsO2dGlndGUgTWVuZ2U6CipMZWloZGF1ZXI6CipNb2JpbHRlbGVm
b246CipMYW5kOgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
