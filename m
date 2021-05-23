Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C256738D814
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 May 2021 03:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7D51402B2;
	Sun, 23 May 2021 01:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NTDR_zFapPw; Sun, 23 May 2021 01:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A9FD401E2;
	Sun, 23 May 2021 01:10:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FA0D1BF34F
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E9AB40378
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N9ylIndB3dum for <devel@linuxdriverproject.org>;
 Sun, 23 May 2021 01:10:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 603084036B
 for <devel@driverdev.osuosl.org>; Sun, 23 May 2021 01:10:45 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id w15so28711013ljo.10
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 18:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=K533xY+hAEJDEeFGIpZFsZq1gvq0v+WrlM0brEhaBps=;
 b=C6aZsWkMx5Mbf2upCO37z/mXQEFUDRsLrkwBH3oYudb4c26h1fw1y0Bzl+9/CgRdYO
 aVq4C5FTbw8pwfZjzuhsp23SznoJfIhQkuDXWR6gEYXDhX4nwLoCTue06B9b421IG91j
 yLnszlWdcGlcuK9EmoqsQAxPrzL+LMU9F1xskaZBkUmg/RxdMDnk97gAvHrqIQK9f5GG
 czMuxZilo2KPxsogT0V3SB+XyGz+TbSbiFfK8rpbvdKTwuojLHz24KnitZW9d8uTD4qw
 fGDzO5B317fCGV6dw+uq114IHo//1lccQcRAkxYPRgwotKBHvH9ZJeKeiR4jd+7fx17L
 Rplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=K533xY+hAEJDEeFGIpZFsZq1gvq0v+WrlM0brEhaBps=;
 b=o1QCFFg4aJDl3j5oSYok6Cfu8IQGTX8UgGnJEoQMrW2BGFPpCbzWHj8Rd8JK/mCFfd
 qOVmedmRE4R2bDB4XeB9Quqt+ej4s9HoIEFDIVIeXajLFjO65nhA80b6hi92hmHM2eVx
 LXlrfAUVcCdZ4OuSeFZIGaIOfZKOvLYovCyknxl3g035JvkzYbgSTVqDNw8xLRnwwU/k
 CRMuN+i2cQVhCo75t8SETgFDUqgcKY7mE26vKKfFNXQ3lLmM4qm5/WUU4t4Wjrv/06HA
 N8pyMqeD1nG4lAePDkfI2xRQmzsWO/QZNLio8p/Ogfrw5YiZnhd21BbDBM/UC3q/wooB
 0UyQ==
X-Gm-Message-State: AOAM533jmC1huYA3SIwTu2UvKRSG0mKT1/zdfIgNoTQ/z8EgHs4zkVQl
 Wf89E+ArjtVqi4X3xuTZ86DFkzqL/uxTZJQ+hAk=
X-Google-Smtp-Source: ABdhPJyumlV4gmT6arX//tx4KMn0t+ovV8pwuNvLb1lhYD4YGtMiHPnruBVws66JMZMZmaDXRb7fZqHgRMuEVIRc+mA=
X-Received: by 2002:a05:651c:318:: with SMTP id
 a24mr12116775ljp.381.1621732243194; 
 Sat, 22 May 2021 18:10:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:651c:48e:0:0:0:0 with HTTP; Sat, 22 May 2021 18:10:42
 -0700 (PDT)
