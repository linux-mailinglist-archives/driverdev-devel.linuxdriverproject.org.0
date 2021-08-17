Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C37F3EE20B
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Aug 2021 03:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3135D403A6;
	Tue, 17 Aug 2021 01:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12vp62LGJl35; Tue, 17 Aug 2021 01:23:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FF4140012;
	Tue, 17 Aug 2021 01:23:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B93021BF386
 for <devel@linuxdriverproject.org>; Tue, 17 Aug 2021 01:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0DED40012
 for <devel@linuxdriverproject.org>; Tue, 17 Aug 2021 01:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i_4mz0Qtm9f4 for <devel@linuxdriverproject.org>;
 Tue, 17 Aug 2021 01:23:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEEB2402A0
 for <devel@driverdev.osuosl.org>; Tue, 17 Aug 2021 01:23:35 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id m193so36416560ybf.9
 for <devel@driverdev.osuosl.org>; Mon, 16 Aug 2021 18:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=iELgCLbQqv5tFsHgMTPz+ef0nc8wwD8GBHZ8BVFl4tE=;
 b=iuxuzFUsoTIr5/OcKSGaooDs3OP+ykkdZOV/y+wCdpUK+6L/qlAeBb6Gr2mG5YOfXT
 P8ZKkqeZ94wfl+DTxU/lafWJX1cBFDdWO4f2Nodz8LAYAcTtVy7YzezJzS6GhM551uSh
 g/6guSBc1RM+FJdPnB2Lsr69872CG187wl6DpTuZI312/CZmzU3ifB8tzq291nhLzewq
 Z1OhpClkyQOKodiv+Cxii/Y426F9LZMR19mzDEvPLAEFVJ79qW5ZnZvD7HU1ssYVH3GL
 YtVa8x86x8nlSyoVW0Ri/cB4e4XpI2JzzcSku9y6Opiq26wiMcMaCe0gTh+88I3Dgxik
 ugag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=iELgCLbQqv5tFsHgMTPz+ef0nc8wwD8GBHZ8BVFl4tE=;
 b=LbzKHVM0rRbihvIJCG7AZzsC5k/HiuK5Pm4XQzwW5Bt2RzKZS2k6JaHKqfp+eBXh9M
 PB2RsXCuXZeoaPv1gN4IH310MyDAiis7u78a5nJGTYgLnUbTHxpzPXsU+fUpJsyUKqRc
 Vnx35rJ++Jeu/77oyZfA0tSM9n9znEPlZlfpPr1zsCzkjkXII7482lDlXUpsHpuPugHu
 MSu9L8WcyAVPxZ6MVfXbScXpyPSpwP10itoohTMok70SUt4MFjOaLG/GEwlvhDpKBSwA
 ZJpBWUn0TCRZ4u7uBLlVhEfbh9DNk9bnIyQW+6RPRhlAI+nhHnwB7RbXB/B45wreoHCh
 o/8w==
X-Gm-Message-State: AOAM532PRPTVkC2VvBgFNqqspsVV6H/8NrZVbnNGjB9x0V7Owk2ceWe9
 QU2cdi28cEuFnYjAU4RRrxKxl9kAE8pSXnCwuaU=
X-Google-Smtp-Source: ABdhPJy8Vyqg9rBy/zyC2an7EZBvy2MEn1BwwFZ/YNRE5k/rI3CxzlTub4OcKPvK3COzkx1aRk6bXDf2x4Q+T+F+oDo=
X-Received: by 2002:a25:5051:: with SMTP id e78mr1216693ybb.296.1629163414263; 
 Mon, 16 Aug 2021 18:23:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:5e1b:0:0:0:0 with HTTP; Mon, 16 Aug 2021 18:23:33
 -0700 (PDT)
From: "Charles w.jackson" <powellilluminati666@gmail.com>
Date: Mon, 16 Aug 2021 18:23:33 -0700
Message-ID: <CAC=uWm6eupWUapCWpC8PugU8J9eHNeDsRdcLpXz4veNb1W_Vng@mail.gmail.com>
Subject: 
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
Reply-To: charleswjacksonjr94@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvIGxpZWJlciBCZWfDvG5zdGlndGVyCgpFaW5lIE1pbGxpb24gendlaWh1bmRlcnR0
YXVzZW5kIERvbGxhciAoMS4yMDAuMDAwLjAwMCwwMCBVU0QpIHd1cmRlbiBnZXNwZW5kZXQKQ2hh
cmxlcy53LmphY2tzb24gbWl0IGVpbmVtIFBvd2VyIEJhbGwtSmFja3BvdCB2b24gMzQ0LDYgTWls
bGlvbmVuClVTLURvbGxhciwgZGVuIGVyCmluIGRlbiBVU0EgZ2V3b25uZW4uIEdlaGVuIFNpZSB6
dXLDvGNrLCB1bSB3ZWl0ZXJlIEluZm9ybWF0aW9uZW4genUKQW5zcHLDvGNoZW4genUgZXJoYWx0
ZW46CmNoYXJsZXN3amFja3NvbmpyOTRAb3V0bG9vay5jb20uCgogICAgRXMgd3VyZGUgZmVzdGdl
c3RlbGx0LCBkYXNzLCB3ZW5uIFNpZSBkaWVzZSBFLU1haWwgaW4gSWhyZW0gU3BhbQpmaW5kZW4s
IGVzIGJpdHRlIHdpc3NlbgpFcyB3aXJkIGR1cmNoIGVpbiBzY2h3YWNoZXMgTmV0endlcmsgdmVy
dXJzYWNodCwgZGFzIGF1ZiBJaHJlIEFudHdvcnQgd2FydGV0CgpIZXJyIENoYXJsZXMudy5qYWNr
c29uLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
