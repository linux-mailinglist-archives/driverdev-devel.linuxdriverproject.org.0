Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACE33BD4D
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 22:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC5E687A5F;
	Mon, 10 Jun 2019 20:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zv8ozl5IiZpp; Mon, 10 Jun 2019 20:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 566B68798D;
	Mon, 10 Jun 2019 20:05:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 295E51BF418
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 26B3920442
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 20:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFy13G5s5eHW for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 20:05:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 5B52620436
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 20:05:52 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id a21so9206149ljh.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 13:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8SF78ZtQnVw4meJ8EJONYZwlPUHgQPUvTSa99AqdBgU=;
 b=rcWrdec/E9sDrmrCQDZ06tIyqcs5/k1EUESVSY+S1Cg6GQn6h9qy+BDmoYs1wsVg9I
 g42UkqXkrAlUMW6nP1Rz/XFK/wQj/GaU8nTQfeHt4ng8NonfnxijFoYq3PQ93p3CXGcT
 G32Heb8dJxd1L3dQzfANtPaMJmYEYuUiw29MRS/QWD8Os0kG/QpqN8bC62USIMOgwh0i
 AhIRRPuXpLl5MCITpL8Mjn/OT+EqwnS2zIAKR/9xz0bLbPAY7h1dqyubaOd5ORjJ8PqZ
 +TVZxzuabviG985UYi73kxFgNhhuBo81kUv4NC29vZLRUmtg5F6N/k7NuHKE5b2KpFRA
 1biw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8SF78ZtQnVw4meJ8EJONYZwlPUHgQPUvTSa99AqdBgU=;
 b=d0XbXuX2Cz4jFwhEWozOv3N1f7kr/Ju1vFoYrKa5DS8Z/BrKzXthur5jSomm/genaJ
 VcQZrr2p09Z4zTzrXDq0gvCoH6Q09iQFft5nuxcFG0C9FPup8B0vOk/QMteSOLuYy7Bn
 KlqjDXMk0wqkjvtVHRtcaATMu56fA5zmm2avH1dKQdf1bn/koJRuwl0PP2S0+jLOU0Vv
 PiYGcTvGMOtaNbwOJITc5Y4vYY+92ZBtCp9nwaGXjfJYXSm/rZLxXgSFJLLqJ4vUSM64
 xR0WnSQPDTNQh8aEyMYXKt8i1aLmriQ6pZwRIff4pXTEeL5DtFDO3XssAct8lBGojtxM
 5e1w==
X-Gm-Message-State: APjAAAUbPT3BwtyHUOSZeJiZZMJIKHKTKd/p2YDXDRDiupqcdsFx5Dw2
 1iYtTe11gjSqJjIF7k1zNB+JvQ==
X-Google-Smtp-Source: APXvYqxJkhuh6OlUK5H+u52AQvvvP//n3NzjSE12meA4CT/a1rcVee2qlkuqgalMfr2jAg57HDvkBQ==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr14005941ljj.162.1560197150994; 
 Mon, 10 Jun 2019 13:05:50 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id f4sm2157079ljm.13.2019.06.10.13.05.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 13:05:50 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: kpc2000: minor fixes in kp2000_pcie_probe
Date: Mon, 10 Jun 2019 22:05:33 +0200
Message-Id: <20190610200535.31820-1-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlc2UgdHdvIHBhdGNoZXMgZml4ZXMgaXNzdWVzIHBvaW50ZWQgb3V0IGJ5IERhbiBpbiBhIHBy
ZXZpb3VzCnN0YWdpbmcva3BjMjAwMCBwYXRjaCB0aHJlYWQ6IG1hbnkgY29tbWVudHMgaW4ga3Ay
MDAwX3BjaWVfcHJvYmUganVzdApyZXBlYXRzIHRoZSBjb2RlIGFuZCB0aGUgY3VycmVudCBsYWJl
bCBuYW1lcyBkb2Vzbid0IGFkZCBhbnkgaW5mb3JtYXRpb24KYW5kIG1ha2VzIGl0IGhhcmQgdG8g
Zm9sbG93IHRoZSBjb2RlLgoKUmVuYW1lIGFsbCBsYWJlbHMgYW5kIHJlbW92ZSB0aGUgY29tbWVu
dHMgdGhhdCBqdXN0IHJlcGVhdHMgdGhlIGNvZGUuCgpTaW1vbiBTYW5kc3Ryw7ZtICgyKToKICBz
dGFnaW5nOiBrcGMyMDAwOiBpbXByb3ZlIGxhYmVsIG5hbWVzIGluIGtwMjAwMF9wY2llX3Byb2Jl
CiAgc3RhZ2luZzoga3BjMjAwMDogcmVtb3ZlIHVubmVjZXNzYXJ5IGNvbW1lbnRzIGluIGtwMjAw
MF9wY2llX3Byb2JlCgogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jb3JlLmMgfCA4
MCArKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlv
bnMoKyksIDU1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
