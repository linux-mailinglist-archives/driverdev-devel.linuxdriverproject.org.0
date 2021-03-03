Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6245432B6CD
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 11:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86E25840FE;
	Wed,  3 Mar 2021 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQGQOpRV5-az; Wed,  3 Mar 2021 10:45:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0792840CB;
	Wed,  3 Mar 2021 10:45:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 242871BF4E3
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 10:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21075400C5
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 10:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kream.io
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iYQSppTfbi8q for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 10:45:35 +0000 (UTC)
X-Greylist: delayed 01:35:33 by SQLgrey-1.8.0
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49D7D400C2
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 10:45:35 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id q203so2415487oih.5
 for <devel@driverdev.osuosl.org>; Wed, 03 Mar 2021 02:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kream.io; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe9w3QS36Ovc58wp7438kelCJMfAp8cNhK0Yv3mwIVY=;
 b=F3FQNUNcOUxg5ad0KzFEJmA/2/UYgoAw6A9T8uMyKCeRlStDT9Ra1kUF+cz1gHQwst
 xjtI13AJWkhfzz9CgWad+Kq+6yc9Pk1Cl6FyrPSEJjCyc7lowJqfjeRXvNHvcQCWLZHz
 Wn0f7GYYRrS0W60vy0KcB32IViu2SdNjM5jznnLwnDEX09AFOx3usSa059FtDPdLguxf
 UBIMImoUhGzWA51z9VDDpbiOfMmPZofE54LOeXodjYzENJmm70RU/KUN36NbM9cddSXH
 j2kR9YokGch32aXl9l6iWAqU97rdZd06NQenivRJf51TMnx4zl+BIlPJpIxDqVndJgUG
 qIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xe9w3QS36Ovc58wp7438kelCJMfAp8cNhK0Yv3mwIVY=;
 b=Fjt+RlwI3gpVveAnberz4Xh99uMqo0r8tsAP8BoUcMsEiby1G7YcsAaJ5TOUy6o2uW
 WclOMKr9Av7wyP3BXSsH7T4mrg+JJtEu0g2BRDlfk2mZf4e+Q0M18w13+YJP3gTICzx8
 NrNi7Dfb6fgHuxxc/otDh8c4DUOKOS16Ghg16DH6Uu74W7oI43lB8xcA0JPAZV3DUrRr
 I6itc6SxyV4bh/dFBVWqJTCuKV/5QvZuaJTl413z17aSjcSr6S2cM7CSxcscWTd5SKgu
 qd/nhT6PYaDxFkiyDz/xKqB395JXX1EgYWpFfe6rPoC8AdKk7XsLA+Hu59VlCgHoRw7x
 iIng==
X-Gm-Message-State: AOAM531QmRFfx24Eixwx/IBnnAu5huMueE6H0gvi+75KEOCoA6k+exUt
 KBIZVEy5/VHdJuDTeOWhp3DH2qMbRYrPeJwZiTc=
X-Google-Smtp-Source: ABdhPJwC/KtWQJ5/oWyEgwNq8X8Qot54DOLBYe7B8C3Yfy8a5UunWRZdvaT8idWKw1+0GHJONxFjvA==
X-Received: by 2002:a17:90a:d3d5:: with SMTP id
 d21mr8540564pjw.228.1614762177877; 
 Wed, 03 Mar 2021 01:02:57 -0800 (PST)
Received: from nNa-Laptop.usen.ad.jp (122x213x216x48.ap122.ftth.ucom.ne.jp.
 [122.213.216.48])
 by smtp.gmail.com with ESMTPSA id i13sm22975533pfe.46.2021.03.03.01.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 01:02:57 -0800 (PST)