From: Postal service <melikabecky@gmail.com>
Date: Sat, 22 May 2021 18:10:42 -0700
Message-ID: <CANhEW3cP5mOGjTeGm+u=wRSduX9r61Jgg-naYMJe6=9b4dEOTg@mail.gmail.com>
Subject: IMF
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
Reply-To: ubagroups03@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VHJhbnNsYXRpb24gdHlwZXMKVGV4dCB0cmFuc2xhdGlvbgpTb3VyY2UgdGV4dApAZwoyMjQxIC8g
NTAwMApUcmFuc2xhdGlvbiByZXN1bHRzCkhJRVIKQ2hlciBlbWFpbCBwcm9wcmnDqXRhaXJlIC8g
YsOpbsOpZmljaWFpcmUgZHUgZm9uZHMsCgpKZSB2b3VzIGFpIGVudm95w6kgY2V0dGUgbGV0dHJl
IGlsIHkgYSB1biBtb2lzLCBtYWlzIGplIG4nYWkgcGFzCmVudGVuZHUgcGFybGVyIGRlIHZvdXMs
IGplIG5lIHN1aXMgcGFzIHPDu3IgcXVlIHNpIHZvdXMgbCdhdmV6IGV1ZSwgZXQKYydlc3QgcG91
cnF1b2kgamUgbGUgZGlzIMOgIG5vdXZlYXUsIHRvdXQgZCdhYm9yZCwgamUgc3VpcyBNbWUKS3Jp
c3RhbGluYSBHZW9yZ2lldmEsIGRpcmVjdHJpY2UgZ8OpbsOpcmFsZSBldCBQcsOpc2lkZW50ZSBk
dSBGb25kcwptb27DqXRhaXJlIGludGVybmF0aW9uYWwuCgpFbiBlZmZldCwgbm91cyBhdm9ucyBl
eGFtaW7DqSB0b3VzIGxlcyBvYnN0YWNsZXMgZXQgcHJvYmzDqG1lcwplbnRvdXJhaWVudCB2b3Ry
ZSB0cmFuc2FjdGlvbiBpbmhhYml0dWVsbGUgZXQgdm90cmUgaW5jYXBhY2l0w6kgw6AKcmVuY29u
dHJlciBkZXMgZnJhaXMgZGUgdHJhbnNmZXJ0IHByw6lsZXbDqXMsIGNvbnRyZSB2b3VzLCBwb3Vy
IGxlcwpvcHRpb25zIGRlIHRyYW5zZmVydCBkdSBwYXNzw6ksIGNvbnN1bHRleiBub3RyZSBzaXRl
IHBvdXIgdm90cmUKY29uZmlybWF0aW9uIDM4IMKwIDUzJzU2ICJOIDc3IMKwIDIgJzM5ICJ3CgpO
b3VzLCBsZSBjb25zZWlsIGQnYWRtaW5pc3RyYXRpb24sIGxhIEJhbnF1ZSBtb25kaWFsZSBldCBs
ZSBGb25kcwptb27DqXRhaXJlIGludGVybmF0aW9uYWwgKEZNSSksIFdhc2hpbmd0b24sIERDLCBl
biBjb2xsYWJvcmF0aW9uIGF2ZWMKbGUgZMOpcGFydGVtZW50IGRlcyDDiXRhdHMtVW5pcyBkdSBU
csOpc29yIGV0IGNlcnRhaW5lcyBhdXRyZXMgYWdlbmNlcwpkJ2VucXXDqnRlIHBlcnRpbmVudGVz
IGljaSBhdXggw4l0YXRzLVVuaXMgZCdBbcOpcmlxdWUsIG9udCBvcmRvbm7DqSDDoApub3RyZSB1
bml0w6kgZGUgcmVtaXNlIGRlIHBhaWVtZW50IMOpdHJhbmfDqHJlLCBVbml0ZWQgQmFuayBEJ0Fm
cmlxdWUKTG9tw6kgVG9nbyBwb3VyIG1ldHRyZSBlbiBwbGFjZSB1biBjb21wdGUgYmFuY2FpcmUg
ZW4gbGlnbmUgZGFucyBsZXVyCnN1Y2N1cnNhbGUgcG91ciB2b3VzLCBvw7kgdm90cmUgRm9uZHMg
ZGUgMywyIG1pbGxpb25zIGRlIGRvbGxhcnMgc2VyYQpkw6lwb3PDqSwgcG91ciB1biByZXRyYWl0
IHN1cHBsw6ltZW50YWlyZSBkZSB2b3RyZSBmb25kcy4KCkF1IGNvdXJzIGRlIG5vdHJlIGVucXXD
qnRlLCBub3VzIGF2b25zIGTDqWNvdXZlcnQgYXZlYyBjb25zdGVybmF0aW9uIHF1ZQp2b3RyZSBw
YWllbWVudCBhIMOpdMOpIGludXRpbGVtZW50IHJldGFyZMOpIHBhciBkZXMgZm9uY3Rpb25uYWly
ZXMKY29ycm9tcHVzIGRlIGxhIEJhbnF1ZSBxdWkgdGVudGVudCBkZSBkw6l0b3VybmVyIHZvcyBm
b25kcyBkYW5zIGxldXJzCmNvbXB0ZXMgcHJpdsOpcy4KCkV0IGF1am91cmQnaHVpLCBub3VzIHZv
dXMgYXZlcnRpc3NvbnMgcXVlIHZvdHJlIGZvbmRzIHNlcmEgY3LDqWRpdMOpIHN1cgp1biBjb21w
dGUgcXVpIHNlcmEgbWlzIGVuIHBsYWNlIGRhbnMgbGV1ciBiYW5xdWUgcG91ciB2b3VzIGV0IGxl
cwppbmZvcm1hdGlvbnMgZGUgY29tcHRlIGF2ZWMgYWNjw6hzIHZvdXMgZG9ubmVyb250IGFmaW4g
cXVlIHZvdXMKcHVpc3NpZXogYWNjw6lkZXIgw6Agdm90cmUgZm9uZHMgcXVpIHNlcmEgZMOpcG9z
w6kgZGFucyBsZSBjb21wdGUgb3UgcGFyCmxpdnJhaXNvbiBlbiBlc3DDqGNlcyDDoCB2b3RyZSBh
ZHJlc3NlIHBlcnNvbm5lbGxlIG91IHZpYSB1bmUgY2FydGUgZGUKZ3VpY2hldCBhdXRvbWF0aXF1
ZSBkZSB2aXNhLgpWb3VzIGRldmV6IGRvbmMgY2hvaXNpciBsJ3VuZSBkZXMgb3B0aW9ucyBjaS1k
ZXNzb3VzIGNvbW1lIHZvdHJlIGNob2l4CmRlIHJlY2V2b2lyIHZvcyBmb25kcy4KCk9wdGlvbnMg
ZGUgcGFpZW1lbnQgZGlzcG9uaWJsZXM6CjEpIENvbXB0ZSBiYW5jYWlyZSBlbiBsaWduZSBhdmVj
IFVCQQoyKSBDYXJ0ZSBkZSBndWljaGV0IGF1dG9tYXRpcXVlIGF2ZWMgbGltaXRlIGRlIHJldHJh
aXQgcXVvdGlkaWVuIGRlIDEwMDAwICQuCjMpIEV4cHJlc3MgTGl2cmFpc29uIGVuIGVzcMOoY2Vz
IMOgIHZvdHJlIGFkcmVzc2UgcGVyc29ubmVsbGUuCgogTWFpbnRlbmFudCwgY29udGFjdGV6IGxl
IHNlY3LDqXRhaXJlIGRlIFVCQSBCYW5rIFNvbiBub20gZXN0IE0uIFRvbnkKRWx1bWVsdSwgZW1h
aWw6IHViYWdyb3VwczAzQGdtYWlsLmNvbQoKRW52b3llei1sdWkgbGVzIGluZm9ybWF0aW9ucyBz
dWl2YW50ZXMgcG91ciBsYSBtaXNlIGVuIHBsYWNlIGRlIHZvdHJlCmNvbXB0ZSBiYW5jYWlyZSBk
YW5zIGxldXIgc3VjY3Vyc2FsZSBhdWpvdXJkJ2h1aSBwb3VyIHVuIGFjY8OocyBmYWNpbGUKw6Ag
dm90cmUgRm9uZHMuCgpWb3RyZSBub20gY29tcGxldCA9PT09PT09PQpWb3RyZSBwYXlzIGQnb3Jp
Z2luZSA9PT09PT09ClZvdHJlIGFkcmVzc2UgcGVyc29ubmVsbGUgPT09PT09PQpWb3RyZSBvY2N1
cGF0aW9uID09PT09PT0KVm90cmUgw6JnZSA9PT09PT09PT0KVm90cmUgc2V4ZSA9PT09PT09PT0K
Vm90cmUgbnVtw6lybyBkZSB0w6lsw6lwaG9uZSA9PT09PT09CgpTaW5jw6hyZW1lbnQsCk1tZSBL
cmlzdGFsaW5hIEdlb3JnaWV2YQowMTowNgpNb3JlIGFib3V0IHRoaXMgc291cmNlIHRleHQKU291
cmNlIHRleHQgcmVxdWlyZWQgZm9yIGFkZGl0aW9uYWwgdHJhbnNsYXRpb24gaW5mb3JtYXRpb24K
U2VuZCBmZWVkYmFjawpTaWRlIHBhbmVscwoKCi0tIApNcnMgS3Jpc3RhbGluYSBHZW9yZ2lldmEK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
