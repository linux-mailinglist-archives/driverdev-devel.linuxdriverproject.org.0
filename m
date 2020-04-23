Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592B51B63E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 20:35:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 932B18861A;
	Thu, 23 Apr 2020 18:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tvAEp7DVIz9; Thu, 23 Apr 2020 18:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE62B885EC;
	Thu, 23 Apr 2020 18:35:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 795881BF325
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 18:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75D63885F6
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 18:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FTATG82F5enr for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 18:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C720885EC
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 18:35:49 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id r26so7664755wmh.0
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 11:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SHiaVGoxJU0JuSemjbZO7M5x0gLQtzAiiChlVcw2wZg=;
 b=iKG7xS/rSnis/wPc0id+l/DawC761v1UYIrt4PnJrc6qyYK+0EaThDFw52zxCtAZJy
 faVcgz2YeyAJfmqZFOPHRqhcn0n2IN4hwq65eaNlsAN+8b7G91AfKMZai4FWHB6A6jzq
 JCy1cCiEyrmL+GVjYQlQbVyuGwUe6HbkUXVWUrsUQd6CjZazj1kuqgtcnic3Drt6LO9o
 XzUCdfPgKgYUGMvZGZ8ih59B4GNYwtpCD2pv7dH4tfszELVOADuEh/DTJhcL10GaBDgc
 +1AVrc3X13nKRMZM6splGSu9UezlrtyzfxdoDIflBYJLVkaxPWP8X5LF5F5pkkJkDg9N
 +yLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SHiaVGoxJU0JuSemjbZO7M5x0gLQtzAiiChlVcw2wZg=;
 b=aX+pS+H5X+X6+yX4OMw9Q4bo1+aN9V8H3rsbdTuej+VYjC66EelamOlyvGMEXYslQb
 K80PQpYyg1h07+sssJUoZJA7PCY6Q4J6JavhH+hCjWpC26nLni2P/EViPbshACn+ZCcw
 MxJH0V3M94ZBGcNIaRsGZp5/RyDnYYtv1ZfxTqfTuCS1T9+GiN8ouJZGuEn+865P7HoG
 F0T+gUvsEHBe970kB8DE03B5LgJEM5lVDXcWTWR0depE853fHOuQsRA5RDxvRzpdDMru
 4y2wKt/3cqm7A5ENsRxDIg/1JiNCTDPQJyxwOctYlk26cZ+mqAE/NyCfnUDU4DdZK3DZ
 TSmw==
X-Gm-Message-State: AGi0PubkhZa3xzUebpmcMDf/zmZCL0bh2CpCOWvBt88W8g6JQifNH0MC
 Fn/0y8OXXCHjpOvvilVNMj30SqcplyHWJw==
X-Google-Smtp-Source: APiQypID22j8hSMfL4NHdvtWqfsM/X/iuFkrSr37cN97xonn8aCr9Ab+yONK8w92E9sfRfcApS3RtQ==
X-Received: by 2002:a1c:dfc2:: with SMTP id w185mr5389096wmg.1.1587666947542; 
 Thu, 23 Apr 2020 11:35:47 -0700 (PDT)
Received: from localhost.localdomain ([31.4.236.57])
 by smtp.gmail.com with ESMTPSA id s11sm5124521wrw.71.2020.04.23.11.35.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 11:35:46 -0700 (PDT)
From: carlosteniswarrior@gmail.com
To: Larry.Finger@lwfinger.net
Subject: [PATCH] Staging: rtl8188eu: core: rtw_pwrctrl: fixed a coding style
 issue
Date: Thu, 23 Apr 2020 20:35:46 +0200
Message-Id: <20200423183546.123612-1-carlosteniswarrior@gmail.com>
X-Mailer: git-send-email 2.26.1
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
 =?UTF-8?q?Carlos=20Guerrero=20=C3=81lvarez?= <carlosteniswarrior@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogQ2FybG9zIEd1ZXJyZXJvIMOBbHZhcmV6IDxjYXJsb3N0ZW5pc3dhcnJpb3JAZ21haWwu
Y29tPgoKRml4ZWQgYSBjaGVja3BhdGNoLnBsIHdhcm5pbmc6IHRoZSBjb25zdGFudCBzaG91bGQg
YmUgaW4gdGhlIHJpZ2h0IHNpZGUKb2YgdGhlIGNvbXBhcmlzb24uCgpTaWduZWQtb2ZmLWJ5OiBD
YXJsb3MgR3VlcnJlcm8gw4FsdmFyZXogPGNhcmxvc3Rlbmlzd2FycmlvckBnbWFpbC5jb20+Ci0t
LQogZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9jb3JlL3J0d19wd3JjdHJsLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2NvcmUvcnR3X3B3cmN0cmwuYyBiL2RyaXZlcnMv
c3RhZ2luZy9ydGw4MTg4ZXUvY29yZS9ydHdfcHdyY3RybC5jCmluZGV4IGM0ZjU4NTA3ZGJmZC4u
YzAwMDM4MmM5NmQ5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2NvcmUv
cnR3X3B3cmN0cmwuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2NvcmUvcnR3X3B3
cmN0cmwuYwpAQCAtMTczLDcgKzE3Myw3IEBAIGludCBpcHNfbGVhdmUoc3RydWN0IGFkYXB0ZXIg
KnBhZGFwdGVyKQoKIAkJREJHXzg4RV9MRVZFTChfZHJ2X2luZm9fLCAibm9saW5rZWQgcG93ZXIg
c2F2ZSBsZWF2ZVxuIik7CgotCQlpZiAoKF9XRVA0MF8gPT0gcHNlY3VyaXR5cHJpdi0+ZG90MTFQ
cml2YWN5QWxncnRobSkgfHwgKF9XRVAxMDRfID09IHBzZWN1cml0eXByaXYtPmRvdDExUHJpdmFj
eUFsZ3J0aG0pKSB7CisJCWlmICgocHNlY3VyaXR5cHJpdi0+ZG90MTFQcml2YWN5QWxncnRobSA9
PSBfV0VQNDBfKSB8fCAocHNlY3VyaXR5cHJpdi0+ZG90MTFQcml2YWN5QWxncnRobSA9PSBfV0VQ
MTA0XykpIHsKIAkJCURCR184OEUoIj09PiVzLCBjaGFubmVsKCVkKSwgcHJvY2Vzc2luZygleClc
biIsIF9fZnVuY19fLCBwYWRhcHRlci0+bWxtZWV4dHByaXYuY3VyX2NoYW5uZWwsIHB3cnByaXYt
PmJpcHNfcHJvY2Vzc2luZyk7CiAJCQlzZXRfY2hhbm5lbF9id21vZGUocGFkYXB0ZXIsIHBhZGFw
dGVyLT5tbG1lZXh0cHJpdi5jdXJfY2hhbm5lbCwgSEFMX1BSSU1FX0NITkxfT0ZGU0VUX0RPTlRf
Q0FSRSwgSFRfQ0hBTk5FTF9XSURUSF8yMCk7CiAJCQlmb3IgKGtleWlkID0gMDsga2V5aWQgPCA0
OyBrZXlpZCsrKSB7Ci0tCjIuMjYuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
