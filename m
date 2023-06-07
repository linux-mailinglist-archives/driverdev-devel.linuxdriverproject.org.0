Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 766FF72694D
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Jun 2023 20:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B416160D72;
	Wed,  7 Jun 2023 18:56:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B416160D72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8BEVGKxHP_od; Wed,  7 Jun 2023 18:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A779360BBE;
	Wed,  7 Jun 2023 18:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A779360BBE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3F9C1BF3D2
 for <devel@linuxdriverproject.org>; Wed,  7 Jun 2023 18:56:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A82382D2F
 for <devel@linuxdriverproject.org>; Wed,  7 Jun 2023 18:56:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A82382D2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPXcSztmmWGT for <devel@linuxdriverproject.org>;
 Wed,  7 Jun 2023 18:56:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E71BF82BF4
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E71BF82BF4
 for <devel@driverdev.osuosl.org>; Wed,  7 Jun 2023 18:56:55 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id
 af79cd13be357-75da00a1eddso472816785a.3
 for <devel@driverdev.osuosl.org>; Wed, 07 Jun 2023 11:56:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686164214; x=1688756214;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=utxJu1j2ANZS5JbI6XwpefDqF+QZE/xBYgCXi7epqPo=;
 b=Q1qpW/ao+huZh/nvJRRLjKtVkIVZ88otbdBtzfEWXwRiHsYCaau94vYNLSf4VE4LZ+
 FQTdvB55kdaQRteUpTOrqUgjqsSufeAqWVPAl/EfIrYVJiqVi0WlqG8mVzvJuhHtQNff
 JHciknE6YlLXwiKXG42+89yCxCc91VhZpanAQqr66wkuoZKe51SfqzAXiHaLrBMiL0hf
 eLQCCyUKKIWN1/Zhd9gkl6DeI6baBmfUUgyGbtJk+o5lUNCejayQ9gy4cFMZSL8vPHSY
 DUCvh5Vf857+TGD/ROjHsHSS00MNE44jtKfEr2/vW1cCYujmS33m775pIaaVUDNx2BfE
 /ENg==
X-Gm-Message-State: AC+VfDw5xl/znE18hHhxnZ06CblsosJiFbSPMOPe/cIf5soYCaCij0J7
 Yj7ufzgI0ozn9PdXduNSS6ylL4IFiCBtmdnKtmRE8utHa13f4A==
X-Google-Smtp-Source: ACHHUZ4vFA4PM8Z5uYoyxJWZQMq5gNAAxsQCLRdQpDvYgQx6FNAUdpsCNa0zsZl20tnWSszurfa0YtcKqvYBepYyvUI=
X-Received: by 2002:a05:620a:890a:b0:75e:d11d:51ab with SMTP id
 ql10-20020a05620a890a00b0075ed11d51abmr3452025qkn.9.1686164214497; Wed, 07
 Jun 2023 11:56:54 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Susana_Rodr=C3=ADguez_Vidarte?=
 <susanarodriguezvidarte@gmail.com>
Date: Wed, 7 Jun 2023 18:56:38 +0000
Message-ID: <CAF1o4SymqMENAdvj2hgHPbpYLrBeMKtRVWZYWS8LHuTO_e3r6A@mail.gmail.com>
Subject: tr
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1686164214; x=1688756214;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=utxJu1j2ANZS5JbI6XwpefDqF+QZE/xBYgCXi7epqPo=;
 b=e4GLBpTwHuNNyPUWX9LPBQd5RWj7KUhswBJiSAXfeTP/ybPK+CX/wMABs2PtmUcLUs
 VBAUYJrkkmuSr9+Oy3KvKysb6gJhCyT/5DNUiROMPOyQKNIW0qGzsFT9KgrsFZDSN73s
 a9l6ZozK205UpCDXeDLzJC/0Wkejq9LadJxwv4DEXZ9YA1zNkcpHZRN0g15lycfrLSH7
 9adg92N0dAASYNcKMmbOuxx+kPzKwXk0ogzcm2LrQd9a8SEDcq6WOPPsLmGchODTidkK
 HaPFf6Jxf3sJv8dDeGcn/MJMdj24pLp/vzji58USSEefcM9hh68B+lpp9OHwkIECNNte
 3lqA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=e4GLBpTw
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
Reply-To: susanarodriguezvidarte@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCnB1aXMtamUgdm91cyBmYWlyZSBjb25maWFuY2UgZGFucyBjZXR0ZSBiZWxsZSBvcHBvcnR1
bml0w6kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
