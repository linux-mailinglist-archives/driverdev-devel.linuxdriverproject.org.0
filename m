Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 010DE2C0255
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DEAB8674F;
	Mon, 23 Nov 2020 09:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MWvUqGGB9Lmf; Mon, 23 Nov 2020 09:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E05986030;
	Mon, 23 Nov 2020 09:36:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42BC41BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D38087051
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3QkuxIMg5GT for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6688686FE2
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:44 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b6so17919885wrt.4
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sfY1bJPX8rS35/nhTqcX3KaKnR22+lfDqPYVrUWJfFg=;
 b=swV6iidx/hNSWpeIvYnfodgOs+sAcpMjzCBRNyAVTjvXLyQxGVwRNvPbIGUgXLnbGY
 BOgo5hmKnc4+uR5INch39GWM/46S4ggdE8UBtaGu6b4OBiv0eAfdkb1bpgH2ymuOCuiX
 44wytulNn4xe98wyptuHQTOI1y5UZ56Wg3jKLflE84JKWDcf9XjKXpsBgoU++bpQohlF
 t0ckoq7s1KhxKSQWmzWpUgrbnhBibKy1RriptOztIgVMJHZUTFcIXcNADYqT3hcTEWAk
 B4D3/YHcQHqozae71mPvQg74E73T155pMWB2nAxr5fXYiOey/RxT08BInGoJdX7vZJHR
 mn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sfY1bJPX8rS35/nhTqcX3KaKnR22+lfDqPYVrUWJfFg=;
 b=ZYMMZSf7RUtbqD61cyoXDm8B4xK2db147011SbHSjMxMwHgNVz1YVlwV5c+XUCq6q1
 XYPzKYKTi7oCUSYX5PFns2a21FTA4zz9UT/uupZQvVpzhkfZamFOPyhbAKpfpSWOOjTB
 4yy+bYRz5Ps6V9eEtTkkm4g0oiHp3NynthDL9GxPgtx8DWtf6NcK9V3JNUbFYcEo2+kz
 MWKKD/EI1XKdgjl9OqCvfGzcwKaoqCkflNPEjDoHquZX3Ly4VO1fV1c3qE7i9zJsluW8
 iSoN2VMWXcS+oy+e6Z/NT2GdHgbGU9XbtfBfWpFIsEBPJ4vdrAVaxrafJZ6adSAXborZ
 M4ZA==
X-Gm-Message-State: AOAM5336fFMO777ktGQwmYlhFMsww0FVyGiQA4RURLyz4Y6IxwVSco1r
 k31EjUzqzHcSExJx2xidPhk=
X-Google-Smtp-Source: ABdhPJyc9e3/zVMUvlggv69ZeKkKLQHiQovNoh5mYcvzEdJ7sb59L90W40WY08/CjJYOhSaZOnoypg==
X-Received: by 2002:adf:e80b:: with SMTP id o11mr30056735wrm.409.1606124202874; 
 Mon, 23 Nov 2020 01:36:42 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:42 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/7] staging: mt7621-pci: add comment to clarify IO resource
 in this driver
Date: Mon, 23 Nov 2020 10:36:33 +0100
Message-Id: <20201123093637.8300-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
References: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, neil@brown.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QmVjYXVzZSBJT19TUEFDRV9MSU1JVCBmb3IgbWlwcyBpcyAweEZGRkYgYnV0IHRoaXMgcGxhdGZv
cm0gdXNlcwpQxIhJIElPIHJlc291cmNlIGF0IDB4MDAxZTE2MDAwMC4gSGVuY2UgaW5zdGVhZCBv
ZiBkaXJlY3RseSB1c2UKc29tZSBtb3JlIGFjY3VyYXRlIGZ1bmN0aW9ucyBmcm9tIHRoZSBQQ0kg
a2VybmVsIGZvciB0aGlzIGRyaXZlcgpzb21lIHRoaW5ncyBtdXN0IGJlIGRvbmUgaW4gYSBkaWZm
ZXJlbnQgd2F5IHRvIG1ha2UgdGhpbmdzIHdvcmsuCkFkZCB0aGlzIGV4cGxhbmF0aW9uIGFzIGEg
Y29tbWVudCB3aGVyZSB0aGUgSU8gcmVzb3VyY2UgaXMgcGFyc2VkCmFuZCB2aXJ0dWFsbHkgbWFw
cGVkIGludG8gbWVtb3J5LgoKU2lnbmVkLW9mZi1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxzZXJn
aW8ucGFyYWN1ZWxsb3NAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNp
L3BjaS1tdDc2MjEuYyB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYyBi
L2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEuYwppbmRleCAyMTliMzU5Mzcy
ODUuLjFmOWU3NWRiNTI5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kv
cGNpLW10NzYyMS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3BjaS1tdDc2MjEu
YwpAQCAtMjk4LDYgKzI5OCwxMyBAQCBzdGF0aWMgaW50IG10NzYyMV9wY2lfcGFyc2VfcmVxdWVz
dF9vZl9wY2lfcmFuZ2VzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIAkJcmV0dXJuIC1FSU5W
QUw7CiAJfQogCisJLyoKKwkgKiBJT19TUEFDRV9MSU1JVCBmb3IgTUlQUyBpcyAweGZmZmYgYnV0
IHRoaXMgcGxhdGZvcm0gdXNlcyBJTyBhdAorCSAqIHVwcGVyIGFkZHJlc3MgMHgwMDFlMTYwMDAw
IHNvIHdlIGhhdmUgdG8gZ2V0IHRoZSByZXNvdXJjZSBmcm9tCisJICogdGhlIERUIGJlY2F1c2Ug
d2hlbiBpdCBoYXMgYmVlbiByZXF1ZXN0ZWQgaXQgZmFpbGVkIGFuZCBoYXMgYmVlbgorCSAqIHJl
bW92ZWQgZnJvbSBicmlkZ2UtPmRtYV9yYW5nZXMgYW5kIGJyaWRnZS0+d2luZG93cy4gU28gcGFy
c2UgaXQKKwkgKiBhbmQgcmVtYXAgaXQgbWFudWFsbHkgdG8gbWFrZSB0aGluZ3Mgd29yay4KKwkg
Ki8KIAlmb3JfZWFjaF9vZl9wY2lfcmFuZ2UoJnBhcnNlciwgJnJhbmdlKSB7CiAJCXN3aXRjaCAo
cmFuZ2UuZmxhZ3MgJiBJT1JFU09VUkNFX1RZUEVfQklUUykgewogCQljYXNlIElPUkVTT1VSQ0Vf
SU86Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
