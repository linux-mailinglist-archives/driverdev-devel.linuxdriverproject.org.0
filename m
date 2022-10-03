Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4B5F380D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Oct 2022 23:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64C4882F77;
	Mon,  3 Oct 2022 21:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64C4882F77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXv4L-a2PDVL; Mon,  3 Oct 2022 21:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B9B2829B6;
	Mon,  3 Oct 2022 21:47:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B9B2829B6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0EF1BF2B1
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 21:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36689408C9
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 21:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36689408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QtBca1bb_X1c for <devel@linuxdriverproject.org>;
 Mon,  3 Oct 2022 21:47:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74E66408AF
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74E66408AF
 for <devel@linuxdriverproject.org>; Mon,  3 Oct 2022 21:47:12 +0000 (UTC)
Received: by mail-oo1-xc43.google.com with SMTP id
 t4-20020a4aa3c4000000b00475624f2369so7640350ool.3
 for <devel@linuxdriverproject.org>; Mon, 03 Oct 2022 14:47:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=Sp3F+bXtT3Lh7wJKg0GJn9nCFsUW1BjnZ7CSXXGgnrOiEWJBzLX5D38NHjolbQxtyq
 /CdL+yn3XmfnSJILpMsLVctlMo5sxrViG+bxW3s7sG+wyktae+rtisluBEFjiXIL1Whh
 MusFKsUickXZdwByatIhdTeWko1slaJufRpVAWD7DzMrbMek7FGKv7sfydEi6cBwyG7/
 im1OXhgIcTgEaSB7iWahseT7RUA8vvVjlKcNFPnRaVqXaRPO79X42xiYGoedrUieNx7p
 HSBLXFGfUrJSWg+Wzz20b76Eu5zMFhxXPHrHneKBlI/+D45AlWgCm5whq4KgXJDjzVu7
 JWvQ==
X-Gm-Message-State: ACrzQf1LXuk87clJX2bd58nZ72tUDsHo2ICNpkQAQe6jzCdPutOkXCMG
 QipqbiPgfVW5ARDo71axk8vEpikuoBiz4zbLhXw=
X-Google-Smtp-Source: AMsMyM5EZXzy+oY3kg8M325Il6Nve0vdEHbsz3gb1fxUCkhGRzCg20duKSgrMAu6cqN47N1i0f/xZXjLQP+xII0bR2w=
X-Received: by 2002:a9d:7a8e:0:b0:655:e0a9:b3c6 with SMTP id
 l14-20020a9d7a8e000000b00655e0a9b3c6mr9222605otn.367.1664833631428; Mon, 03
 Oct 2022 14:47:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:c17:b0:c9:71d3:bbb6 with HTTP; Mon, 3 Oct 2022
 14:47:11 -0700 (PDT)
From: "Charles W. Jackson" <jamescarey67654@gmail.com>
Date: Mon, 3 Oct 2022 23:47:11 +0200
Message-ID: <CAP6aGspocrgkdhq9Rg88oyFVm30OeS+ex=4CH9H2UQGJDB5-1Q@mail.gmail.com>
Subject: Hallo, ich bin Karl W.
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=2OQWN8hj1a3rNmFV+plBxGz9ZHcPCNo47Xuw81WwseY=;
 b=AjZ5oKyLFKf+sfUw1wbVjpg0CBHrzKohzP0wEZbSTBHqNrEdnnXtY5FLU5YuTsSGlE
 97M5Oz0bzRb31fSWLB4jXkWHvz8CaBXaDC73D8Fk7BAhByDlGsKxNtsQSvYQ9hPabbT5
 jcakuRTuXAqxHqZ5yRBZpTlfJlZ687mgyqXVu7wC5NSOy7rWnJgzCZDMfC/ZrCxZlSOe
 PuARa6OHdx2pQMO4eUM6mDbeA4o9OWMqKtr0gPgNrl6GeaXozRL0tO8Nvg7ZGPOe+p2l
 sQYso0qyZCh9HL4Nzdukc8kapodJqTIy/fzcgnFwASrxdNJ7/xY04GlDtd/l0UuIUMSI
 JtfA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AjZ5oKyL
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
Reply-To: c.wjacksonjr@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvLCBpY2ggYmluIENoYXJsZXMgVy4gSmFja3NvbiBKci4sIFNpZSBoYWJlbiBlaW5l
IFNwZW5kZSBpbiBIw7ZoZQp2b24gMS45MDAuMDAwIFVTRC4gSWNoIGhhYmUgYW0gNC4gSnVuaSAy
MDE5IGRpZQozNDQtTWlsbGlvbmVuLURvbGxhci1Qb3dlcmJhbGwtTG90dGVyaWUgZ2V3b25uZW4g
dW5kIG1pY2ggZW50c2NoaWVkZW4sCmVpbmVuIFRlaWwgZGF2b24gYW4gZsO8bmYgZ2zDvGNrbGlj
aGUgTWVuc2NoZW4gdW5kCldvaGx0w6R0aWdrZWl0c29yZ2FuaXNhdGlvbmVuIHp1IHNwZW5kZW4u
IElocmUgRS1NYWlsIGdpbmcgdW50ZXIgZGVuCmdsw7xja2xpY2hlbiBGw7xuZiBhbHMgU2llZ2Vy
IGhlcnZvci4gS29udGFrdGllcmVuIFNpZSBtaWNoIGRyaW5nZW5kIGbDvHIKZWluZSBSZWtsYW1h
dGlvbi4gSGllciBpc3QgZGFzIFlvdVR1YmUtVmlkZW8KaHR0cHM6Ly93d3cueW91dHViZS5jb20v
d2F0Y2g/dj0wTVVSOFFFSU1RSQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
