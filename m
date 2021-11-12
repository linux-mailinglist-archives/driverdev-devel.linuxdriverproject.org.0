Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CBD44E3A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 10:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0F966066B;
	Fri, 12 Nov 2021 09:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGTg_eha8w81; Fri, 12 Nov 2021 09:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CDC8605F5;
	Fri, 12 Nov 2021 09:09:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDEA41BF40D
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 09:09:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C703F605F5
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 09:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9T5osY8TY5R for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 09:09:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFB54605E6
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 09:09:45 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 o15-20020a9d410f000000b0055c942cc7a0so12943229ote.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 01:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/jHoPW+J35FOruzMIs4qGjKfF8kwzwQDK3QucDm+yCU=;
 b=Il9FRN4kYvnm6O0EVb81AnzbA0BU3rBLwn0TtfkahiYPJhDyvZrGb5/eOt9YfT6yF9
 Zr7UOfWJvPek79G5n10GKlMOgI8cWZGNyAzpmnm/pAI8urGl8gmB9JrnRbAjKxXWq+IV
 vCmRi640+E8WF73cxOpVra/vaOyRHGco4Ze2+/VL5eHiZQSktHigOdj8y+mYjW9xhrIL
 +IIBy08kd47kKHAa9pjY7hEMKVG3fl43SlzeKwg79w9up+1jczsHtkWrgv1yAAQjDVcF
 iGD+/ylc4PTUI4f3ZQtpK4uuwYCsmRIwe6cJ0aH21Oaq7otaK4aV3SOgyrH6q5g+K+wT
 zlbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=/jHoPW+J35FOruzMIs4qGjKfF8kwzwQDK3QucDm+yCU=;
 b=mpa0OW+nWQgL7XTcj65N+GiEWEofYg5yP/o7QysPPeSJYQzpyA6KCgEr+oxPk/qBDE
 Ec69bb0hqg0F9tR6Uv92aXp6TmoBdhwoCFFGvP78hwDVVanVkEQRU5oWX1CQvJuiHR/b
 PniTVoGMEAYw98GmdePho/tlHwt71oB01mrc+n7aqm9NYFCV/e4p/e3Le8deIAuVfg/J
 qmvjbFGyB6IJJ1Dxbn857WxoxbvFEFYQfGq7kEuGI9LXUDHQCHeO4yn+CoQ5tN7rDPzY
 fUkjPk1xOiiZQnlLkLJt1J0pQeLVE5EVtADtT+8Ua4GDbyufP2uIxBWEKT9wgJnX9BcE
 goPg==
X-Gm-Message-State: AOAM531iYRIPwSyZnUwmcYEPbSmdsuNlMCl7hpe//mDN03KN1DNy9AQL
 XRVKMAvQAwmmZ7paSt3wbtA5HellkXw+W04p5uA=
X-Google-Smtp-Source: ABdhPJzntVSYGeBUa6kr8cCkL6t4k9suHgJeyKL5aFSz/2mMQ46mSx2TNZvnERpgBzRhW/ldjOiCyo6I9p/2g0wh1sY=
X-Received: by 2002:a05:6830:1358:: with SMTP id
 r24mr11759308otq.8.1636708185053; 
 Fri, 12 Nov 2021 01:09:45 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:9572:0:0:0:0:0 with HTTP; Fri, 12 Nov 2021 01:09:44
 -0800 (PST)
