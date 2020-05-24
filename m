Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9828A1DFEA8
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 13:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 74378220DA;
	Sun, 24 May 2020 11:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRF36NT4MU1g; Sun, 24 May 2020 11:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92B9E20435;
	Sun, 24 May 2020 11:36:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C2271BF419
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 11:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8906C868BD
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 11:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoFhnudYY-5w for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 11:36:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 887EA86739
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 11:36:24 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w19so6374597ply.11
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 04:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=OzC1cpXNW9KBgR0mwrAtmdi+yItcgjZnfiOPXDFp23M=;
 b=mWGtXYAZgPloy/PcX8td9tpO0s+U5SlTnLflaLN82KZ0wteS3RypAvV/8X+/VOXbM8
 JCo8rJ5VHiuLk99CD3ElLAUvVfpaGbKXGL1s624kPOLx4+SFe4AlegguFYEM+7Za3HS8
 v0pZ7p9RZpqcW2GNjMFdoqqSLagW3fRtBApUdnjlJvlHmLeZHK17YxAYiPn3qgkw1KHI
 xc9HZ4vsakDxat0jkO5w1K7dLy+pV7Ew3wpazZHVpmMWUspVoXSsoSE/MleO1yZYh1W6
 UAf9VEIzr7asP6ZIN1Wsv6LBnsvlKvXJvjjkQ4ClHHed8JREfpIItOrtt93jcM3hrXvz
 58OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=OzC1cpXNW9KBgR0mwrAtmdi+yItcgjZnfiOPXDFp23M=;
 b=H0e9nKI1FSv/pwJjE/YHGoGsRASNzl8dGM0V0TOMPG5y5WJpCqpmqkLX+9OrpoU3nB
 8OtXB/jhFzqTGmRCk4+8Xg21AIPXl1sEqNvuUBSUjJ1gDsWolU7uQQl0rKMpiafBKBgb
 f7ybHA2DUkqRSG7ugU3M7c9Q5/pYY+2k3S0STO1uLAExHdPjrXVhOqaepKrktReEoOgn
 /ANzatb1oM1JPGmfMN3+JjE31T6SIIgLzoklsikxdHPTdcoNrCY0E3GnixPvnLQY4Asc
 O3HH/m/qNZxxpfu3ZMYzl77wwksulJp8FI9rKRTXB+Wco4vxzoF+u3G4arsDxSacKlPd
 i83w==
X-Gm-Message-State: AOAM533s7dLWDMoM7BdEWBU4h2suZ8yoMCcKWJt6vEirKL64j4mKgTIu
 iMOc5u8zqMdMLxyP29mC5W8=
X-Google-Smtp-Source: ABdhPJwZGEO+StBipy4P9Mw+5nSi+vbSv8EhI7Hhmu+ABSs//I9kMDy6Vq9YROqshYB085U/ukxdWA==
X-Received: by 2002:a17:90a:1aa3:: with SMTP id
 p32mr15642918pjp.4.1590320184145; 
 Sun, 24 May 2020 04:36:24 -0700 (PDT)
Received: from xebrium.com ([182.70.106.85])
 by smtp.gmail.com with ESMTPSA id 62sm10871174pfc.204.2020.05.24.04.36.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 24 May 2020 04:36:23 -0700 (PDT)
