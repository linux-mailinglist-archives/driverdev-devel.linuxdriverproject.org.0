Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA3F3ADFF0
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Jun 2021 21:31:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 095E740207;
	Sun, 20 Jun 2021 19:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFFYNbSrWhnK; Sun, 20 Jun 2021 19:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 807024010B;
	Sun, 20 Jun 2021 19:31:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8699C1BF34C
 for <devel@linuxdriverproject.org>; Sun, 20 Jun 2021 19:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8286960780
 for <devel@linuxdriverproject.org>; Sun, 20 Jun 2021 19:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_YcxBybohDr for <devel@linuxdriverproject.org>;
 Sun, 20 Jun 2021 19:31:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10F356063D
 for <devel@driverdev.osuosl.org>; Sun, 20 Jun 2021 19:31:15 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id r5so26461223lfr.5
 for <devel@driverdev.osuosl.org>; Sun, 20 Jun 2021 12:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=a2zlJLb2cHVJ/vhYiwd0h6Ss03bH4wa1SiOeNNr1qqA=;
 b=sGNxSEzTe3lM18ghhBrYte1cyID3zgB/+zcBJ1qkOjj6nENXnw6gczAwH9pGc27/IP
 AYmB9Vfsm7CU4mFnkv3Pc0Mhk5fhJ+7y21dSGdYCrU16IkKdItmkVFZuaqIyGZGVK8Ip
 cSfiwscB18hUwstZEHQ/uOyfNKzCjTDh/9pYwz0W/4MCkz4GT8Vo+plZzTD9RrFx4qI1
 EJ0Nc82GBzCc7mb3VEaLFAigTgpPYj10mphmlS8yVMLKAhOhByUFCnPybO8XDdnAtIxc
 cMIFll5v6r8SM8KesUBMrzEzcOV7icIdhWuOke0YPVG7IYNf+Frc8fNuQpUWUS2kUWzD
 BCaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=a2zlJLb2cHVJ/vhYiwd0h6Ss03bH4wa1SiOeNNr1qqA=;
 b=fxDraw9RUy/RwYOMWa2HFkh6lgbf8HlOkV0Ze1lqDKsMF3jWjpZDBKqa7tGK8jq9bb
 uS03jo2xYjKGbPvuIvmZSkmINSerB9t8BzUdZr9M1I/ybQ38phzF/tzMCldgytxjUHLI
 cAM9+7t9VM5RAPygnXer8SN9MmJJPx74ZuLJrLCztS9yb44qPeXU1V8n0wkL1buO3s5M
 1SsRH3e/GJBAXHrkpCnC1gX/2Ytj4x6X6UlXbeok8YLfLz3ftMCpTFskcRAl3Y1ofcZK
 qthIA+yCpyr7wsJ/TCnTk8Ms4YMgzG6PyJ+0OtptXkHmgGuq3P9NEUJisc/fGxVKJ0/a
 mIzw==
X-Gm-Message-State: AOAM5317+YunDl2zh96aoeDfIxLGLeGP1iqtZErQtTuwJWv+/JVTnJq5
 KJco5DW1XgoTBhuHsoq2m+JctZf+sORmYeLZKP0=
X-Google-Smtp-Source: ABdhPJydiXAjiWRRfRKkE6cjZ22caaoTAUIaiMw8gatLOa/mlsGUwqR9psDlbY3dZ0D9qCd+QTz7eYk5yP4HuE0WRP4=
X-Received: by 2002:a05:6512:30b:: with SMTP id
 t11mr11942418lfp.661.1624217472769; 
 Sun, 20 Jun 2021 12:31:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:da47:0:b029:fa:6d7d:24c with HTTP; Sun, 20 Jun 2021
 12:31:12 -0700 (PDT)
From: Gnb Investors Bank <sandraquntoo@gmail.com>
Date: Sun, 20 Jun 2021 22:31:12 +0300
Message-ID: <CAPu=tC6LghNW-EG0_b_zTZNRwF=O9d28K9+F0+-DCZ5EqNPj8A@mail.gmail.com>
Subject: Brauchen Sie einen Kredit?
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
Reply-To: contactcenter@gnbinvestorsb.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkJyYXVjaGVuIFNpZSBlaW5lbiBLcmVkaXQ/IFVuc2VyZSBCYW5rIHZlcmdpYnQgS3JlZGl0
ZSB6dSBlaW5lbSBaaW5zc2F0eiB2b24gMiUKCk1lbGRlbiBTaWUgc2ljaCBmw7xyIHdlaXRlcmUg
SW5mb3JtYXRpb25lbiBiZWkgdW5zLgoKRS1NYWlsOiBjb250YWN0Y2VudGVyQGduYmludmVzdG9y
c2IuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