From: WARREB BUFETT <adamububakiri@gmail.com>
Date: Fri, 12 Nov 2021 01:09:44 -0800
Message-ID: <CAPnqfS_dNFyurZfjPzU_-8uj=WhvA6hQxqTdm3t5xQ+mYfytkw@mail.gmail.com>
Subject: SPENDE
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
Reply-To: warrenedwarduffett@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCipIaSwqCgoqTWVpbiBOYW1lIGlzdCBXYXJyZW4gRS4gQnVmZmV0dCwgZWluIGFtZXJpa2Fu
aXNjaGVyIFdpcnRzY2hhZnRzbWFnbmF0LApJbnZlc3RvciB1bmQgUGhpbGFudGhyb3AuIGJpbiBk
ZXIgZXJmb2xncmVpY2hzdGUgSW52ZXN0b3IgZGVyIFdlbHQgdW5kIENFTywKQmVya3NoaXJlIEhh
dGhhd2F5LCBpY2ggZ2xhdWJlIGZlc3QgYW4g4oCeR2ViZW4gd8OkaHJlbmQgZGVzIExlYmVuc+KA
nCBJY2ggaGF0dGUKZWluZSBJZGVlLCBkaWUgc2ljaCBuaWUgaW4gbWVpbmVtIEtvcGYgZ2XDpG5k
ZXJ0IGhhdCA/IGRhc3MgU2llIElociBWZXJtw7ZnZW4KdmVyd2VuZGVuIHNvbGx0ZW4sIHVtIE1l
bnNjaGVuIHp1IGhlbGZlbiwgdW5kIGljaCBoYWJlIGJlc2NobG9zc2VuLAphdWZncnVuZCB2b24g
Q292aWQgZWluZSBNaWxsaW9uIGbDvG5maHVuZGVydHRhdXNlbmQgVVMtRG9sbGFyIGFscyBTcGVu
ZGUgdm9uCnskMS41MDAuMDAwLDAwfSBhbiB6dWbDpGxsaWcgYXVzZ2V3w6RobHRlIFBlcnNvbmVu
IHdlbHR3ZWl0IHp1IGdlYmVuLiBOYWNoCkVyaGFsdCBkaWVzZXIgRS1NYWlsIHNvbGx0ZW4gU2ll
IHNpY2ggYWxzIGdsw7xja2xpY2hlIFBlcnNvbiB6w6RobGVuLiBJaHJlCkUtTWFpbC1BZHJlc3Nl
IHd1cmRlIGJlaSBkZXIgU3VjaGUgbmFjaCBkZW0gWnVmYWxsc3ByaW56aXAgb25saW5lCmF1c2dl
d8OkaGx0LiBCaXR0ZSBtZWxkZW4gU2llIHNpY2ggc28gc2NobmVsbCB3aWUgbcO2Z2xpY2ggYmVp
IG1pciwqCgoqQmVzdWNoZW4gU2llIGRpZXM6IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtp
L1dhcnJlbl9CdWZmZXR0CjxodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9XYXJyZW5fQnVm
ZmV0dD4qCgoqb2RlciBTaWUga8O2bm5lbiBtZWluZW4gTmFtZW4gZ29vZ2VsbiwgdW0gd2VpdGVy
ZSBJbmZvcm1hdGlvbmVuIHp1CmVyaGFsdGVuOiAoV2FycmVuIEJ1ZmZldHQpLioKKlNlbmRlbiBT
aWUgSWhyZSBBbnR3b3J0IGFuIHdhcnJlbmVkd2FyZHVmZmV0dEBhb2wuY29tCjx3YXJyZW5lZHdh
cmR1ZmZldHRAYW9sLmNvbT4sIGRhbWl0IGljaCBJaG5lbiBtZWhyIERldGFpbHMgenUgZGllc2Vy
IFNwZW5kZQpnZWJlbiBrYW5uLioKKkljaCB3ZXJkZSBhdWYgSWhyZSBBbnR3b3J0IHdhcnRlbi4q
CgoqQW50d29ydGVuIFNpZSBtaXIgZsO8ciB3ZWl0ZXJlIEluZm9ybWF0aW9uZW4gYXVmIGRpZXNl
IEUtTWFpbAp3YXJyZW5lZHdhcmR1ZmZldHRAYW9sLmNvbSA8d2FycmVuZWR3YXJkdWZmZXR0QGFv
bC5jb20+KgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
