Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 391074B328E
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Feb 2022 03:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6429A60AE4;
	Sat, 12 Feb 2022 02:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUpFreY4JMGQ; Sat, 12 Feb 2022 02:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E4D5608A6;
	Sat, 12 Feb 2022 02:03:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98FA11BF57F
 for <devel@linuxdriverproject.org>; Sat, 12 Feb 2022 02:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9545340888
 for <devel@linuxdriverproject.org>; Sat, 12 Feb 2022 02:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxf-3GbG8V4z for <devel@linuxdriverproject.org>;
 Sat, 12 Feb 2022 02:03:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com
 [IPv6:2607:f8b0:4864:20::c34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BAF640886
 for <devel@driverdev.osuosl.org>; Sat, 12 Feb 2022 02:03:51 +0000 (UTC)
Received: by mail-oo1-xc34.google.com with SMTP id
 v17-20020a4ac911000000b002eac41bb3f4so12394381ooq.10
 for <devel@driverdev.osuosl.org>; Fri, 11 Feb 2022 18:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=szC/KrrMEf4y/uEFswNvpQYZPjhp6Yt2hvFcr3lokN0=;
 b=N3PiJCebI1p7u3mVpqNOFwGhxhWAPN15okBqsC6daw6M8NYuLjnuZ+x3F0+b1YOgS4
 3/e42dNZIVjcc3Bz+k7NROiAWv0hH5cxjJ1fFSjOv09zPI7zUxCr7YVFxdxJh177BZWM
 DMqKTOIxiRleiFHOtn41SMlQ54+MFBSViCMyR8+cc1auV5KuHFxR0q0Mxr0rO/fkouAh
 hpTgnK4Yu2pObNdKtJU/16fQWuWF0DfIKxGKMgSS14EhY6/SNFyeRpHOudXR5hJ9sTMQ
 aJb5mZHlytAlxMj5mh6PS6hI8M4X660LNQvQpSqgRTZEW4Ing9uF2NQQX7ks8LotBaR1
 8CTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=szC/KrrMEf4y/uEFswNvpQYZPjhp6Yt2hvFcr3lokN0=;
 b=vgrDn6GtjJqtrhgz6h07wE6aNCCj1CZRZSEir9t36gMoWzmmv9m22fgJrqxEWvH8E+
 AEH6BwbkDzKlsfYlhnhrcBXZP6GIPuxA8HGt5x1HupiNXlgvwh0m57ov6a+bhUrFXX7f
 IUrHH9eqqW6ankbsXefwM0X6R2MkBNBFaL4+eQmBORyGXYol+UlwU6eQJn1ArprtVo/e
 jy0x++5psHzaWhYvrnIFi5/nuLDBQN+9k6DHf+Oz9InWfh//ExI7RdJyCdlKFumBl4fB
 0L6mFdmPdj3336bagL3MpYajrNw8pFI5XYymoNjoPNCzFUA0gKPGNyspUef6010aNUjO
 2gQQ==
X-Gm-Message-State: AOAM5309ZRT30g4yoLoCxGnOXIOC4Y/5cdJoLTHdwLt5uu1jmQpI5K54
 BUklWTb1lU84i9O84eodBCvtLX218DioU3BTf20=
X-Google-Smtp-Source: ABdhPJzZhT39zSoMNWaRHua+Z0KzFouxsp3kIELawSa3iBaPIp2gUTHgYmQx+a+WNhTO17SFYLK29OxbfmYss9jZg9w=
X-Received: by 2002:a4a:d342:: with SMTP id d2mr1546800oos.45.1644631430412;
 Fri, 11 Feb 2022 18:03:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6850:7f4a:b0:2a5:43a0:378a with HTTP; Fri, 11 Feb 2022
 18:03:48 -0800 (PST)
From: AISHA GADDAFI <mahasaliou112233@gmail.com>
Date: Fri, 11 Feb 2022 18:03:48 -0800
Message-ID: <CAMvEq_3A4AFR7BX9b44kY=bXZgEr=MQNUHKcozDF=JRgwtDi_g@mail.gmail.com>
Subject: Lieber Freund (Assalamu Alaikum),?
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
Reply-To: yishagddafi@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkxpZWJlciBGcmV1bmQgKEFzc2FsYW11IEFsYWlrdW0pLAoKSWNoIGJpbiB2b3IgZWluZXIg
cHJpdmF0ZW4gU3VjaGUgYXVmIElocmVuIEUtTWFpbC1Lb250YWt0IGdlc3Rvw59lbgpJaHJlIEhp
bGZlLiBNZWluIE5hbWUgaXN0IEFpc2hhIEFsLVFhZGRhZmksIGVpbmUgYWxsZWluZXJ6aWVoZW5k
ZQpNdXR0ZXIgdW5kIGVpbmUgV2l0d2UKbWl0IGRyZWkgS2luZGVybi4gSWNoIGJpbiBkaWUgZWlu
emlnZSBsZWlibGljaGUgVG9jaHRlciBkZXMgU3DDpHRsaWJ5c2NoZW4KUHLDpHNpZGVudCAodmVy
c3RvcmJlbmVyIE9iZXJzdCBNdWFtbWFyIEdhZGRhZmkpLgoKSWNoIGhhYmUgSW52ZXN0bWVudGZv
bmRzIGltIFdlcnQgdm9uIHNpZWJlbnVuZHp3YW56aWcgTWlsbGlvbmVuCmbDvG5maHVuZGVydHRh
dXNlbmQKVW5pdGVkIFN0YXRlIERvbGxhciAoJCAyNy41MDAuMDAwLjAwKSB1bmQgaWNoIGJyYXVj
aGUgZWluZQp2ZXJ0cmF1ZW5zd8O8cmRpZ2UgSW52ZXN0aXRpb24KTWFuYWdlciAvIFBhcnRuZXIg
YXVmZ3J1bmQgbWVpbmVzIGFrdHVlbGxlbiBGbMO8Y2h0bGluZ3NzdGF0dXMgYmluIGljaCBqZWRv
Y2gKTcO2Z2xpY2hlcndlaXNlIGludGVyZXNzaWVyZW4gU2llIHNpY2ggZsO8ciBkaWUgVW50ZXJz
dMO8dHp1bmcgdm9uCkludmVzdGl0aW9uc3Byb2pla3RlbiBpbiBJaHJlbSBMYW5kClZvbiBkb3J0
IGF1cyBrw7ZubmVuIHdpciBpbiBuYWhlciBadWt1bmZ0IEdlc2Now6RmdHNiZXppZWh1bmdlbiBh
dWZiYXVlbi4KCkljaCBiaW4gYmVyZWl0LCBtaXQgSWhuZW4gw7xiZXIgZGFzIFZlcmjDpGx0bmlz
IHp3aXNjaGVuIEludmVzdGl0aW9uIHVuZApVbnRlcm5laG1lbnNnZXdpbm4genUgdmVyaGFuZGVs
bgpCYXNpcyBmw7xyIGRpZSB6dWvDvG5mdGlnZSBJbnZlc3RpdGlvbiBHZXdpbm5lIHp1IGVyemll
bGVuLgoKV2VubiBTaWUgYmVyZWl0IHNpbmQsIGRpZXNlcyBQcm9qZWt0IGluIG1laW5lbSBOYW1l
biB6dSBiZWFyYmVpdGVuLAphbnR3b3J0ZW4gU2llIGJpdHRlIGRyaW5nZW5kCkRhbWl0IGljaCBJ
aG5lbiBtZWhyIEluZm9ybWF0aW9uZW4gw7xiZXIgZGllIEludmVzdG1lbnRmb25kcyBnZWJlbiBr
YW5uLgoKbWVpbmUgRS1NYWlsLUFkcmVzc2UgdW50ZW46IGF5aXNoYWdkZGFmaUBtYWlsLnJ1CgpG
cmV1bmRsaWNoZSBHcsO8w59lCkZyYXUgQWlzaGEgQWwtUWFkZGFmaQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
