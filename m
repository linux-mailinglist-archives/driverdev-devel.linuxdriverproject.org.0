Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7141C54DE97
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jun 2022 12:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88D9584044;
	Thu, 16 Jun 2022 10:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOiTH4nHmciz; Thu, 16 Jun 2022 10:04:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60A868402F;
	Thu, 16 Jun 2022 10:04:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF1081C1148
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD7B840C86
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEOap1BXYyVC for <devel@linuxdriverproject.org>;
 Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 606984052D
 for <devel@driverdev.osuosl.org>; Thu, 16 Jun 2022 10:04:19 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-31772f8495fso8205987b3.4
 for <devel@driverdev.osuosl.org>; Thu, 16 Jun 2022 03:04:19 -0700 (PDT)
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
 b=P/+uAb0r7+KEBn+Tyvw3Q7bpePycd2kI+eOP070kVumhlJrmZHX39lGwPXff9HhDQT
 v4E6ryGpFeoIlEjIhB4diBGbNKzyRYr9l+VcnyrXFvoFW/q6wg3kjycMbgE7LTko8tap
 KPSmQiPm2KuYSmRzcXunRfcatqsE7KWpQO4SLx51BKAJoSgJC8QuXzUVz4pngpt5B5ew
 IuPuN/HDEIWFeLqNPk89fd2PsNmfuCgHG9HiOZD2lwU6JuyeQVRGdrp0gmGw4WBGPyWI
 LC/trbhXHr/3ef4sH27k9iWazri3TALWDHgjYWkoOz7FPwnp3QDBsIArblODwjusz1DQ
 FpaQ==
X-Gm-Message-State: AJIora/hPvu9y9YRqWkAKdVlHB7GvoVHHMFU2b2nEdULESwznMrA6FVb
 Iga9wS8TbHAlfxr1/cRQwm/D/9tUikqFAMp4WbM=
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
