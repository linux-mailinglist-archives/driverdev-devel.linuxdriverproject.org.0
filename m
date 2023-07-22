Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE3575DE03
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jul 2023 20:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA7FE4020B;
	Sat, 22 Jul 2023 18:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA7FE4020B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTxGrIM2s1tm; Sat, 22 Jul 2023 18:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96214400FF;
	Sat, 22 Jul 2023 18:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96214400FF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC1AB1BF5A1
 for <devel@linuxdriverproject.org>; Sat, 22 Jul 2023 18:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0FD3404A3
 for <devel@linuxdriverproject.org>; Sat, 22 Jul 2023 18:08:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0FD3404A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzyTBlO6w4F6 for <devel@linuxdriverproject.org>;
 Sat, 22 Jul 2023 18:08:11 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CA404040B
 for <devel@driverdev.osuosl.org>; Sat, 22 Jul 2023 18:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CA404040B
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-992b27e1c55so466091066b.2
 for <devel@driverdev.osuosl.org>; Sat, 22 Jul 2023 11:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690049289; x=1690654089;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XwQ9KTk0AvNg4YEGpLO6Mzd1tQ0NGTk2GH4qBYSzWYc=;
 b=FG4vKOw3RU9R7yHsWaHRfM8meYFuGvY5tX9h+ja61/l8uc9eKlfrkTA3/jhd0NGAN+
 32+qPxRDJMkkeD4p/oBFREanzHFitf7n//SPDgoSlzy/T7PieOoOsW5SmofMytSRUbLj
 u3xlSsU6Eqs/6OK03M4k9IXy2+5zkFPa1+JSsboKzuuX/buTTWDEicU30iSNcOPvXBgK
 O8Qpxwt1gk1CuY9e+mX693lWwWenzVIabS47CJtq4wwVe9Px/aP9b48KF+WYJLy9BL1F
 ppjR1+kXmMhjCYhe6d7Bm4j9INlnA5II1W+sVHXZbCr4ua2Lw+RT7tsXl/YAqxQndRIJ
 C7PQ==
X-Gm-Message-State: ABy/qLYS8NPlyaK/R9W1jUTgw/T6Rln3sFA+GsOxEHjeVFcbrnysalFg
 t3j3e6J+bXctPHlCaQJ7SBaWzVve1G6ufa4JbLg=
X-Google-Smtp-Source: APBJJlE7rlGInlok1k+1KeCbD24At6gAE+ANQdGxY3y76tiQFbUBao3muPGl3DlQ5h1nlt56J4YfPhfYld5FacMUAok=
X-Received: by 2002:a17:907:78d5:b0:98d:e605:2bce with SMTP id
 kv21-20020a17090778d500b0098de6052bcemr4931479ejc.46.1690049289026; Sat, 22
 Jul 2023 11:08:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:907:2cc3:b0:986:545c:2dc8 with HTTP; Sat, 22 Jul 2023
 11:08:08 -0700 (PDT)
From: Veronica Lee <msv.willy00@gmail.com>
Date: Sat, 22 Jul 2023 20:08:08 +0200
Message-ID: <CAL7S737DtLLCzHpLGTQhY5T=uYoMQ+5JmKaZZVw9K6JV6XmY3A@mail.gmail.com>
Subject: re
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690049289; x=1690654089;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XwQ9KTk0AvNg4YEGpLO6Mzd1tQ0NGTk2GH4qBYSzWYc=;
 b=CJDyVkqHNb3HtbkQ5Lf/+57dSKj94z9wFVHEQ4J81+7UiUAxlu47rNC38ta/OcaYnk
 2Xdv5xIuDOVyvBhCEMgDr8UAzKrvUJCSBv6cpUrgpea74RGmQ0MnukXuitEodR9yjy2w
 /dnJq8kgu6iCS1lNGjhG5AqMEbRb2Nc0QRe7KE3YE9Ahunhct3pn8P/WgWe1KEARtCo+
 y6kwD2eTUMDA9eG2rLFFLwe9SPn/bDHpKcwrZhTpx9c91RteTq4Dio+lbrcBscjwFq3/
 4gVQdQuBkSb+2Tk0GndEYfPwDyyh1kHsLsvjqaKb5DPRAun/gjgE98IB3er/pJMGE4ii
 TeGA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=CJDyVkqH
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
Reply-To: mrsvl06@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

16nXnNeV150g15nXp9eZ16jXmSwg15DXoNeZINek15XXoNeUINeQ15zXmdeaINec157XmdeT16Ig
16nXkdeo16bXldeg15kg15zXl9ec15XXpyDXkNeZ16rXmiDXkNecINeq15TXodehINec15TXqdeZ
15Eg15zXpNeo15jXmdedDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