From: =?UTF-8?q?Klemen=20Ko=C5=A1ir?= <klemen.kosir@kream.io>
To: david.kershner@unisys.com
Subject: [PATCH] staging: unisys: visornic: Fix repeated words in comments
Date: Wed,  3 Mar 2021 18:01:34 +0900
Message-Id: <20210303090134.16007-1-klemen.kosir@kream.io>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 sparmaintainer@unisys.com,
 =?UTF-8?q?Klemen=20Ko=C5=A1ir?= <klemen.kosir@kream.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhpcyBwYXRjaCByZW1vdmVzIHNvbWUgcmVwZWF0ZWQgd29yZHMgaW4gY29kZSBjb21tZW50cy4K
ClNpZ25lZC1vZmYtYnk6IEtsZW1lbiBLb8WhaXIgPGtsZW1lbi5rb3NpckBrcmVhbS5pbz4KLS0t
CiBkcml2ZXJzL3N0YWdpbmcvdW5pc3lzL3Zpc29ybmljL3Zpc29ybmljX21haW4uYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvdW5pc3lzL3Zpc29ybmljL3Zpc29ybmljX21haW4uYyBi
L2RyaXZlcnMvc3RhZ2luZy91bmlzeXMvdmlzb3JuaWMvdmlzb3JuaWNfbWFpbi5jCmluZGV4IDA0
MzM1MzY5MzBhOS4uMTNlNzJmYmU3YmIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvdW5p
c3lzL3Zpc29ybmljL3Zpc29ybmljX21haW4uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvdW5pc3lz
L3Zpc29ybmljL3Zpc29ybmljX21haW4uYwpAQCAtNTM0LDcgKzUzNCw3IEBAIHN0YXRpYyBpbnQg
dmlzb3JuaWNfZGlzYWJsZV93aXRoX3RpbWVvdXQoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwK
IAkJcmV0dXJuIGVycjsKCiAJLyogd2FpdCBmb3IgYWNrIHRvIGFycml2ZSBiZWZvcmUgd2UgdHJ5
IHRvIGZyZWUgcmN2IGJ1ZmZlcnMKLQkgKiBOT1RFOiB0aGUgb3RoZXIgZW5kIGF1dG9tYXRpY2Fs
bHkgdW5wb3N0cyB0aGUgcmN2IGJ1ZmZlcnMgd2hlbgorCSAqIE5PVEU6IHRoZSBvdGhlciBlbmQg
YXV0b21hdGljYWxseSB1bnBvc3RzIHRoZSByY3YgYnVmZmVycwogCSAqIHdoZW4gaXQgZ2V0cyBh
IGRpc2FibGUuCiAJICovCiAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldmRhdGEtPnByaXZfbG9jaywg
ZmxhZ3MpOwpAQCAtMTc1MCw3ICsxNzUwLDcgQEAgc3RhdGljIGludCB2aXNvcm5pY19wb2xsKHN0
cnVjdCBuYXBpX3N0cnVjdCAqbmFwaSwgaW50IGJ1ZGdldCkKIH0KCiAvKiBwb2xsX2Zvcl9pcnEJ
LSBjaGVja3MgdGhlIHN0YXR1cyBvZiB0aGUgcmVzcG9uc2UgcXVldWUKLSAqIEB0OiBwb2ludGVy
IHRvIHRoZSAnc3RydWN0IHRpbWVyX2xpc3QnIGZyb20gd2hpY2ggd2UgY2FuIHJldHJpZXZlIHRo
ZQorICogQHQ6IHBvaW50ZXIgdG8gdGhlICdzdHJ1Y3QgdGltZXJfbGlzdCcgZnJvbSB3aGljaCB3
ZSBjYW4gcmV0cmlldmUKICAqICAgICB0aGUgdmlzb3JuaWMgZGV2ZGF0YSBzdHJ1Y3QuCiAgKgog
ICogTWFpbiBmdW5jdGlvbiBvZiB0aGUgdm5pY19pbmNvbWluZyB0aHJlYWQuIFBlcmlvZGljYWxs
eSBjaGVjayB0aGUgcmVzcG9uc2UKLS0KMi4yOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
