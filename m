Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0F9537AFE
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 May 2022 15:07:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A571683FE4;
	Mon, 30 May 2022 13:07:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJc-vWq6aI0J; Mon, 30 May 2022 13:07:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 906FC83F9F;
	Mon, 30 May 2022 13:07:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB5301BF357
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 13:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E776F60B14
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 13:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEY8V3yRcaVl for <devel@linuxdriverproject.org>;
 Mon, 30 May 2022 13:07:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A046A60746
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 13:07:48 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 l7-20020a17090aaa8700b001dd1a5b9965so10701310pjq.2
 for <devel@linuxdriverproject.org>; Mon, 30 May 2022 06:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ygHKI52JSckb/5zh/CFFEI3THNyiScvPGKUhS+hnm2c=;
 b=RFbi4xJkLVyvOjCjtAzTAdXcMpz0X4TtKQPfJTgyZ/pQBHRSxfyXrrwqFlktjwQUft
 SrRs9OYk3ib1+rfjYjaCwRiCturqX6BE/EG7PKF610rMOOWjtpuyPX1E7ZNUuCbw37RY
 xTJ3aoms0Sm7316uLvpOJuGFIhkj51MPfJ7HmRG/UhDepBKim7KvYS9ihFxX/VgDrmZ/
 OK5hKtPIFpalccIAQewT2ac2zz47KTkegP7gkOzdLa4qZRI3fzZ0Nt9zEgPOLQ++w8R5
 6pnKnTwJzkb31Ua1DEE9+mhpXo14oEfa0LQKpeiu8jf2gjJGkGGP2PzULse5FbXsO0v8
 IxzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=ygHKI52JSckb/5zh/CFFEI3THNyiScvPGKUhS+hnm2c=;
 b=YBfveLcgH8pBwRc3dNqa5b+Q4rmbHnH2XPMOCo0prRHx/xB9/+5V7PR8s+Qxo3UkfP
 pvrtMktgt4d2yZW8WBbm/Jl7ho+hSgCINQz5OgEJ8WbPxHTOAnfxqIz55rU1H86fZemL
 KW6SpFisUegcjKlfLtl4B/3KS4rZGQvegdeddpmn4LwYpPtk+NxZDsnuMMx3lxOY2O7+
 6B+Kv7pHUsBbdSlJfrpIyhz/mxsK84cjqwhSpH1inJJeoJPYsY6Q/AAykJiCn92VxmtL
 xRmJjdQRK/4/X1kSttRVPAikIixG8Js47vyOILuvmW8e1nhcL3N4PHahGqku6519GIp4
 b+dw==
X-Gm-Message-State: AOAM530tFH+6gcG2iGQFKIk3GXuqevjyoV7tqpwOhmQBWh3O1ojER4X5
 PDKa/qOJRg4c1iR42wCrBrqf4Vv1YaDwb34ptoM=
X-Google-Smtp-Source: ABdhPJyYjzIJz+pHuqoiIqSFHIjCh8u5YZKumye18oR/RBMIgFCYqbSdTxuqz25Pv5j3dp3RvYltAp5HkUa8RYJU978=
X-Received: by 2002:a17:902:e5c4:b0:163:4c5e:5b39 with SMTP id
 u4-20020a170902e5c400b001634c5e5b39mr28975312plf.69.1653916068020; Mon, 30
 May 2022 06:07:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:4415:b0:82:5fc2:8c27 with HTTP; Mon, 30 May 2022
 06:07:47 -0700 (PDT)
From: Calonzo Amos <frankcecil7@gmail.com>
Date: Mon, 30 May 2022 14:07:47 +0100
Message-ID: <CAC2idSK01jW3Lm+ECK7fg4=ATfAuK3_ZwyAwV4zKm93HaRyf-w@mail.gmail.com>
Subject: Attn: Dear Sir/Madam
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
Reply-To: amoscalonzo@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QXR0bjrCoERlYXLCoFNpclxNYWRhbQ0KDQpJwqBhbcKgY29udGFjdGluZ8KgeW91wqBzZWVraW5n
wqB5b3VywqBjb29wZXJhdGlvbsKgZm9ywqB0aGXCoHRyYW5zZmVywqBvZsKgYQ0KY29udHJhY3TC
oEJhbGFuY2XCoFBheW1lbnTCoG9mwqBhwqBjbGllbnTCoG9mwqBtaW5lLg0KS2luZGx5wqBnZXTC
oGJhY2vCoHRvwqBtZcKgZm9ywqBtb3JlwqBkZXRhaWxzLg0KDQpCZXN0wqBSZWdhcmRzDQoNCkNh
bG9uem/CoEFtb3MNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