Date: Sun, 24 May 2020 17:06:18 +0530
From: Gaurav Pathak <gauravpathak129@gmail.com>
To: abbotti@mev.co.uk, gregkh@linuxfoundation.org, hsweeten@visionengravers.com
Subject: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200524113613.GA19734@xebrium.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U2lsZW5jZSBmb2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6CmRyaXZlcnMvc3RhZ2luZy9jb21lZGkv
ZHJpdmVycy9kdDI4MTQuYzogSW4gZnVuY3Rpb24g4oCYZHQyODE0X2ludGVycnVwdOKAmToKZHJp
dmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOjE5Mzo2OiB3YXJuaW5nOiB2YXJp
YWJsZSDigJhkYXRh4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFi
bGVdCiAgaW50IGRhdGE7CiAgICAgIF5+fn4KZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJz
L2R0MjgxNC5jOiBJbiBmdW5jdGlvbiDigJhkdDI4MTRfYXR0YWNo4oCZOgpkcml2ZXJzL3N0YWdp
bmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmM6MjMyOjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGni
gJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KICBpbnQgaTsK
ICAgICAgXgoKU2lnbmVkLW9mZi1ieTogR2F1cmF2IFBhdGhhayA8Z2F1cmF2cGF0aGFrMTI5QGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmMgfCAx
MCAtLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jIGIvZHJpdmVycy9zdGFn
aW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jCmluZGV4IGQyYzcxNTczNzM2MS4uZWVhNTg3ZDYz
ZTE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmMK
KysrIGIvZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jCkBAIC0xODYsMjIg
KzE4NiwxNSBAQCBzdGF0aWMgaW50IGR0MjgxNF9haV9jbWQoc3RydWN0IGNvbWVkaV9kZXZpY2Ug
KmRldiwgc3RydWN0IGNvbWVkaV9zdWJkZXZpY2UgKnMpCiAKIHN0YXRpYyBpcnFyZXR1cm5fdCBk
dDI4MTRfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmQpCiB7Ci0JaW50IGxvLCBoaTsKIAlzdHJ1
Y3QgY29tZWRpX2RldmljZSAqZGV2ID0gZDsKIAlzdHJ1Y3QgZHQyODE0X3ByaXZhdGUgKmRldnBy
aXYgPSBkZXYtPnByaXZhdGU7CiAJc3RydWN0IGNvbWVkaV9zdWJkZXZpY2UgKnMgPSBkZXYtPnJl
YWRfc3ViZGV2OwotCWludCBkYXRhOwogCiAJaWYgKCFkZXYtPmF0dGFjaGVkKSB7CiAJCWRldl9l
cnIoZGV2LT5jbGFzc19kZXYsICJzcHVyaW91cyBpbnRlcnJ1cHRcbiIpOwogCQlyZXR1cm4gSVJR
X0hBTkRMRUQ7CiAJfQogCi0JaGkgPSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7Ci0J
bG8gPSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7Ci0KLQlkYXRhID0gKGhpIDw8IDQp
IHwgKGxvID4+IDQpOwotCiAJaWYgKCEoLS1kZXZwcml2LT5udHJpZykpIHsKIAkJaW50IGk7CiAK
QEAgLTIyOSw3ICsyMjIsNiBAQCBzdGF0aWMgaW50IGR0MjgxNF9hdHRhY2goc3RydWN0IGNvbWVk
aV9kZXZpY2UgKmRldiwgc3RydWN0IGNvbWVkaV9kZXZjb25maWcgKml0KQogCXN0cnVjdCBkdDI4
MTRfcHJpdmF0ZSAqZGV2cHJpdjsKIAlzdHJ1Y3QgY29tZWRpX3N1YmRldmljZSAqczsKIAlpbnQg
cmV0OwotCWludCBpOwogCiAJcmV0ID0gY29tZWRpX3JlcXVlc3RfcmVnaW9uKGRldiwgaXQtPm9w
dGlvbnNbMF0sIDB4Mik7CiAJaWYgKHJldCkKQEAgLTI0MSw4ICsyMzMsNiBAQCBzdGF0aWMgaW50
IGR0MjgxNF9hdHRhY2goc3RydWN0IGNvbWVkaV9kZXZpY2UgKmRldiwgc3RydWN0IGNvbWVkaV9k
ZXZjb25maWcgKml0KQogCQlkZXZfZXJyKGRldi0+Y2xhc3NfZGV2LCAicmVzZXQgZXJyb3IgKGZh
dGFsKVxuIik7CiAJCXJldHVybiAtRUlPOwogCX0KLQlpID0gaW5iKGRldi0+aW9iYXNlICsgRFQy
ODE0X0RBVEEpOwotCWkgPSBpbmIoZGV2LT5pb2Jhc2UgKyBEVDI4MTRfREFUQSk7CiAKIAlpZiAo
aXQtPm9wdGlvbnNbMV0pIHsKIAkJcmV0ID0gcmVxdWVzdF9pcnEoaXQtPm9wdGlvbnNbMV0sIGR0
MjgxNF9pbnRlcnJ1cHQsIDAsCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
